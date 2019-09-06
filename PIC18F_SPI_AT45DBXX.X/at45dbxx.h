/* 
 * File:   at45dbxx.h
 * Author: KIKI
 *
 * Created on 2019년 9월 5일 (목), 오후 11:34
 */

#ifndef AT45DBXX_H
#define	AT45DBXX_H

#include "main.h"

#define	FLASH_END_ADDRESS			0x7FFFF         //256block = 0x7FFFF
#define	FLASH_BLOCK_SIZE			(2048)			//1block = 256byte * 8page

uint8_t flash_test_memory (void);
void flash_wait_ready(void);
uint8_t flash_read_status (void);
uint8_t flash_check_present (void);
void flash_erase_all (void);
void flash_read_page (uint32_t address, uint8_t *buffer, size_t len);
void flash_write_page (uint32_t address, uint8_t *buffer, size_t len, uint8_t erase_first);

#endif	/* AT45DBXX_H */

