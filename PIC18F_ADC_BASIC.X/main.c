/*
 * File:   main.c
 * Author: KIKI
 *
 * Created on 2019년 7월 30일 (화), 오후 10:21
 */

#include "main.h"
#include "xlcd.h"

char msgBuffer[16];
uint16_t adcVal;

static void initADC(void);
static void startADC(void);

void __interrupt() ISR(void)
{
    if(PIR1bits.ADIF)
    {
        adcVal = (ADRESH << 8);
        adcVal |= ADRESL;       //read adc data
        
        PIR1bits.ADIF = 0;      //clear flag        
        
        ADCON0bits.GO_DONE = 1; //start conversion again 
    }
}

void main(void) {
     
    OSCCON = 0x72;          // 16MHz, Internal OSC
        
    CLCD_Initialize();      // enable clcd    
    initADC();              // config adc
    startADC();             // start adc
        
    while(1)
    {           
        sprintf(msgBuffer, "ADC VAL: %04u", adcVal);    //print adc result        
        CLCD_SetPos(0,0);
        CLCD_PutS(msgBuffer);     
        
        __delay_ms(100);
    }
}

static void initADC(void)
{    
    TRISAbits.RA0 = 1;          //RA0 input
    ANSELbits.ANS0 = 1;         //RA0 analog input
    
    ADCON2bits.ADFM = 1;        //right justified
        
    ADCON1 = 0x00;              //configure voltage reference           
    
    ADCON2bits.ADCS2 = 1;       //configure clock, Fosc/16 = 16MHz/16 = 1MHz, TAD 1us
    ADCON2bits.ADCS1 = 0;
    ADCON2bits.ADCS0 = 1;
        
    ADCON2bits.ACQT2 = 1;       //Tacq = 7.45us, 8 TAD Acquition time (refer to page 259)
    ADCON2bits.ACQT1 = 0;
    ADCON2bits.ACQT0 = 0;      
        
    PIR1bits.ADIF = 0;          //enable adc interrupt
    PIE1bits.ADIE = 1;
    INTCONbits.PEIE = 1;
    INTCONbits.GIE = 1;
}

static void startADC(void)
{       
    ADCON0 = 0x01;              //channel AN0, enable adc        
        
    /* no delay required when acquition time is set */
    //__delay_us(8);               
    
    ADCON0bits.GO_DONE = 1;    // start conversion
}