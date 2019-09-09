#include "spi_master.h"

#define SS_TRIS TRISAbits.RA5
#define SS_PIN  LATAbits.LATA5

void SPI_Init(void) {
    SS_TRIS = 0; //ss output
    SS_PIN = 1; //idle high

    TRISCbits.RC3 = 0; //sck output
    TRISCbits.RC4 = 1; //sdi input
    TRISCbits.RC5 = 0; //sdo output

    SSPSTATbits.SMP = 0; //sample at middle
    SSPSTATbits.CKE = 1; //idle to active

    SSPCON1bits.CKP = 0; //clock low when idle
    SSPCON1bits.SSPM = 0; //master mode, Fosc / 4 = 4MHz
    SSPCON1bits.SSPEN = 1; //enable SPI
}

uint8_t SPI_Rx(void) {
    SSPBUF = 0x00; //dummy tx
    while (!SSPSTATbits.BF);
    return SSPBUF; //read  buffer
}

void SPI_Tx(uint8_t data) {
    uint8_t dummy;
    SSPBUF = data; //write to buffer
    while (!SSPSTATbits.BF);
    dummy = SSPBUF; //discard dummy
}

uint8_t SPI_TxRx(uint8_t data) {
    SSPBUF = data; //write to buffer
    while (!SSPSTATbits.BF);
    return SSPBUF;
}

void SPI_RxBuffer(uint8_t *buffer, uint8_t length) {
    for (uint8_t i = 0; i < length; i++) {
        buffer[i] = SPI_Rx();
    }
}

void SPI_TxBuffer(uint8_t *buffer, uint8_t length) {
    for (uint8_t i = 0; i < length; i++) {
        SPI_Tx(buffer[i]);
    }
}

void SPI_Select(void) {
    SS_PIN = 0;
    __delay_us(1);
}

void SPI_Deselect(void) {
    SS_PIN = 1;
    __delay_us(1);
}
