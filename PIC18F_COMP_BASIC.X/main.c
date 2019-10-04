#include "main.h"

void initVref(void);
void initComparator(void);

void main(void) {
    
    OSCCON = 0x72; //16MHz, Internal OSC

    ANSEL = 0x0; //disable analog input     
    ANSELH = 0x0;

    //CVref = 2.06v
    initVref();
    
    //compare1 configuration
    initComparator();
    
    //if Vin+(2.06v) < Vin-(RA0), C1out(RA4) goes high
    while (1) {
    }

    return;
}

void initVref(void)
{
    //CVref = (Vdd/32)* (8 + CVR)
    //CVref = 3.3/32 * 20 = 2.06V
        
    CVRCONbits.CVREN = 1; //enable
    CVRCONbits.CVROE = 1; //output enable
    CVRCONbits.CVRR = 0; //high range
    CVRCONbits.CVRSS = 0; //vdd-vss
    CVRCONbits.CVR = 12; //comparator value (CVref = 2.06V)
}

void initComparator(void)
{
    TRISAbits.RA4 = 0; //C1 output pin
    
    CM1CON0bits.C1ON = 1; //comparator enableC    
    CM1CON0bits.C1OE = 1; //C1Output pin enable
    CM1CON0bits.C1POL = 1; //inverted polarity
    CM1CON0bits.C1SP = 1; //high speed mode
    CM1CON0bits.C1R = 1; //Vin+ = CVref
    CM1CON0bits.C1CH = 0; //select pin C12IN0-(RA0)    
    CM2CON1bits.C1RSEL = 1; //CVref -> C1Vref
}