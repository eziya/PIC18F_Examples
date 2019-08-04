/*
 * File:   main.c
 * Author: KIKI
 *
 * Created on 2019년 8월 3일 (토), 오후 3:30
 */

#include "main.h"

void __interrupt() ISR(void) {
    if (INTCONbits.RBIF) {
        
        if (PORTBbits.RB4) {
            LATBbits.LATB1 = 1; //led1 on
        } else {
            LATBbits.LATB1 = 0; //led1 off
        }

        if (PORTBbits.RB5) {
            LATBbits.LATB2 = 1; //led2 on
        } else {
            LATBbits.LATB2 = 0; //led2 off
        }

        INTCONbits.RBIF = 0;
    }
}

void main(void) {

    OSCCON = 0x72; //16MHz, Internal OSC

    ANSEL = 0x0; //disable analog input     
    ANSELH = 0x0;

    TRISBbits.RB0 = 0; //RB0 Output for LED
    TRISBbits.RB1 = 0; //RB1 Output for LED
    TRISBbits.RB2 = 0; //RB2 Output for LED

    IOCBbits.IOCB4 = 1; //RB4 IOC
    IOCBbits.IOCB5 = 1; //RB5 IOC

    INTCONbits.RBIF = 0; //clear RBIF flag

    INTCONbits.RBIE = 1; //enable RBI    
    INTCONbits.GIE = 1; //enable global interrupt

    while (1) {
        LATBbits.LATB0 = ~LATBbits.LATB0; //main loop led0
        __delay_ms(100);
    }

    return;
}
