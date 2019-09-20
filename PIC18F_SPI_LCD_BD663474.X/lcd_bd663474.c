#include "lcd_bd663474.h"
#include "spi_master.h"

/* default width, height, rotation */
uint16_t lcdWidth = LCD_SCREEN_WIDTH;
uint16_t lcdHeight = LCD_SCREEN_HEIGHT;
uint8_t lcdRotation = SCREEN_VERTICAL_1;

void LCD_TxCmd(uint16_t cmd) {
    LCD_CS = 0;
    LCD_RS = 0; //command    
    SPI_Tx((uint8_t) (cmd >> 8));
    SPI_Tx((uint8_t) (cmd));
    LCD_CS = 1;
}

void LCD_TxData(uint16_t data) {
    LCD_RS = 1; //data
    SPI_Tx((uint8_t) (data >> 8));
    SPI_Tx((uint8_t) (data));
}

void LCD_WriteReg(uint16_t reg, uint16_t data) {
    LCD_CS = 0;
    LCD_RS = 0; //command first   
    SPI_Tx((uint8_t) (reg >> 8));
    SPI_Tx((uint8_t) (reg));

    LCD_RS = 1; //data later       
    SPI_Tx((uint8_t) (data >> 8));
    SPI_Tx((uint8_t) (data));
    LCD_CS = 1;
}

void LCD_Reset(void) {
    LCD_RST = 0;
    __delay_ms(10);
    LCD_RST = 1;
    __delay_ms(10);

    LCD_CS = 1; //deselect
}

void LCD_Enable(void) {
    LCD_RST = 1;
}

void LCD_Init(void) {
    LCD_CS_TRIS = 0; //output
    LCD_RS_TRIS = 0;
    LCD_RST_TRIS = 0;
    LCD_TC_TRIS = 0; 
    LCD_TC = 1; //!!! IMPORTANT !!! touch screen must be deselected

    LCD_Enable();
    LCD_Reset();

    LCD_WriteReg(0x000, 0x0001); //start oscillators
    __delay_ms(10);

    /* power */
    LCD_WriteReg(0x100, 0x0000);
    LCD_WriteReg(0x101, 0x0000);
    LCD_WriteReg(0x102, 0x3110);
    LCD_WriteReg(0x103, 0xe200);
    LCD_WriteReg(0x110, 0x009d);
    LCD_WriteReg(0x111, 0x0022);
    LCD_WriteReg(0x100, 0x0120);
    __delay_ms(20);
    LCD_WriteReg(0x100, 0x3120);
    __delay_ms(80);

    /* display */
    LCD_WriteReg(0x001, 0x0100);
    LCD_WriteReg(0x002, 0x0000);
    LCD_WriteReg(0x003, 0x1230);
    LCD_WriteReg(0x006, 0x0000);
    LCD_WriteReg(0x007, 0x0101);
    LCD_WriteReg(0x008, 0x0808);
    LCD_WriteReg(0x009, 0x0000);
    LCD_WriteReg(0x00b, 0x0000);
    LCD_WriteReg(0x00c, 0x0000);
    LCD_WriteReg(0x00d, 0x0018);

    /* LTPS settings */
    LCD_WriteReg(0x012, 0x0000);
    LCD_WriteReg(0x013, 0x0000);
    LCD_WriteReg(0x018, 0x0000);
    LCD_WriteReg(0x019, 0x0000);
    LCD_WriteReg(0x203, 0x0000);
    LCD_WriteReg(0x204, 0x0000);
    
    LCD_WriteReg(0x210, 0x0000);
    LCD_WriteReg(0x211, 0x00ef);
    LCD_WriteReg(0x212, 0x0000);
    LCD_WriteReg(0x213, 0x013f);
    
    LCD_WriteReg(0x214, 0x0000);
    LCD_WriteReg(0x215, 0x0000);
    LCD_WriteReg(0x216, 0x0000);
    LCD_WriteReg(0x217, 0x0000);
    
    LCD_WriteReg(0x300, 0x5343);
    LCD_WriteReg(0x301, 0x1021);
    LCD_WriteReg(0x302, 0x0003);
    LCD_WriteReg(0x303, 0x0011);
    LCD_WriteReg(0x304, 0x050a);
    LCD_WriteReg(0x305, 0x4342);
    LCD_WriteReg(0x306, 0x1100);
    LCD_WriteReg(0x307, 0x0003);
    LCD_WriteReg(0x308, 0x1201);
    LCD_WriteReg(0x309, 0x050a);
    
    LCD_WriteReg(0x400, 0x4027);
    LCD_WriteReg(0x401, 0x0000);
    LCD_WriteReg(0x402, 0x0000);
    LCD_WriteReg(0x403, 0x013f);
    LCD_WriteReg(0x404, 0x0000);

    LCD_SetRotation(SCREEN_VERTICAL_1); //default rotation 

    /* current pixel (0,0) */
    LCD_WriteReg(0x200, 0x0000);
    LCD_WriteReg(0x201, 0x0000);

    LCD_WriteReg(0x100, 0x7120);
    LCD_WriteReg(0x007, 0x0103);
    __delay_ms(10);

    LCD_WriteReg(0x007, 0x0113);
}

