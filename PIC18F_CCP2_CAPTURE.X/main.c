#include "main.h"
#include "xlcd.h"

char msgBuf[16];

volatile uint16_t oldCCPR2, nowCCPR2, period; //variables to capture TMR1 and calculate period

void CCP2_InitCapture(); //initialize CCP2 capture mode
void printLCD(); //print period value

void __interrupt() ISR(void) {

    if (PIR2bits.CCP2IF) { //capture event
        nowCCPR2 = CCPR2; //load current CCPR2 value

        if (oldCCPR2 >= nowCCPR2) { //calculate period between two rising edge
            period = (65535 - oldCCPR2) + nowCCPR2;
        } else {
            period = nowCCPR2 - oldCCPR2;
        }

        oldCCPR2 = nowCCPR2; //save current CCPR2 value
        PIR2bits.CCP2IF = 0; //clear caputre flag
    }
}

void main(void) {

    OSCCON = 0x72; //16MHz, Internal OSC

    ANSEL = 0x0; //disable analog input     
    ANSELH = 0x0;

    CLCD_Initialize(); //initialize CLCD
    CCP2_InitCapture(); //initialize caputre mode

    while (1) {
        printLCD(); //print period value
        __delay_ms(1000);
    }
    return;
}

void CCP2_InitCapture() {
    TRISCbits.RC1 = 1; //CCP2x capture intput
    CCP2CONbits.CCP2M = 0x5; //capture mode, rising edge

    T1CONbits.TMR1CS = 0; //internal clock source, 16/4 = 4MHz
    T1CONbits.T1CKPS = 2; //1:4, 1MHz = 1us

    PIR2bits.CCP2IF = 0; //clear CCP2 flag    
    PIE2bits.CCP2IE = 1; //enable CCP2 interrupt    
    INTCONbits.PEIE = 1; //enable peripheral interrupt
    INTCONbits.GIE = 1; //enable global interrupt

    TMR1 = 0;
    T1CONbits.TMR1ON = 1;
}

void printLCD() {
    for (int i = 0; i < sizeof (msgBuf); i++)
        msgBuf[i] = 0; //clear buffer

    sprintf(msgBuf, "PERIOD: %05u us", period); //display period
    CLCD_PutS(msgBuf);
    CLCD_SetPos(0, 0);
}