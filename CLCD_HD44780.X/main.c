/*
 * File:   main.c
 * Author: KIKI
 *
 * Created on 2019년 7월 28일 (일), 오전 1:29
 */

#include "main.h"
#include "xlcd.h"

void main(void) {
    /* 16MHz, Internal OSC */
    OSCCON = 0x72;

    /* Disable Analog Input */
    ANSEL = 0x0;
    ANSELH = 0x0;     
    
    CLCD_Initialize();
    CLCD_PutS("Hello World!!!");
    CLCD_SetPos(1,0);
#ifdef BIT8_MODE
    CLCD_PutS("#LCD 8BIT#");
#else
    CLCD_PutS("#LCD 4BIT#");
#endif
    while(1)
    {
        
    }
    
    return;
}

