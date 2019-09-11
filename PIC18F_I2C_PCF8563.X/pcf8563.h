/* 
 * File:   pcf8563.h
 * Author: KIKI
 * Reference: https://github.com/HausnerR/AVR-PCF8563
 * Created on 2019년 9월 10일 (화), 오후 11:29
 */

#include "main.h"

#ifndef PCF8563_H
#define	PCF8563_H

#define PCF8563_DEVICE_ADDR				0x51

#define PCF8563_REG_CONT_1              0x00
#define PCF8563_REG_CONT_2              0x01
#define PCF8563_REG_SECS                0x02
#define PCF8563_REG_MINS                0x03
#define PCF8563_REG_HOURS               0x04
#define PCF8563_REG_DAYS                0x05
#define PCF8563_REG_WEEKDAYS            0x06
#define PCF8563_REG_MONTHS              0x07
#define PCF8563_REG_YEARS               0x08
#define PCF8563_REG_ALARM_MIN           0x09
#define PCF8563_REG_ALARM_HOUR          0x0A
#define PCF8563_REG_ALARM_DAY           0x0B
#define PCF8563_REG_ALARM_WEEKDAY       0x0C
#define PCF8563_REG_CLKOUT              0x0D
#define PCF8563_REG_TIMER_CONT          0x0E
#define PCF8563_REG_TIMER               0x0F

#define PCF_ALARM_FLAG					(1<<3)
#define PCF_TIMER_FLAG					(1<<2)
#define PCF_ALARM_INTERRUPT_ENABLE		(1<<1)
#define PCF_TIMER_INTERRUPT_ENABLE		(1<<0)

#define PCF_CLKOUT_32768HZ				0b10000000
#define PCF_CLKOUT_1024HZ				0b10000001
#define PCF_CLKOUT_32HZ					0b10000010
#define PCF_CLKOUT_1HZ					0b10000011
#define PCF_CLKOUT_DISABLED				0b00000000

#define PCF_TIMER_4096HZ				0b10000000
#define PCF_TIMER_64HZ					0b10000001
#define PCF_TIMER_1HZ					0b10000010
#define PCF_TIMER_1_60HZ				0b10000011
#define PCF_TIMER_DISABLED				0b00000011

#define PCF_DISABLE_ALARM				80

typedef struct {
    uint8_t minute;
    uint8_t hour;
    uint8_t day;
    uint8_t weekday;
} PCF_Alarm;

typedef struct {
    uint8_t second;
    uint8_t minute;
    uint8_t hour;
    uint8_t day;
    uint8_t weekday;
    uint8_t month;
    uint16_t year;
} PCF_DateTime;

bool PCF_Init(uint8_t mode);
bool PCF_SetClockOut(uint8_t mode);
bool PCF_SetTimer(uint8_t mode, uint8_t count);
uint8_t PCF_GetAndClearFlags(void);
uint8_t PCF_GetTimer(void);
bool PCF_SetAlarm(PCF_Alarm *alarm);
bool PCF_GetAlarm(PCF_Alarm *alarm);
bool PCF_SetDateTime(PCF_DateTime *dateTime);
bool PCF_GetDateTime(PCF_DateTime *dateTime);

#endif	/* PCF8563_H */

