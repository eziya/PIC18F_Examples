#include <string.h>

#include "main.h"
#include "uart.h"
#include "spi_master.h"
#include "25LC010A.h"

volatile uint8_t data = 0;
char msg[30];
char *sndBuffer = "HELLO WORLD!HELLO WORLD!\r\n";
char rcvBuffer[30];
    
void main(void) {

    OSCCON = 0x72; //16MHz, Internal OSC

    ANSEL = 0x0; //disable analog input     
    ANSELH = 0x0;
        	
	SPI_Init();
	UART_Init();
	
	EEPROM_WriteByte(0x00, 'A');
	data = EEPROM_ReadByte(0x00);
	memset(msg, 0, sizeof(msg));	
	sprintf(msg, "READ Byte: %c\r\n", data);
	UART_puts(msg);
	
	EEPROM_WriteByte(0x01, 'B');
	data = EEPROM_ReadByte(0x01);
	memset(msg, 0, sizeof(msg));
	sprintf(msg, "READ Byte: %c\r\n", data);
	UART_puts(msg);
	
	EEPROM_WriteBuffer(0x02, (uint8_t*)sndBuffer, strlen(sndBuffer));
	memset(rcvBuffer, 0, sizeof(rcvBuffer));
	EEPROM_ReadBuffer(0x02, (uint8_t*)rcvBuffer,strlen(sndBuffer));
	UART_puts(rcvBuffer);
	
	EEPROM_EraseAll();	
	data = EEPROM_ReadByte(0x00);
	memset(msg, 0, sizeof(msg));
	sprintf(msg, "READ Byte: %c\r\n", data);
	UART_puts(msg);

    while (1) {
    }

    return;
}


