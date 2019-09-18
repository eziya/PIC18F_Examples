#include "lcd_bd663474.h"
#include "spi_master.h"

volatile uint16_t lcdWidth	= LCD_SCREEN_WIDTH;
volatile uint16_t lcdHeight = LCD_SCREEN_HEIGHT;

static void LCD_TxCmd(uint16_t cmd)
{   
    LCD_RS = 0; //command
    LCD_CS = 0; 
	SPI_Tx((uint8_t)(cmd >> 8));
    SPI_Tx((uint8_t)(cmd));
	LCD_CS = 1;
    LCD_RS = 1; 
}

static void LCD_TxData(uint16_t data)
{   
	SPI_Tx((uint8_t)(data >> 8));
    SPI_Tx((uint8_t)(data));	
}

static void LCD_WriteReg(uint16_t reg, uint16_t data)
{   
    LCD_RS = 0; //command    
    LCD_CS = 0;
	SPI_Tx((uint8_t)(reg >> 8));
    SPI_Tx((uint8_t)(reg));	
    LCD_CS = 1;
    
    LCD_RS = 1; //data    
    LCD_CS = 0;
	SPI_Tx((uint8_t)(data >> 8));
    SPI_Tx((uint8_t)(data));
	LCD_CS = 1;
}

void LCD_Reset(void)
{  
	LCD_RST = 0;
	__delay_ms(10);    
    LCD_RST = 1;
	__delay_ms(10);
    
    LCD_RS = 1;
    LCD_CS = 1;
}

void LCD_Enable(void)
{
	LCD_RST = 1;
}

void LCD_Init(void)
{
    LCD_CS_TRIS = 0;
    LCD_RS_TRIS = 0;
    LCD_RST_TRIS = 0;
    LCD_TC_TRIS = 0;
    LCD_TC = 1;
    
	LCD_Enable();
	LCD_Reset();    
	
	LCD_WriteReg(0x000, 0x0001); //start oscillators
	__delay_ms(10);
    
    /* power */  	
	LCD_WriteReg( 0x100, 0x0000 ); 
	LCD_WriteReg( 0x101, 0x0000 ); 
	LCD_WriteReg( 0x102, 0x3110 );
	LCD_WriteReg( 0x103, 0xe200 );
	LCD_WriteReg( 0x110, 0x009d ); 
	LCD_WriteReg( 0x111, 0x0022 ); 
	LCD_WriteReg( 0x100, 0x0120 ); 
	__delay_ms( 20 );    
    LCD_WriteReg( 0x100, 0x3120 );
	__delay_ms( 80 );
    
	/* display */   
	LCD_WriteReg( 0x001, 0x0100 );
	LCD_WriteReg( 0x002, 0x0000 );
	LCD_WriteReg( 0x003, 0x1230 );
	LCD_WriteReg( 0x006, 0x0000 );
	LCD_WriteReg( 0x007, 0x0101 );
	LCD_WriteReg( 0x008, 0x0808 );
	LCD_WriteReg( 0x009, 0x0000 );
	LCD_WriteReg( 0x00b, 0x0000 );
	LCD_WriteReg( 0x00c, 0x0000 );
	LCD_WriteReg( 0x00d, 0x0018 );
    
	/* LTPS settings */   
	LCD_WriteReg( 0x012, 0x0000 );
	LCD_WriteReg( 0x013, 0x0000 );
	LCD_WriteReg( 0x018, 0x0000 );
	LCD_WriteReg( 0x019, 0x0000 );
	LCD_WriteReg( 0x203, 0x0000 );
	LCD_WriteReg( 0x204, 0x0000 );
    
    /*  */
	LCD_WriteReg( 0x210, 0x0000 );
	LCD_WriteReg( 0x211, 0x00ef );
	LCD_WriteReg( 0x212, 0x0000 );
	LCD_WriteReg( 0x213, 0x013f );
    
    /* */
	LCD_WriteReg( 0x214, 0x0000 );
	LCD_WriteReg( 0x215, 0x0000 );
	LCD_WriteReg( 0x216, 0x0000 );
	LCD_WriteReg( 0x217, 0x0000 );

	/* gray scale settings */
	LCD_WriteReg( 0x300, 0x5343);
	LCD_WriteReg( 0x301, 0x1021);
	LCD_WriteReg( 0x302, 0x0003);
	LCD_WriteReg( 0x303, 0x0011);
	LCD_WriteReg( 0x304, 0x050a);
	LCD_WriteReg( 0x305, 0x4342);
	LCD_WriteReg( 0x306, 0x1100);
	LCD_WriteReg( 0x307, 0x0003);
	LCD_WriteReg( 0x308, 0x1201);
	LCD_WriteReg( 0x309, 0x050a);

	/* RAM access settings */ 
	LCD_WriteReg( 0x400, 0x4027 );
	LCD_WriteReg( 0x401, 0x0000 );
	LCD_WriteReg( 0x402, 0x0000 );	/* First screen drive position (1) */   	
	LCD_WriteReg( 0x403, 0x013f );	/* First screen drive position (2) */   	
	LCD_WriteReg( 0x404, 0x0000 );
    
    /* current pixel */
	LCD_WriteReg( 0x200, 0x0000 );
	LCD_WriteReg( 0x201, 0x0000 );
    
	LCD_WriteReg( 0x100, 0x7120 );
	LCD_WriteReg( 0x007, 0x0103 );
	__delay_ms( 10 );
    
	LCD_WriteReg( 0x007, 0x0113 );	
            
    /* clear */   
    LCD_FillScreen(YELLOW);
    __delay_ms( 10 );
    LCD_FillScreen(GREEN);
}

