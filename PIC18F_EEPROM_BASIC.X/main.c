#include "main.h"

#define EEPROM_SIZE 256

void EEPROM_Write(uint8_t Address, uint8_t Data);
uint8_t EEPROM_Read(uint8_t Address);
void EEPROM_Refresh(void);

void main(void) {

    OSCCON = 0x72; //16MHz, Internal OSC

    ANSEL = 0x0; //disable analog input     
    ANSELH = 0x0;

    TRISBbits.RB0 = 0; //RB0 output
    TRISBbits.RB1 = 0; //RB1 output
    LATBbits.LATB0 = 0; //RB0 low
    LATBbits.LATB1 = 0; //RB0 low

    EEPROM_Refresh(); //refresh

    for (uint16_t i = 0; i < EEPROM_SIZE; i++) {
        EEPROM_Write((uint8_t) i, (uint8_t) i); //write eeprom
        uint8_t ret = EEPROM_Read((uint8_t) i); //read eeprom

        if (ret != i) { //validation failed
            LATBbits.LATB0 = 1; //RB0 high
            while (1);
        }
    }

    LATBbits.LATB1 = 1; //RB1 high

    while (1) {
    }

    return;
}

uint8_t EEPROM_Read(uint8_t address) {
    uint8_t ret;
    EEADR = address; //data memory address to read
    EECON1bits.EEPGD = 0; //point to data memory
    EECON1bits.CFGS = 0; //access eeprom
    EECON1bits.RD = 1; //eeprom read
    ret = EEDATA; // Read The Data
    return ret;
}

void EEPROM_Write(uint8_t address, uint8_t data) {
    EEADR = address; //data memory address to write
    EEDATA = data; //data memory value to write
    EECON1bits.EEPGD = 0; //point to data memory
    EECON1bits.CFGS = 0; //access eeprom
    EECON1bits.WREN = 1; //enable writes
    INTCONbits.GIE = 0; //disable interrupts
    EECON2 = 0x55; //required sequence#1
    EECON2 = 0xAA; //required sequence#2
    EECON1bits.WR = 1; //set WR bit to begin write
    INTCONbits.GIE = 1; //enable interrupt 
    while (EECON1bits.WR); //wait WR bit is cleared by hardware
    EECON1bits.WREN = 0; //Disable The Operation    
}

void EEPROM_Refresh() {
    //D124: number of total erase/write cycles before refresh (1~10M)
    //D130: cell endurance 10K
    //256 cells * 10K = 2.560M
    //if there's no refresh, D124 minimum condition could happen before reaching D130 condition
    for (uint16_t i = 0; i < EEPROM_SIZE; i++) {
        EEPROM_Write(i, EEPROM_Read(i));
    }
}
