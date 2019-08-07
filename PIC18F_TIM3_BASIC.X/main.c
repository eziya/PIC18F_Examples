#include "main.h"

uint16_t TMR3Count = 0;

void __interrupt() ISR(void) {
    if (PIR2bits.TMR3IF) {
        //process
        TMR3Count++;
        
        if(TMR3Count >= 2)
        {   
            TMR3Count = 0;      //50ms * 2 times = 100ms
            LATBbits.LATB0 = ~LATBbits.LATB0;   //toggle led
        }
        
        TMR3 = 15536;  //preloading 65536-15536 = 50ms
        PIR2bits.TMR3IF = 0;
    }
}

void main(void) {

    OSCCON = 0x72;  //16MHz, Internal OSC

    ANSEL = 0x0;    //disable analog input     
    ANSELH = 0x0;

    TRISBbits.RB0 = 0;      //RB0 Output for LED
    
    T3CONbits.RD16 = 1;     //16bit mode    
    T3CONbits.TMR3CS = 0;   //internal clock source, 16/4 = 4MHz
    T3CONbits.T3CKPS = 2;   //1:4, 1MHz = 1us
    
    PIR2bits.TMR3IF = 0;    //clear TMR3F flag    
    PIE2bits.TMR3IE = 1;    //enable timer interrupt
    INTCONbits.PEIE = 1;    //enable peripheral interrupt
    INTCONbits.GIE = 1;     //enable global interrupt
    
    TMR3 = 15536;  //preloading 65536-15536 = 50ms
    T3CONbits.TMR3ON = 1;

    while (1) {
        //LATBbits.LATB0 = ~LATBbits.LATB0; //main loop led0
        //__delay_ms(100);
    }

    return;
}
