/* 
 * File:   lcd_gfx.h
 * Author: KIKI
 *
 * Created on 2019년 9월 19일 (목), 오후 9:37
 */

#ifndef LCD_GFX_H
#define	LCD_GFX_H

#include "main.h"
#include "fonts.h"

/* functions */
void LCD_DrawHollowCircle(uint16_t X, uint16_t Y, uint16_t radius, uint16_t color);
void LCD_DrawFilledCircle(uint16_t X, uint16_t Y, uint16_t radius, uint16_t color);
void LCD_DrawHollowRectangleCoord(uint16_t X0, uint16_t Y0, uint16_t X1, uint16_t Y1, uint16_t color);
void LCD_DrawFilledRectangleCoord(uint16_t X0, uint16_t Y0, uint16_t X1, uint16_t Y1, uint16_t color);
void LCD_DrawChar(char ch, const uint8_t font[], uint16_t X, uint16_t Y, uint16_t color, uint16_t bgcolor);
void LCD_DrawText(const char* str, const uint8_t font[], uint16_t X, uint16_t Y, uint16_t color, uint16_t bgcolor);
void LCD_DrawImage(uint16_t x, uint16_t y, uint16_t width, uint16_t height, const uint16_t* image, uint8_t orientation);

#endif	/* LCD_GFX_H */

