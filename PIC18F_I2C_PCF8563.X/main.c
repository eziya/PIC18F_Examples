#include <string.h>

#include "main.h"
#include "uart.h"
#include "i2c_master.h"
#include "pcf8563.h"

PCF_DateTime pcftime;
PCF_Alarm pcfalarm;
char msg[32];

void PCF_SetTimeAlarm(void);

void main(void) {

    OSCCON = 0x72; //16MHz, Internal OSC

    ANSEL = 0x0; //disable analog input     
    ANSELH = 0x0;

    UART_Init(); //init uart
    I2C_Init(); //init spi
    
    UART_puts("PCF8563 I2C TESTING...\r\n");

    PCF_SetTimeAlarm(); //init rtc

    while (1) {

        PCF_GetDateTime(&pcftime); //get datetime
        sprintf(msg, "%04d-%02d-%02d %02d:%02d:%02d\r\n",
                pcftime.year, pcftime.month, pcftime.day,
                pcftime.hour, pcftime.minute, pcftime.second);
        UART_puts(msg);

        uint8_t flags = PCF_GetAndClearFlags(); //get alarm & timer flag

        if (flags & PCF_ALARM_FLAG) {
            UART_puts("PCF8563 ALARM FLAG!!!\r\n");
        }

        if (flags & PCF_TIMER_FLAG) {
            UART_puts("PCF8563 TIMER FLAG!!!\r\n");
        }

        __delay_ms(1000);
    }

    return;
}

void PCF_SetTimeAlarm(void) {
    //init pcf8563
    if (!PCF_Init(PCF_ALARM_INTERRUPT_ENABLE | PCF_TIMER_INTERRUPT_ENABLE)) {
        UART_puts("PCF8563 initialization failed...\r\n");
    }

    pcftime.second = 50;
    pcftime.minute = 12;
    pcftime.hour = 12;
    pcftime.day = 12;
    pcftime.weekday = 6;
    pcftime.month = 12;
    pcftime.year = 2012;

    //set datetime
    if (!PCF_SetDateTime(&pcftime)) {
        UART_puts("PCF8563 set datetime failed...\r\n");
    }

    pcfalarm.minute = 13;
    pcfalarm.hour = 12;
    pcfalarm.day = PCF_DISABLE_ALARM;
    pcfalarm.weekday = PCF_DISABLE_ALARM;
    
    //set alarm
    PCF_SetAlarm(&pcfalarm);
}
