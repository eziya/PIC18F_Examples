#include "main.h"

uint16_t TMR0Count = 0;

void __interrupt() ISR(void) {
    if (INTCONbits.TMR0IF) {
        //process
        TMR0Count++;
        
        if(TMR0Count >= 400)
        {   
            TMR0Count = 0;      //250us * 400 times = 100ms
            LATBbits.LATB0 = ~LATBbits.LATB0;   //toggle led
        }
        
        TMR0L = 6;  //preloading 256-6 = 250us
        INTCONbits.TMR0IF = 0;
    }
}

void main(void) {

    OSCCON = 0x72;  //16MHz, Internal OSC

    ANSEL = 0x0;    //disable analog input     
    ANSELH = 0x0;

    TRISBbits.RB0 = 0;  //RB0 Output for LED
    
    T0CONbits.T08BIT = 1;   //8bit mode
    T0CONbits.T0CS = 0;     //internal clock source, 16/4 = 4MHz
    T0CONbits.PSA = 0;      //enable prescaler
    T0CONbits.T0PS = 1;     //1:4, 1MHz = 1us   
    
    INTCONbits.TMR0IF = 0;  //clear RBIF flag    
    INTCONbits.TMR0IE = 1;  //enable timer interrupt
    INTCONbits.PEIE = 1;    //enable peripheral interrupt
    INTCONbits.GIE = 1;     //enable global interrupt
    
    TMR0L = 6;  //preloading (256 - 6 = 250us)
    T0CONbits.TMR0ON = 1;

    while (1) {
        //LATBbits.LATB0 = ~LATBbits.LATB0; //main loop led0
        //__delay_ms(100);
    }

    return;
}
