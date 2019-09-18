/* 
 * File:   lcd_bd663474.h
 * Author: KIKI
 *
 * Created on 2019년 9월 17일 (화), 오후 7:42
 */

#ifndef LCD_BD663474_H
#define	LCD_BD663474_H

#include "main.h"
    
#define LCD_SCREEN_HEIGHT 	320
#define LCD_SCREEN_WIDTH 	240

/* PIN Configuration */
#define HSPI_INSTANCE			&hspi1
#define LCD_CS_TRIS             TRISAbits.RA1
#define LCD_CS                  LATAbits.LATA1
#define LCD_RS_TRIS             TRISAbits.RA2
#define LCD_RS                  LATAbits.LATA2
#define LCD_RST_TRIS            TRISDbits.RD0
#define LCD_RST                 LATDbits.LATD0
#define LCD_TC_TRIS             TRISAbits.RA4
#define LCD_TC                  LATAbits.LATA4

#define BURST_MAX_SIZE 			500
#define BLACK      				0x0000
#define NAVY        			0x000F
#define DARKGREEN   			0x03E0
#define DARKCYAN    			0x03EF
#define MAROON      			0x7800
#define PURPLE      			0x780F
#define OLIVE       			0x7BE0
#define LIGHTGREY   			0xC618
#define DARKGREY    			0x7BEF
#define BLUE        			0x001F
#define GREEN       			0x07E0
#define CYAN        			0x07FF
#define RED         			0xF800
#define MAGENTA     			0xF81F
#define YELLOW      			0xFFE0
#define WHITE       			0xFFFF
#define ORANGE      			0xFD20
#define GREENYELLOW 			0xAFE5
#define PINK        			0xF81F

#define SCREEN_VERTICAL_1		0
#define SCREEN_HORIZONTAL_1		1
#define SCREEN_VERTICAL_2		2
#define SCREEN_HORIZONTAL_2		3

void LCD_SetWindow(uint16_t x0, uint16_t y0, uint16_t x1, uint16_t y1);
void LCD_Reset(void);
void LCD_Enable(void);
void LCD_Init(void);
void LCD_SetRotation(uint8_t rotation);
void LCD_DrawColor(uint16_t color);
void LCD_DrawColorBurst(uint16_t color, uint32_t size);
void LCD_FillScreen(uint16_t color);
void LCD_DrawPixel(uint16_t x,uint16_t y,uint16_t color);
void LCD_DrawRectangle(uint16_t x, uint16_t y, uint16_t width, uint16_t height, uint16_t color);
void LCD_DrawHLine(uint16_t x, uint16_t y, uint16_t width, uint16_t color);
void LCD_DrawVLine(uint16_t x, uint16_t y, uint16_t height, uint16_t color);

#endif	/* LCD_BD663474_H */

