#include "lcd_bd663474.h"
#include "spi_master.h"

volatile uint16_t lcdHeight = LCD_SCREEN_HEIGHT;
volatile uint16_t lcdWidth	= LCD_SCREEN_WIDTH;

static void LCD_TxCmd(uint16_t cmd)
{
    LCD_DC = 0; //command
    LCD_CS = 0; 
	SPI_Tx((uint8_t)(cmd >> 8));
    SPI_Tx((uint8_t)(cmd & 0xFF));
	LCD_CS = 1;
}

static void LCD_TxData(uint16_t data)
{    
    LCD_DC = 1; //data
    LCD_CS = 0;
	SPI_Tx((uint8_t)(data >> 8));
    SPI_Tx((uint8_t)(data & 0xFF));
	LCD_CS = 1;
}

static void LCD_TxCmdData(uint16_t cmd, uint16_t data)
{    
    LCD_TxCmd(cmd);
    LCD_TxData(data);
}

static void LCD_TxBuffer(uint8_t *buffer, uint16_t len)
{
	LCD_DC = 1; //data
    LCD_CS = 0; //select 	
	SPI_TxBuffer(buffer, len);
	LCD_CS = 1; //deselect
}

void LCD_SetWindow(uint16_t x0, uint16_t y0, uint16_t x1, uint16_t y1)
{
	LCD_TxCmdData(0x210, x0);
    LCD_TxCmdData(0x211, x1);
    LCD_TxCmdData(0x212, y0);
    LCD_TxCmdData(0x213, y1);
    LCD_TxCmdData(0x200, x0);
    LCD_TxCmdData(0x201, y0);    
	LCD_TxCmd(0x202);
}

void LCD_Reset(void)
{  
	LCD_RST = 0;
	__delay_ms(1);    
    LCD_RST = 1;
	__delay_ms(1);
    
    LCD_CS = 1;
}

void LCD_Enable(void)
{
	LCD_RST = 1;
}

void LCD_Init(void)
{
    LCD_CS_TRIS = 0;
    LCD_DC_TRIS = 0;
    LCD_RST_TRIS = 0;
    
	LCD_Enable();
	LCD_Reset();
	
	LCD_TxCmdData(0x0000, 0x0001); //start oscillators
	__delay_ms(10);
    
    /* power */  	
	LCD_TxCmdData( 0x100, 0x0000 ); 
	LCD_TxCmdData( 0x101, 0x0000 ); 
	LCD_TxCmdData( 0x102, 0x3110 );
	LCD_TxCmdData( 0x103, 0xe200 );
	LCD_TxCmdData( 0x110, 0x009d ); 
	LCD_TxCmdData( 0x111, 0x0022 ); 
	LCD_TxCmdData( 0x100, 0x0120 ); 
	__delay_ms( 20 );    
    LCD_TxCmdData( 0x100, 0x3120 );
	__delay_ms( 80 );
    
	/* display */   
	LCD_TxCmdData( 0x001, 0x0100 );
	LCD_TxCmdData( 0x002, 0x0000 );
	LCD_TxCmdData( 0x003, 0x1230 );
	LCD_TxCmdData( 0x006, 0x0000 );
	LCD_TxCmdData( 0x007, 0x0101 );
	LCD_TxCmdData( 0x008, 0x0808 );
	LCD_TxCmdData( 0x009, 0x0000 );
	LCD_TxCmdData( 0x00b, 0x0000 );
	LCD_TxCmdData( 0x00c, 0x0000 );
	LCD_TxCmdData( 0x00d, 0x0018 );
    
	/* LTPS settings */   
	LCD_TxCmdData( 0x012, 0x0000 );
	LCD_TxCmdData( 0x013, 0x0000 );
	LCD_TxCmdData( 0x018, 0x0000 );
	LCD_TxCmdData( 0x019, 0x0000 );
	LCD_TxCmdData( 0x203, 0x0000 );
	LCD_TxCmdData( 0x204, 0x0000 );
    
    /*  */
	LCD_TxCmdData( 0x210, 0x0000 );
	LCD_TxCmdData( 0x211, 0x00ef );
	LCD_TxCmdData( 0x212, 0x0000 );
	LCD_TxCmdData( 0x213, 0x013f );
    
    /* */
	LCD_TxCmdData( 0x214, 0x0000 );
	LCD_TxCmdData( 0x215, 0x0000 );
	LCD_TxCmdData( 0x216, 0x0000 );
	LCD_TxCmdData( 0x217, 0x0000 );

	/* gray scale settings */
	LCD_TxCmdData( 0x300, 0x5343);
	LCD_TxCmdData( 0x301, 0x1021);
	LCD_TxCmdData( 0x302, 0x0003);
	LCD_TxCmdData( 0x303, 0x0011);
	LCD_TxCmdData( 0x304, 0x050a);
	LCD_TxCmdData( 0x305, 0x4342);
	LCD_TxCmdData( 0x306, 0x1100);
	LCD_TxCmdData( 0x307, 0x0003);
	LCD_TxCmdData( 0x308, 0x1201);
	LCD_TxCmdData( 0x309, 0x050a);

	/* RAM access settings */ 
	LCD_TxCmdData( 0x400, 0x4027 );
	LCD_TxCmdData( 0x401, 0x0000 );
	LCD_TxCmdData( 0x402, 0x0000 );	/* First screen drive position (1) */   	
	LCD_TxCmdData( 0x403, 0x013f );	/* First screen drive position (2) */   	
	LCD_TxCmdData( 0x404, 0x0000 );
    
    /* current pixel */
	LCD_TxCmdData( 0x200, 0x0000 );
	LCD_TxCmdData( 0x201, 0x0000 );
    
	LCD_TxCmdData( 0x100, 0x7120 );
	LCD_TxCmdData( 0x007, 0x0103 );
	__delay_ms( 10 );
	LCD_TxCmdData( 0x007, 0x0113 );	
	
	LCD_SetRotation(SCREEN_VERTICAL_1);
}

void LCD_SetRotation(uint8_t rotation)
{	
	switch(rotation)
	{
	case SCREEN_VERTICAL_1:
		LCD_TxCmdData(0x003, 0x10A0);
		lcdWidth = 240;
		lcdHeight = 320;
		break;
	case SCREEN_HORIZONTAL_1:
		LCD_TxCmdData(0x003, 0x1098);
		lcdWidth  = 320;
		lcdHeight = 240;
		break;
	case SCREEN_VERTICAL_2:
		LCD_TxCmdData(0x003, 0x1080);
		lcdWidth  = 240;
		lcdHeight = 320;
		break;
	case SCREEN_HORIZONTAL_2:
		LCD_TxCmdData(0x003, 0x10A8);
		lcdWidth  = 320;
		lcdHeight = 240;
		break;
	default:
		break;
	}
}

void LCD_DrawColor(uint16_t color)
{	
    LCD_TxData(color);    
}

void LCD_DrawColorBurst(uint16_t color, uint16_t size)
{
    LCD_DC = 1;
    LCD_CS = 0;

	for(uint16_t i = 0; i < size; i++)
    {
        LCD_TxData(color);        
    }
	
    LCD_CS = 1;	
}

void LCD_FillScreen(uint16_t color)
{
	LCD_SetWindow(0, 0, lcdWidth, lcdHeight);
	LCD_DrawColorBurst(color, lcdWidth*lcdHeight);
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
