/* 
 * File:   i2c_master.h
 * Author: KIKI
 *
 * Created on 2019년 9월 10일 (화), 오후 11:28
 */

#ifndef I2C_MASTER_H
#define	I2C_MASTER_H

#include "main.h"

#define I2C_SPEED   400000 //400kHz
#define I2C_WRITE	0x00 //write bit
#define I2C_READ	0x01 //read bit

void I2C_Init(void);
bool I2C_RxBuffer(uint8_t deviceAddr, uint8_t registerAddr, uint8_t *data, uint8_t length);
bool I2C_TxBuffer(uint8_t deviceAddr, uint8_t registerAddr, uint8_t *data, uint8_t length);

#endif	/* I2C_MASTER_H */

