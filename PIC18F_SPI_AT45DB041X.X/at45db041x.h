/* 
 * File:   at45dbxx.h
 * Author: KIKI
 * Created on 2019년 9월 5일 (목), 오후 11:34
 */

#ifndef AT45DBXX_H
#define	AT45DBXX_H

#include "main.h"

#define AT45DB041X_PAGE_SIZE		256
#define	AT45DB041X_MAX_BLOCK_NO		255
#define	AT45DB041X_MAX_PAGE_NO		2047

void set_page_size(void);
uint8_t flash_read_status(void);
void flash_wait_ready(void);
uint8_t flash_check_present(void);
void flash_erase_page(uint16_t page_id);
void flash_erase_block(uint8_t block_id);
void flash_erase_all(void);
void flash_read_page(uint16_t page_id, uint8_t *buffer, size_t len);
void flash_write_page(uint16_t page_id, uint8_t *buffer, size_t len, uint8_t erase_first);

#endif	/* AT45DBXX_H */