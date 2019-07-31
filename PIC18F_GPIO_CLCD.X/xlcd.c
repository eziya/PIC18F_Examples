#include "xlcd.h"

static inline void CLCD_ToggleEnable(void) {
    E_PIN = 1; //enable high
    __delay_us(1);
    E_PIN = 0; //enable low
}

static void CLCD_SendCmd(uint8_t cmd) {

    DATA_TRIS = 0x00; //tris output
    RS_PIN = 0; //command    
    
#ifdef BIT8_MODE
    DATA_LAT = cmd; //send command
    CLCD_ToggleEnable(); //toggle enable        
#else
    uint8_t port = DATA_PORT & 0x0F;
    DATA_LAT = ((cmd & 0xF0) | port); //send command    
    CLCD_ToggleEnable(); //toggle enable        
    __delay_us(1);
    DATA_LAT = (((cmd<<4) & 0xF0) | port); //send command    
    CLCD_ToggleEnable(); //toggle enable    
#endif
    __delay_ms(2); //add delay to skip checking busyflag
}

static void CLCD_SendData(uint8_t data) {

    DATA_TRIS = 0x00; //tris output
    RS_PIN = 1; //data    
        
#ifdef BIT8_MODE
    DATA_LAT = data; //send data
    CLCD_ToggleEnable(); //toggle enable        
#else
    uint8_t port = DATA_PORT & 0x0F;
    DATA_LAT = ((data & 0xF0) | port); //send command    
    CLCD_ToggleEnable(); //toggle enable        
    __delay_us(1);
    DATA_LAT = (((data<<4) & 0xF0) | port); //send command    
    CLCD_ToggleEnable(); //toggle enable    
#endif
    __delay_ms(2); //add delay to skip checking busyflag
}

void CLCD_Initialize(void) {
#ifdef BIT8_MODE
    DATA_LAT = 0x0; //init low    
    RS_PIN = 0; //init low    
    E_PIN = 0; //init low

    DATA_TRIS = 0x00; //tris output    
    TRIS_RS = 0; //rs output    
    TRIS_E = 0; //enable output

    __delay_ms(15); //wait lcd ready

    CLCD_SendCmd(LCD_CMD_FUNCTIONSET | LCD_FLAG_8BITMODE); //1st try    
    __delay_ms(5);
    CLCD_SendCmd(LCD_CMD_FUNCTIONSET | LCD_FLAG_8BITMODE); //2nd try
    __delay_ms(1);
    CLCD_SendCmd(LCD_CMD_FUNCTIONSET | LCD_FLAG_8BITMODE); //3rd try
    __delay_ms(1);

    CLCD_SendCmd(LCD_CMD_FUNCTIONSET | LCD_FLAG_8BITMODE | LCD_FLAG_2LINE); //0x38    
#else
    DATA_LAT &= 0x0F; //init low    
    RS_PIN = 0; //init low    
    E_PIN = 0; //init low

    DATA_TRIS &= 0x0F; //tris output    
    TRIS_RS = 0; //rs output    
    TRIS_E = 0; //enable output

    __delay_ms(15); //wait lcd ready

    CLCD_SendCmd(LCD_CMD_FUNCTIONSET | LCD_FLAG_4BITMODE); //1st try    
    __delay_ms(5);
    CLCD_SendCmd(LCD_CMD_FUNCTIONSET | LCD_FLAG_4BITMODE); //2nd try
    __delay_ms(1);
    CLCD_SendCmd(LCD_CMD_FUNCTIONSET | LCD_FLAG_4BITMODE); //3rd try
    __delay_ms(1);

    CLCD_SendCmd(LCD_CMD_FUNCTIONSET | LCD_FLAG_4BITMODE | LCD_FLAG_2LINE); //0x28
#endif    
    
    CLCD_SendCmd(LCD_CMD_CLEARDISPLAY); //0x01       
    CLCD_SendCmd(LCD_CMD_DISPLAYCONTROL | LCD_FLAG_DISPLAYON | LCD_FLAG_CURSORON | LCD_FLAG_BLINKON); //0x0F
    CLCD_SendCmd(LCD_CMD_ENTRYMODESET | LCD_FLAG_ENTRYLEFT); //0x06
    CLCD_SendCmd(LCD_CMD_SETDDRAMADDR); //0x80
}

void CLCD_PutC(char ch) {
    CLCD_SendData(ch);
}

void CLCD_PutS(char *str) {
    while (*str) CLCD_PutC(*str++);
}

void CLCD_SetPos(uint8_t row, uint8_t col) {
    if (row) {
        CLCD_SendCmd(LCD_CMD_SETDDRAMADDR | (LCD_START_LINE2 + col));
    } else {
        CLCD_SendCmd(LCD_CMD_SETDDRAMADDR | (LCD_START_LINE1 + col));
    }
}
