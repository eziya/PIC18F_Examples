#include "uart.h"

#define BAUDRATE 115200

void UART_Init(void) {
    TRISCbits.RC6 = 1; //tx pin
    TRISCbits.RC7 = 1; //rx pin
    
    TXSTAbits.SYNC = 0; //async mode    
    
    BAUDCONbits.BRG16 = 0; //high speed
    TXSTAbits.BRGH = 1; //high speed    
    SPBRG = _XTAL_FREQ / (16 * (BAUDRATE + 1)); //baudrate

    RCSTAbits.SPEN = 1; //serial port enable    
    TXSTAbits.TXEN = 1; //tx enable    
    RCSTAbits.CREN = 1; //continuous rx enable    
}

void UART_putch(uint8_t ch) {
    while (!TXSTAbits.TRMT); //wait tx empty
    TXREG = ch; //send
}

void UART_puts(char *str) {
    while (*str != 0) {
        UART_putch(*str);
        str++;
    }
}

uint8_t UART_getch(void) {
    while (!PIR1bits.RCIF); //wait receive flag
    return RCREG;
}

void UART_gets(char* str, uint16_t len) {
    for (int i = 0; i < len; i++) {
        str[i] = UART_getch();
    }
}