void LCD_SetRotation(uint8_t rotation)
{	
	switch(rotation)
	{
	case SCREEN_VERTICAL_1:
		LCD_WriteReg(0x003, 0x10A0);
		lcdWidth = 240;
		lcdHeight = 320;
		break;
	case SCREEN_HORIZONTAL_1:
		LCD_WriteReg(0x003, 0x1098);
		lcdWidth  = 320;
		lcdHeight = 240;
		break;
	case SCREEN_VERTICAL_2:
		LCD_WriteReg(0x003, 0x1080);
		lcdWidth  = 240;
		lcdHeight = 320;
		break;
	case SCREEN_HORIZONTAL_2:
		LCD_WriteReg(0x003, 0x10A8);
		lcdWidth  = 320;
		lcdHeight = 240;
		break;
	default:
		break;
	}
}

void LCD_SetWindow(uint16_t x0, uint16_t y0, uint16_t x1, uint16_t y1)
{        
	LCD_WriteReg(0x210, x0);
    LCD_WriteReg(0x211, x1);
    LCD_WriteReg(0x212, y0);
    LCD_WriteReg(0x213, y1);
    LCD_WriteReg(0x200, x0);
    LCD_WriteReg(0x201, y0);    
	LCD_TxCmd(0x202);
}

void LCD_DrawColor(uint16_t color)
{	
    LCD_CS = 0;
    LCD_TxData(color);    
    LCD_CS = 1;	
}

void LCD_DrawColorBurst(uint16_t color, uint32_t size)
{    
    LCD_RS = 1;
    LCD_CS = 0;
	for(uint32_t i = 0; i < size; i++)
    {
        LCD_TxData(color);        
    }	
    LCD_CS = 1;	
}

void LCD_FillScreen(uint16_t color)
{
	LCD_SetWindow(0, 0, lcdWidth, lcdHeight);
	LCD_DrawColorBurst(color, ((uint32_t)lcdWidth*(uint32_t)lcdHeight));
}

void LCD_DrawPixel(uint16_t x,uint16_t y,uint16_t color)
{
	if((x >=lcdWidth) || (y >=lcdHeight)) return;

	LCD_SetWindow(x, y, x, y);
    LCD_DrawColor(color);    
}

void LCD_DrawRectangle(uint16_t x, uint16_t y, uint16_t width, uint16_t height, uint16_t color)
{
	if((x >=lcdWidth) || (y >=lcdHeight)) return;

	if((x+width-1)>=lcdWidth)
	{
		width=lcdWidth-x;
	}

	if((y+height-1)>=lcdHeight)
	{
		height=lcdHeight-y;
	}

	LCD_SetWindow(x, y, x+width-1, y+height-1);
	LCD_DrawColorBurst(color, height*width);
}

void LCD_DrawHLine(uint16_t x, uint16_t y, uint16_t width, uint16_t color)
{
	if((x >=lcdWidth) || (y >=lcdHeight)) return;

	if((x+width-1)>=lcdWidth)
	{
		width=lcdWidth-x;
	}

	LCD_SetWindow(x, y, x+width-1, y);
	LCD_DrawColorBurst(color, width);
}

void LCD_DrawVLine(uint16_t x, uint16_t y, uint16_t height, uint16_t color)
{
	if((x >=lcdWidth) || (y >=lcdHeight)) return;

	if((y+height-1)>=lcdHeight)
	{
		height=lcdHeight-y;
	}

	LCD_SetWindow(x, y, x, y+height-1);
	LCD_DrawColorBurst(color, height);
}