void LCD_SetRotation(uint8_t rotation) {
    lcdRotation = rotation;

    switch (lcdRotation) {
        case SCREEN_VERTICAL_1:
            LCD_WriteReg(0x003, 0x10A0);
            lcdWidth = 240;
            lcdHeight = 320;
            break;
        case SCREEN_HORIZONTAL_1:
            LCD_WriteReg(0x003, 0x1098);
            lcdWidth = 320;
            lcdHeight = 240;
            break;
        case SCREEN_VERTICAL_2:
            LCD_WriteReg(0x003, 0x1080);
            lcdWidth = 240;
            lcdHeight = 320;
            break;
        case SCREEN_HORIZONTAL_2:
            LCD_WriteReg(0x003, 0x10A8);
            lcdWidth = 320;
            lcdHeight = 240;
            break;
        default:
            break;
    }
}

void LCD_SetWindow(uint16_t x0, uint16_t y0, uint16_t x1, uint16_t y1) {
    uint16_t x0a, x1a, y0a, y1a;

    /* calculate position based on rotation */
    switch (lcdRotation) {
        case SCREEN_HORIZONTAL_1:
            x0a = x0;
            x1a = x1;
            y0a = y0;
            y1a = y1;

            x0 = y0a;
            x1 = y1a;
            y0 = lcdWidth - 1 - x1a;
            y1 = lcdWidth - 1 - x0a;
            break;
        case SCREEN_VERTICAL_2:
            x0a = x0;
            x1a = x1;
            y0a = y0;
            y1a = y1;

            x0 = lcdWidth - 1 - x1a;
            x1 = lcdWidth - 1 - x0a;
            y0 = lcdHeight - 1 - y1a;
            y1 = lcdHeight - 1 - y0a;
            break;
        case SCREEN_HORIZONTAL_2:
            x0a = x0;
            x1a = x1;
            y0a = y0;
            y1a = y1;

            x0 = lcdHeight - 1 - y1a;
            x1 = lcdHeight - 1 - y0a;
            y0 = x0a;
            y1 = x1a;
            break;
    }

    LCD_WriteReg(0x210, x0);
    LCD_WriteReg(0x211, x1);
    LCD_WriteReg(0x212, y0);
    LCD_WriteReg(0x213, y1);
    LCD_WriteReg(0x200, x0);
    LCD_WriteReg(0x201, y0);
    LCD_TxCmd(0x202);
}

void LCD_DrawColor(uint16_t color) {
    LCD_CS = 0;
    LCD_TxData(color);
    LCD_CS = 1;
}

void LCD_DrawColorBurst(uint16_t color, uint32_t size) {
    LCD_CS = 0;
    for (uint32_t i = 0; i < size; i++) {
        LCD_TxData(color);
    }
    LCD_CS = 1;
}

void LCD_FillScreen(uint16_t color) {
    LCD_SetWindow(0, 0, lcdWidth - 1, lcdHeight - 1);
    LCD_DrawColorBurst(color, ((uint32_t) lcdWidth * (uint32_t) lcdHeight));
}

void LCD_DrawPixel(uint16_t x, uint16_t y, uint16_t color) {
    if ((x >= lcdWidth) || (y >= lcdHeight)) return;

    LCD_SetWindow(x, y, x, y);
    LCD_DrawColor(color);
}

void LCD_DrawRectangle(uint16_t x, uint16_t y, uint16_t width, uint16_t height, uint16_t color) {
    if ((x >= lcdWidth) || (y >= lcdHeight)) return;

    if ((x + width - 1) >= lcdWidth) {
        width = lcdWidth - x;
    }

    if ((y + height - 1) >= lcdHeight) {
        height = lcdHeight - y;
    }

    LCD_SetWindow(x, y, x + width - 1, y + height - 1);
    LCD_DrawColorBurst(color, height * width);
}

void LCD_DrawHLine(uint16_t x, uint16_t y, uint16_t width, uint16_t color) {
    if ((x >= lcdWidth) || (y >= lcdHeight)) return;

    if ((x + width - 1) >= lcdWidth) {
        width = lcdWidth - x;
    }

    LCD_SetWindow(x, y, x + width - 1, y);
    LCD_DrawColorBurst(color, width);
}

void LCD_DrawVLine(uint16_t x, uint16_t y, uint16_t height, uint16_t color) {
    if ((x >= lcdWidth) || (y >= lcdHeight)) return;

    if ((y + height - 1) >= lcdHeight) {
        height = lcdHeight - y;
    }

    LCD_SetWindow(x, y, x, y + height - 1);
    LCD_DrawColorBurst(color, height);
}
