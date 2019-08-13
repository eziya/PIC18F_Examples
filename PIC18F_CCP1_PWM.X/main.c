#include "main.h"

void main(void) {

    uint8_t duty;
    uint16_t dutyVal;

    OSCCON = 0x72; //16MHz, Internal OSC

    ANSEL = 0x0; //disable analog input     
    ANSELH = 0x0;

    TRISCbits.RC2 = 0; //CCP1 P1A PWM output
    TRISDbits.RD5 = 0; //CCP1 P1B PWM output 
    TRISDbits.RD6 = 0; //CCP1 P1C PWM output
    TRISDbits.RD7 = 0; //CCP1 P1D PWM output

    CCP1CONbits.CCP1M = 0xC; //PWM mode, active high    
    CCP1CONbits.P1M = 0; //single output (steering mode)
    
    PSTRCONbits.STRA = 1; //P1A pin outout
    PSTRCONbits.STRB = 1; //P1B pin outout
    PSTRCONbits.STRC = 1; //P1B pin outout
    PSTRCONbits.STRD = 1; //P1B pin outout

    T2CONbits.T2CKPS = 2; //Prescaler 1:16, 16MHz / 4 / 16 = 250kHz
    PR2 = 249; //4us * 250 = 1ms, PWM Freq = 1kHz       

    duty = 70; //duty ration 70%
    dutyVal = (PR2 + 1) * 4 / 100 * duty; //4*(PR2+1)*Duty Ratio

    CCPR1L = dutyVal >> 2; //duty registers
    CCP1CONbits.DC1B = (dutyVal & 0x03); //duty registers

    T2CONbits.TMR2ON = 1;

    while (1) {

    }
    
    return;
}
