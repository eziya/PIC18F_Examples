#include "main.h"

uint16_t TMR2Count = 0;

void __interrupt() ISR(void) {
    if (PIR1bits.TMR2IF) {
        //process
        TMR2Count++;
        
        if(TMR2Count >= 100)
        {   
            TMR2Count = 0;      //1ms * 100 times = 100ms
            LATBbits.LATB0 = ~LATBbits.LATB0;   //toggle led
        }        
        
        PIR1bits.TMR2IF = 0;
    }
}

void main(void) {

    OSCCON = 0x72;  //16MHz, Internal OSC

    ANSEL = 0x0;    //disable analog input     
    ANSELH = 0x0;

    TRISBbits.RB0 = 0;      //RB0 Output for LED
        
    T2CONbits.T2CKPS = 1;   // Prescaler 1:4
    T2CONbits.T2OUTPS = 3;  // Postscaler 1:4
            
    PIR1bits.TMR2IF = 0;    //clear TMR1F flag    
    PIE1bits.TMR2IE = 1;    //enable timer interrupt
    INTCONbits.PEIE = 1;    //enable peripheral interrupt
    INTCONbits.GIE = 1;     //enable global interrupt
    
    TMR2 = 0;               //Fosc/4/4/4 = 16MHz/64 = 250kHz = 4us
    PR2 = 250;              //4us * 250 = 1ms
    
    T2CONbits.TMR2ON = 1;

    while (1) {
        //LATBbits.LATB0 = ~LATBbits.LATB0; //main loop led0
        //__delay_ms(100);
    }

    return;
}
