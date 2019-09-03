#include "spi_master.h"

#define SS_TRIS TRISCbits.RC2
#define SS_PIN  LATCbits.LATC2

void SPI_Init(void) {
    SS_TRIS = 0; //ss output
    SS_PIN = 1; //idle high
    
    TRISCbits.RC3 = 0; //sck output
    TRISCbits.RC4 = 1; //sdi input
    TRISCbits.RC5 = 0; //sdo output
    
    SSPSTATbits.SMP = 0; //sample at middle
    SSPSTATbits.CKE = 0; //idle to active
    
    SSPCON1bits.CKP = 0; //clock low when idle
    SSPCON1bits.SSPM = 0; //master mode, Fosc / 4 = 4MHz
    SSPCON1bits.SSPEN = 1; //enable SPI
}

uint8_t SPI_Rx() {
    uint8_t dummy;
    dummy = SSPBUF;
    PIR1bits.SSPIF = 0;    
    SSPBUF=0x00;
    while(!PIR1bits.SSPIF);
    return SSPBUF;
    
    //while(!SSPSTATbits.BF);	    
    //return SSPBUF; //read  buffer
}

void SPI_Tx(uint8_t data) {    
    uint8_t dummy;
    dummy = SSPBUF;
    PIR1bits.SSPIF = 0;
    SSPBUF = data; //write to buffer
    while(!PIR1bits.SSPIF);
    
    //while(!SSPSTATbits.BF);	       
    //dummy = SSPBUF;
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
    __delay_ms(1);
}

void SPI_Deselect(void) {
    SS_PIN = 1;
    __delay_ms(1);
}
