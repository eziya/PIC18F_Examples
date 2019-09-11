//Reference: https://github.com/HausnerR/AVR-PCF8563

#include "pcf8563.h"
#include "i2c_master.h"

#define BinToBCD(bin) ((((bin) / 10) << 4) + ((bin) % 10))

bool PCF_Init(uint8_t mode) {
    uint8_t tmp = 0x0; //normal + run
    if (!I2C_TxBuffer(PCF8563_DEVICE_ADDR, PCF8563_REG_CONT_1, &tmp, 1)) return false;

    mode &= 0x13;
    if (!I2C_TxBuffer(PCF8563_DEVICE_ADDR, PCF8563_REG_CONT_2, &mode, 1)) return false;

    return true;
}

bool PCF_SetClockOut(uint8_t mode) {
    mode &= 0x83;
    if (!I2C_TxBuffer(PCF8563_DEVICE_ADDR, PCF8563_REG_CLKOUT, &mode, 1)) return false;

    return true;
}

bool PCF_SetTimer(uint8_t mode, uint8_t count) {
    mode &= 0x83;
    if (!I2C_TxBuffer(PCF8563_DEVICE_ADDR, PCF8563_REG_TIMER_CONT, &mode, 1)) return false;
    if (!I2C_TxBuffer(PCF8563_DEVICE_ADDR, PCF8563_REG_TIMER, &count, 1)) return false;

    return true;
}

uint8_t PCF_GetAndClearFlags() {
    uint8_t flags;
    if (!I2C_RxBuffer(PCF8563_DEVICE_ADDR, PCF8563_REG_CONT_2, &flags, 1)) return 0;

    uint8_t cleared = flags & 0x13;
    if (!I2C_TxBuffer(PCF8563_DEVICE_ADDR, PCF8563_REG_CONT_2, &cleared, 1)) return 0;

    return flags & 0x0C;
}

uint8_t PCF_GetTimer() {
    uint8_t count;
    if (!I2C_RxBuffer(PCF8563_DEVICE_ADDR, PCF8563_REG_TIMER, &count, 1)) return 0;

    return count;
}

bool PCF_SetAlarm(PCF_Alarm *alarm) {
    if ((alarm->minute >= 60 && alarm->minute != 80) || (alarm->hour >= 24 && alarm->hour != 80) ||
            (alarm->day > 32 && alarm->day != 80) || (alarm->weekday > 6 && alarm->weekday != 80)) {
        return false;
    }

    uint8_t buffer[4];

    buffer[0] = BinToBCD(alarm->minute) & 0xFF;
    buffer[1] = BinToBCD(alarm->hour) & 0xBF;
    buffer[2] = BinToBCD(alarm->day) & 0xBF;
    buffer[3] = BinToBCD(alarm->weekday) & 0x87;

    if (!I2C_TxBuffer(PCF8563_DEVICE_ADDR, PCF8563_REG_ALARM_MIN, buffer, sizeof (buffer))) return false;

    return true;
}

bool PCF_GetAlarm(PCF_Alarm *alarm) {
    uint8_t buffer[4];

    if (!I2C_RxBuffer(PCF8563_DEVICE_ADDR, PCF8563_REG_ALARM_MIN, buffer, sizeof (buffer))) return false;

    alarm->minute = (((buffer[0] >> 4) & 0x0F) * 10) + (buffer[0] & 0x0F);
    alarm->hour = (((buffer[1] >> 4) & 0x0B) * 10) + (buffer[1] & 0x0F);
    alarm->day = (((buffer[2] >> 4) & 0x0B) * 10) + (buffer[2] & 0x0F);
    alarm->weekday = (((buffer[3] >> 4) & 0x08) * 10) + (buffer[3] & 0x07);

    return true;
}

bool PCF_SetDateTime(PCF_DateTime *dateTime) {
    if (dateTime->second >= 60 || dateTime->minute >= 60 || dateTime->hour >= 24 || dateTime->day > 32 ||
            dateTime->weekday > 6 || dateTime->month > 12 || dateTime->year < 1900 || dateTime->year >= 2100) {
        return false;
    }

    uint8_t buffer[7];

    buffer[0] = BinToBCD(dateTime->second) & 0x7F;
    buffer[1] = BinToBCD(dateTime->minute) & 0x7F;
    buffer[2] = BinToBCD(dateTime->hour) & 0x3F;
    buffer[3] = BinToBCD(dateTime->day) & 0x3F;
    buffer[4] = BinToBCD(dateTime->weekday) & 0x07;
    buffer[5] = BinToBCD(dateTime->month) & 0x1F;

    if (dateTime->year >= 2000) {
        buffer[5] |= 0x80;
        buffer[6] = BinToBCD(dateTime->year - 2000);
    } else {
        buffer[6] = BinToBCD(dateTime->year - 1900);
    }

    if (!I2C_TxBuffer(PCF8563_DEVICE_ADDR, PCF8563_REG_SECS, buffer, sizeof (buffer))) return false;

    return true;
}

bool PCF_GetDateTime(PCF_DateTime *dateTime) {
    uint8_t buffer[7];

    if (!I2C_RxBuffer(PCF8563_DEVICE_ADDR, PCF8563_REG_SECS, buffer, sizeof (buffer))) return false;

    dateTime->second = (((buffer[0] >> 4) & 0x07) * 10) + (buffer[0] & 0x0F);
    dateTime->minute = (((buffer[1] >> 4) & 0x07) * 10) + (buffer[1] & 0x0F);
    dateTime->hour = (((buffer[2] >> 4) & 0x03) * 10) + (buffer[2] & 0x0F);
    dateTime->day = (((buffer[3] >> 4) & 0x03) * 10) + (buffer[3] & 0x0F);
    dateTime->weekday = (buffer[4] & 0x07);
    dateTime->month = ((buffer[5] >> 4) & 0x01) * 10 + (buffer[5] & 0x0F);
    dateTime->year = 1900 + ((buffer[6] >> 4) & 0x0F) * 10 + (buffer[6] & 0x0F);

    if (buffer[5] & 0x80) {
        dateTime->year += 100;
    }

    if (buffer[0] & 0x80) //Voltage Low bit: clock integrity not guaranted
    {
        return false;
    }

    return true;
}
