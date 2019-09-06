/* 
 * File:   25LC010A.h
 * Author: KIKI
 *
 * Created on 2019년 9월 3일 (화), 오전 12:17
 */

#ifndef __25LC010A_H
#define	__25LC010A_H

#include "main.h"

#define EEPROM_CMD_WRITE	0x02
#define EEPROM_CMD_READ		0x03
#define EEPROM_CMD_RDSR		0x05
#define EEPROM_CMD_WREN		0x06

#define EEPROM_PAGE_SIZE	16
#define EEPROM_TOTAL_SIZE	128

void EEPROM_WriteEnable(void);
uint8_t EEPROM_Readuint8_t(uint8_t address);
void EEPROM_ReadBuffer(uint8_t address, uint8_t *buffer, uint8_t length);
void EEPROM_Writeuint8_t(uint8_t address, uint8_t data);
void EEPROM_WriteBuffer(uint8_t address, uint8_t *buffer, uint8_t length);
void EEPROdeviceinfo.eraseModeAll(void);

#endif	/* __25LC010A_H */

