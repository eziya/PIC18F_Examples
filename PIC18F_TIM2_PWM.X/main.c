#include "main.h"

void main(void) {

    uint8_t duty;
    uint16_t dutyVal;

    OSCCON = 0x72; //16MHz, Internal OSC

    ANSEL = 0x0; //disable analog input     
    ANSELH = 0x0;

    TRISCbits.RC1 = 0; //CCP2x PWM output
    CCP2CONbits.CCP2M = 0xC; //pwm mode

    T2CONbits.T2CKPS = 2; //Prescaler 1:16, 16MHz / 4 / 16 = 250kHz
    PR2 = 249; //4us * 250 = 1ms, PWM Freq = 1kHz       

    duty = 70; //duty ration 70%
    dutyVal = (PR2 + 1) * 4 / 100 * duty; //4*(PR2+1)*Duty Ratio

    CCPR2L = dutyVal >> 2; //duty registers
    CCP2CONbits.DC2B = (dutyVal & 0x03); //duty registers

    T2CONbits.TMR2ON = 1;

    while (1) {

    }

    return;
}
