#include "main.h"
#include "ringbuffer.h"

#define BAUDRATE 115200

void UART_config(void);
void UART_putch(uint8_t ch);
void UART_puts(char *str);

ring_buffer_t ring_buffer; //ring buffer 
uint8_t uartFlag = 0; //uart flag

void __interrupt() ISR(void) {
    if (PIR1bits.RCIF) {
        ring_buffer_queue(&ring_buffer, RCREG); //queue received uint8_t
        if (RCREG == '\r' || RCREG == '\n') uartFlag = 1; //if received uint8_t is CRLF, set flag
        PIR1bits.RCIF = 0; //clear interrupt flag
    }
}

void main(void) {

    OSCCON = 0x72; //16MHz, Internal OSC

    ANSEL = 0x0; //disable analog input    
    ANSELH = 0x0;

    ring_buffer_init(&ring_buffer); //initialize ring buffer
    UART_config(); //initialize uart

    UART_puts("### PIC18f UART Demo ###\r\n");

    while (1) {
        if (uartFlag) {
            uartFlag = 0; //clear flag
            static uint8_t data;
            while (ring_buffer_dequeue(&ring_buffer, (char*) &data) > 0) {
                UART_putch(data); //dequeue data and transmit
            }
        }
    }

    return;
}

void UART_config(void) {
    TRISCbits.RC6 = 1; //tx pin
    TRISCbits.RC7 = 1; //rx pin

    PIR1bits.RCIF = 0; //clear interrupt flag
    PIE1bits.RCIE = 1; //enable receive interrupt
    INTCONbits.PEIE = 1; //enable peripheral interrupt
    INTCONbits.GIE = 1; //enable global interrupt

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
    while (*str) {
        UART_putch(*str);
        str++;
    }
}