#include <string.h>

#include "main.h"
#include "uart.h"
#include "spi_master.h"

void main(void) {

    OSCCON = 0x72; //16MHz, Internal OSC

    ANSEL = 0x0; //disable analog input     
    ANSELH = 0x0;

    SPI_Init(); //init spi
    UART_Init(); //init uart
    
    while (1) {
    }

    return;
}
