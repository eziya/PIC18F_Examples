#include "main.h"

uint16_t TMR1Count = 0;

void __interrupt() ISR(void) {
    if (PIR1bits.TMR1IF) {
        //process
        TMR1Count++;
        
        if(TMR1Count >= 2)
        {   
            TMR1Count = 0;      //50ms * 2 times = 100ms
            LATBbits.LATB0 = ~LATBbits.LATB0;   //toggle led
        }
        
        TMR1 = 15536;  //preloading 65536-15536 = 50ms
        PIR1bits.TMR1IF = 0;
    }
}

void main(void) {

    OSCCON = 0x72;  //16MHz, Internal OSC

    ANSEL = 0x0;    //disable analog input     
    ANSELH = 0x0;

    TRISBbits.RB0 = 0;      //RB0 Output for LED
    
    T1CONbits.RD16 = 1;     //16bit mode    
    T1CONbits.TMR1CS = 0;   //internal clock source, 16/4 = 4MHz
    T1CONbits.T1CKPS = 2;   //1:4, 1MHz = 1us
    
    PIR1bits.TMR1IF = 0;    //clear TMR1F flag    
    PIE1bits.TMR1IE = 1;    //enable timer interrupt
    INTCONbits.PEIE = 1;    //enable peripheral interrupt
    INTCONbits.GIE = 1;     //enable global interrupt
    
    TMR1 = 15536;  //preloading 65536-15536 = 50ms
    T1CONbits.TMR1ON = 1;

    while (1) {
        //LATBbits.LATB0 = ~LATBbits.LATB0; //main loop led0
        //__delay_ms(100);
    }

    return;
}
