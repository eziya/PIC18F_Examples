#include <string.h>

#include "main.h"
#include "uart.h"
#include "spi_master.h"
#include "at45db041x.h"

char buffer[AT45DB041X_PAGE_SIZE];
const char* msg1 = "HELLO WORLD!!!\r\n";
const char* msg2 = "PIC18F TESTING...\r\n";
const char* msg3 = "Think like a man of the action, act like a man of the thought.\r\n";

void main(void) {

    OSCCON = 0x72; //16MHz, Internal OSC

    ANSEL = 0x0; //disable analog input     
    ANSELH = 0x0;

    SPI_Init(); //init spi
    UART_Init(); //init uart

    UART_puts("FLASH TESTING...\r\n");

    if (flash_check_present()) {
        
        UART_puts("ERASING blocks...\r\n");
        flash_erase_all();
        UART_puts("ERASING blocks DONE...\r\n");
        
        UART_puts("WRITE:");
        UART_puts((char*)msg1);
        flash_write_page(0, (uint8_t*)msg1, strlen(msg1), 0);        
        memset(buffer, 0, sizeof(buffer));
        flash_read_page(0, (uint8_t*)buffer, strlen(msg1));
        UART_puts("READ :");
        UART_puts(buffer);
        
        UART_puts("WRITE:");
        UART_puts((char*)msg2);
        flash_write_page(999, (uint8_t*)msg2, strlen(msg2), 0);        
        memset(buffer, 0, sizeof(buffer));
        flash_read_page(999, (uint8_t*)buffer, strlen(msg2));
        UART_puts("READ :");
        UART_puts(buffer);        
        
        UART_puts("WRITE:");
        UART_puts((char*)msg3);
        flash_write_page(2047, (uint8_t*)msg3, strlen(msg3), 0);        
        memset(buffer, 0, sizeof(buffer));
        flash_read_page(2047, (uint8_t*)buffer, strlen(msg3));
        UART_puts("READ :");
        UART_puts(buffer);

    } else {
        UART_puts("NO AT45DBXX DETECTED.\r\n");
    }

    while (1) {
    }

    return;
}
