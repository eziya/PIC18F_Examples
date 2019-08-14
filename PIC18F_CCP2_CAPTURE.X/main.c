#include "main.h"
#include "xlcd.h"

char msgBuf[16];

volatile uint16_t oldCCPR2, nowCCPR2, period;
volatile uint8_t TMR1Count;
volatile uint8_t lcdFlag;

void CCP2_InitCapture();
void printLCD();

void __interrupt() ISR(void) {

    if (PIR2bits.CCP2IF) {
        nowCCPR2 = CCPR2;

        if (oldCCPR2 >= nowCCPR2) {
            period = (65535 - oldCCPR2) + nowCCPR2;
        } else {
            period = nowCCPR2 - oldCCPR2; //calculate period between two rising edge
        }

        oldCCPR2 = nowCCPR2;
        PIR2bits.CCP2IF = 0;
    }
}

void main(void) {

    OSCCON = 0x72; //16MHz, Internal OSC

    ANSEL = 0x0; //disable analog input     
    ANSELH = 0x0;

    CLCD_Initialize();
    CCP2_InitCapture();

    while (1) {        
        printLCD();
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