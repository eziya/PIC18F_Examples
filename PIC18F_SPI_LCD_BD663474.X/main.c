#include <string.h>

#include "main.h"
#include "spi_master.h"
#include "lcd_bd663474.h"

volatile uint8_t data = 0;
char *sndBuffer = "HELLO WORLD!HELLO WORLD!\r\n";
char rcvBuffer[30];

void main(void) {

    OSCCON = 0x72; //16MHz, Internal OSC

    ANSEL = 0x0; //disable analog input     
    ANSELH = 0x0;

    SPI_Init(); //init spi
    LCD_Init();    
    LCD_SetRotation(SCREEN_HORIZONTAL_2);
    LCD_FillScreen(GREEN);
    
    
    while (1) {
    }

    return;
}
