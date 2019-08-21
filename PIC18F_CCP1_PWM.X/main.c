#include "main.h"

volatile uint8_t flagINT0 = 0;
uint8_t defaultDuty = 70;

void setPWMDuty(uint8_t duty);

void __interrupt() ISR(void) {
    if (INTCONbits.INT0IF) {
        
        __delay_ms(100);    //button debounce
        
        if (INTCONbits.INT0IF) {
            flagINT0 = 1; //switch direction            
        }

        INTCONbits.INT0IF = 0;
    }
}

void main(void) {    

    OSCCON = 0x72; //16MHz, Internal OSC

    ANSEL = 0x0; //disable analog input    
    ANSELH = 0x0;

    INTCONbits.INT0IF = 0; //clear INT0 flag
    INTCON2bits.INTEDG0 = 1; //rising edge
    INTCONbits.INT0IE = 1; //enable INT0
    INTCONbits.PEIE = 1;
    INTCONbits.GIE = 1;

    TRISCbits.RC2 = 0; //CCP1 P1A PWM output
    TRISDbits.RD5 = 0; //CCP1 P1B PWM output
    TRISDbits.RD6 = 0; //CCP1 P1C PWM output
    TRISDbits.RD7 = 0; //CCP1 P1D PWM output

    CCP1CONbits.CCP1M = 0xC; //PWM mode, active high    
    CCP1CONbits.P1M = 1; //full bridge forward

    T2CONbits.T2CKPS = 2; //Prescaler 1:16, 16MHz / 4 / 16 = 250kHz
    PR2 = 249; //4us * 250 = 1ms, PWM Freq = 1kHz      
    
    setPWMDuty(defaultDuty);

    T2CONbits.TMR2ON = 1;
    while (1) {
        if (flagINT0) {
            flagINT0 = 0;
            
            CCP1CONbits.CCP1M = 0x0; //pwm off
            __delay_ms(1);

            if (CCP1CONbits.P1M == 1) CCP1CONbits.P1M = 3; //switch to reverse
            else CCP1CONbits.P1M = 1; //switch to forward
            
            CCP1CONbits.CCP1M = 0xC; //pwm on
        }
    }
    return;
}

void setPWMDuty(uint8_t duty)
{    
    uint16_t dutyVal = (PR2 + 1) * 4 / 100 * duty; //4*(PR2+1)*Duty Ratio
    CCPR1L = dutyVal >> 2; //duty registers
    CCP1CONbits.DC1B = (dutyVal & 0x03); //duty registers    
}