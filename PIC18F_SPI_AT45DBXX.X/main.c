#include <string.h>

#include "main.h"
#include "uart.h"
#include "spi_master.h"
#include "at45dbxx.h"

char buffer[256];
const char* msg1 = "HELLO WORLD!!!\r\n";
const char* msg2 = "PIC18F TESTING...\r\n";

void main(void) {

    OSCCON = 0x72; //16MHz, Internal OSC

    ANSEL = 0x0; //disable analog input     
    ANSELH = 0x0;

    SPI_Init(); //init spi
    UART_Init(); //init uart

    UART_puts("FLASH TESTING...\r\n");

    if (flash_check_present()) {

        //if (flash_test_memory() == 1) {
        //    UART_puts("FLASH TEST O.K\r\n");
        //} else {
        //    UART_puts("FLASH TEST FAILED.\r\n");
        //}

        //flash_erase_all();
        UART_puts("WRITE:");
        UART_puts((char*)msg1);
        flash_write_page(0, (uint8_t*)msg1, strlen(msg1), 1);
        
        flash_read_page(0, (uint8_t*)buffer, strlen(msg1));
        UART_puts("READ:");
        UART_puts(buffer);
        
        UART_puts("WRITE:");
        UART_puts((char*)msg2);
        flash_write_page((FLASH_END_ADDRESS/2), (uint8_t*)msg2, strlen(msg2), 1);
        
        flash_read_page((FLASH_END_ADDRESS/2), (uint8_t*)buffer, strlen(msg2));
        UART_puts("READ:");
        UART_puts(buffer);

    } else {
        UART_puts("NO AT45DBXX DETECTED.\r\n");
    }

    while (1) {
    }

    return;
}
