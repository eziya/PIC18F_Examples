#include <string.h>

#include "main.h"
#include "uart.h"
#include "spi_master.h"
#include "25LC010A.h"

volatile uint8_t data = 0;
char *sndBuffer = "HELLO WORLD!HELLO WORLD!\r\n";
char rcvBuffer[30];

void main(void) {

    OSCCON = 0x72; //16MHz, Internal OSC

    ANSEL = 0x0; //disable analog input     
    ANSELH = 0x0;

    SPI_Init(); //init spi
    UART_Init(); //init uart

    EEPROM_Write(0x00, 'A'); //write 'A' at 0x00
    data = EEPROM_Read(0x00); //read data

    if (data != 'A') UART_puts("EEPROM_Write 'A' Failed.\r\n");
    else UART_puts("EEPROM_Write 'A' OK.\r\n");

    EEPROM_Write(0x01, 'B'); //write 'B' at 0x01
    data = EEPROM_Read(0x01); //read data

    if (data != 'B') UART_puts("EEPROM_Writeuint8_t 'B' Failed.\r\n");
    else UART_puts("EEPROM_Writeuint8_t 'B' OK.\r\n");

    EEPROM_WriteBuffer(0x02, (uint8_t*) sndBuffer, strlen(sndBuffer)); //write string
    EEPROM_ReadBuffer(0x02, (uint8_t*) rcvBuffer, strlen(sndBuffer)); //read string
    UART_puts(rcvBuffer);

    EEPROM_EraseAll(); //erase all
    data = EEPROM_Read(0x00); //read data at 0x00

    if (data != 0) UART_puts("EEPROM_EraseAll Failed.\r\n");
    else UART_puts("EEPROM_EraseAll OK.\r\n");

    while (1) {
    }

    return;
}
