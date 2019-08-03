/*
 * File:   main.c
 * Author: KIKI
 *
 * Created on 2019년 8월 3일 (토), 오후 3:30
 */

#include "main.h"

void __interrupt(high_priority) highISR(void) {
    if (INTCONbits.INT0IF) {
        
        __delay_ms(200);    //debounce
        
        if (INTCONbits.INT0IF) {
            LATBbits.LATB6 = ~LATBbits.LATB6;       //led6 toggle
            INTCON3bits.INT1F = 0;                  //exit lowISR
        }

        INTCONbits.INT0IF = 0;
    }
}

void __interrupt(low_priority) lowISR(void) {
    if (INTCON3bits.INT1F) {
        
        __delay_ms(200);    //debounce

        if (INTCON3bits.INT1F) {
            
            while (INTCON3bits.INT1F) {             // stupid infinite loop to test interrupt priority
                LATBbits.LATB7 = ~LATBbits.LATB7;   //led7 toggle
                __delay_ms(100);
            }
        }
        //INTCON3bits.INT1F = 0;
    }
}

void main(void) {

    OSCCON = 0x72;      //16MHz, Internal OSC

    ANSEL = 0x0;        //disable analog input     
    ANSELH = 0x0;

    TRISBbits.RB5 = 0;  //RB5 Output for LED    
    TRISBbits.RB6 = 0;  //RB6 Output for LED
    TRISBbits.RB7 = 0;  //RB7 Output for LED

    INTCONbits.INT0IF = 0;  //clear INT0 flag
    INTCON3bits.INT1IF = 0; //clear INT1 flag

    INTCON2bits.INTEDG0 = 0; //falling edge
    INTCON2bits.INTEDG1 = 0; //falling edge

    RCONbits.IPEN = 1;      //enable priority
    INTCON3bits.INT1IP = 0; //low priority

    INTCONbits.INT0IE = 1;  //enable INT0
    INTCON3bits.INT1E = 1;  //enable INT1

    INTCONbits.GIEH = 1;    //enable global high
    INTCONbits.GIEL = 1;    //enable global low    

    while (1) {
        LATBbits.LATB5 = ~LATBbits.LATB5;       //main loop led5
        __delay_ms(100);
    }

    return;
}
