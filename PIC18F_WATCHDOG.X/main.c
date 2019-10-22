#include "main.h"

void WDT_OnOff(uint8_t onoff);

void main(void) {

    OSCCON = 0x72;  //16MHz, Internal OSC

    ANSEL = 0x0;    //disable analog input     
    ANSELH = 0x0;
    
    TRISBbits.RB0 = 0; //led output
    TRISBbits.RB7 = 0; //led output
    TRISDbits.RD0 = 1; //button input to make infinite loop    
    
    LATBbits.LATB0 = 0; //turn off led0
    LATBbits.LATB7 = 0; //turn off led7
    
    if(RCONbits.TO == 0) //check watchdog reset flag
    {
        LATBbits.LATB7 = 1; //turn on led7 when watchdog reset occurs
        RCONbits.TO = 1; //clear reset flag
    }
    
    WDT_OnOff(1); //enable watchdog timer
  
    while (1) {
        
        if(PORTDbits.RD0 == 0) //button input
        {            
            while(1); //infinite loop to test watchdog timeout
        }
        
        LATBbits.LATB0 = ~LATBbits.LATB0; //toggle led0
        ClrWdt(); //clear watchdog timer
        __delay_ms(100); //delay        
    }

    return;
}

void WDT_OnOff(uint8_t onoff)
{
    WDTCONbits.SWDTEN = onoff;
}