/* 
 * File:   uart.h
 * Author: KIKI
 *
 * Created on 2019년 9월 3일 (화), 오후 9:57
 */

#ifndef UART_H
#define	UART_H

#include "main.h"

void UART_Init(void);
void UART_putch(uint8_t ch);
void UART_puts(char *str);
uint8_t UART_getch(void);
void UART_gets(char* str, uint16_t len);

#endif	/* UART_H */

