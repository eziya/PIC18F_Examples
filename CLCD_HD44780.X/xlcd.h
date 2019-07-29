#ifndef __XLCD_H
#define __XLCD_H

#include "main.h"

#define BIT8_MODE

#define DATA_LAT    LATD
#define DATA_PORT   PORTD
#define DATA_TRIS   TRISD

#define RW_PIN      LATCbits.LATC5   		/* PORT for RW */
#define TRIS_RW     TRISCbits.TRISC5    	/* TRIS for RW */
#define RS_PIN      LATCbits.LATC4   		/* PORT for RS */
#define TRIS_RS     TRISCbits.TRISC4    	/* TRIS for RS */
#define E_PIN       LATCbits.LATC6  		/* PORT for D  */
#define TRIS_E      TRISCbits.TRISC6    	/* TRIS for E  */

// command
#define LCD_CMD_CLEARDISPLAY    0x01
#define LCD_CMD_RETURNHOME      0x02
#define LCD_CMD_ENTRYMODESET    0x04
#define LCD_CMD_DISPLAYCONTROL  0x08
#define LCD_CMD_CURSORSHIFT     0x10
#define LCD_CMD_FUNCTIONSET     0x20
#define LCD_CMD_SETCGRAMADDR    0x40
#define LCD_CMD_SETDDRAMADDR    0x80

// entry mode
#define LCD_FLAG_ENTRYRIGHT     0x00
#define LCD_FLAG_ENTRYLEFT      0x02
#define LCD_FLAG_ENTRYSHIFTINCREMENT    0x01
#define LCD_FLAG_ENTRYSHIFTDECREMENT    0x00

// display control
#define LCD_FLAG_DISPLAYON  0x04
#define LCD_FLAG_DISPLAYOFF 0x00
#define LCD_FLAG_CURSORON   0x02
#define LCD_FLAG_CURSOROFF  0x00
#define LCD_FLAG_BLINKON    0x01
#define LCD_FLAG_BLINKOFF   0x00

// display/cursor shift
#define LCD_FLAG_DISPLAYMOVE    0x08
#define LCD_FLAG_CURSORMOVE     0x00
#define LCD_FLAG_MOVERIGHT      0x04
#define LCD_FLAG_MOVELEFT       0x00

// function set
#define LCD_FLAG_8BITMODE   0x10
#define LCD_FLAG_4BITMODE   0x00
#define LCD_FLAG_2LINE      0x08
#define LCD_FLAG_1LINE      0x00
#define LCD_FLAG_5x10DOTS   0x04
#define LCD_FLAG_5x8DOTS    0x00

#define LCD_START_LINE1     0x00
#define LCD_START_LINE2     0x40

void CLCD_Initialize(void);
void CLCD_PutC(char ch);
void CLCD_PutS(char *str);
void CLCD_SetPos(uint8_t row, uint8_t col);

#endif
