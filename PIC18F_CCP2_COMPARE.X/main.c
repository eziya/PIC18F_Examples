#include "main.h"

#define PWM_HIGH_US     4000
#define PWM_LOW_US      6000

void CCP2_InitCompare(void); //initialize CCP2 compare mode

void __interrupt() ISR(void) {

    if (PIR2bits.CCP2IF) { //compare event        

        if (CCPR2 == PWM_HIGH_US) {
            CCP2CONbits.CCP2M = 0x8; //compare mode, CCP2 low to high            
            CCPR2 = PWM_LOW_US; //low 0.6ms
        } else if (CCPR2 == PWM_LOW_US) {
            CCP2CONbits.CCP2M = 0x9; //compare mode, CCP2 high to low            
            CCPR2 = PWM_HIGH_US; //high 0.4ms            
        }

        TMR1 = 0; //clear timer1
        PIR2bits.CCP2IF = 0; //clear compare flag        
    }
}

void main(void) {

    OSCCON = 0x72; //16MHz, Internal OSC

    ANSEL = 0x0; //disable analog input     
    ANSELH = 0x0;

    CCP2_InitCompare(); //initialize compare mode

    while (1);
    return;
}

void CCP2_InitCompare(void) {
    TRISCbits.RC1 = 0; //CCP2x compare output
    CCP2CONbits.CCP2M = 0x9; //compare mode, CCP2 high to low

    T1CONbits.TMR1CS = 0; //internal clock source, 16/4 = 4MHz
    T1CONbits.T1CKPS = 2; //1:4, 1MHz = 1us

    PIR2bits.CCP2IF = 0; //clear CCP2 flag    
    PIE2bits.CCP2IE = 1; //enable CCP2 interrupt    

    INTCONbits.PEIE = 1; //enable peripheral interrupt
    INTCONbits.GIE = 1; //enable global interrupt

    TMR1 = 0;
    CCPR2 = PWM_HIGH_US; //toggle 0.4ms later, duty 40%
    T1CONbits.TMR1ON = 1;
}
