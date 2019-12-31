#include "25LC010A.h"
#include "spi_master.h"

void EEPROM_WriteEnable(void) {
    SPI_Select();
    SPI_Tx(EEPROM_CMD_WREN);
    SPI_Deselect();
}

uint8_t EEPROM_Readuint8_t(uint8_t address) {
    uint8_t data;

    SPI_Select();
    SPI_Tx(EEPROM_CMD_READ);
    SPI_Tx(address);
    data = SPI_Rx();
    SPI_Deselect();

    return data;
}

void EEPROM_ReadBuffer(uint8_t address, uint8_t *buffer, uint8_t length) {
    for (uint8_t i = 0; i < length; i++) {
        buffer[i] = EEPROM_Readuint8_t(address + i);
    }
}

void EEPROM_Writeuint8_t(uint8_t address, uint8_t data) {
    EEPROM_WriteEnable();
    SPI_Select();
    SPI_Tx(EEPROM_CMD_WRITE);
    SPI_Tx(address);
    SPI_Tx(data);
    SPI_Deselect();
    __delay_ms(5); //write cycle interval
}

void EEPROM_WriteBuffer(uint8_t address, uint8_t *buffer, uint8_t length) {
    EEPROM_WriteEnable();

    SPI_Select();
    SPI_Tx(EEPROM_CMD_WRITE);
    SPI_Tx(address);

    for (uint8_t i = 0; i < length; i++) {
        if ((address + i) % EEPROM_PAGE_SIZE == 0 && i != 0) {
            SPI_Deselect();
            __delay_ms(5);

            EEPROM_WriteEnable();
            SPI_Select();
            SPI_Tx(EEPROM_CMD_WRITE);
            SPI_Tx(address + i);
        }
        SPI_Tx(buffer[i]);
    }

    SPI_Deselect();
    __delay_ms(5); //write cycle interval
}

void EEPROM_EraseAll(void) {
    uint8_t address = 0;

    EEPROM_WriteEnable();

    while (address < EEPROM_TOTAL_SIZE) {
        SPI_Select();
        SPI_Tx(EEPROM_CMD_WRITE);
        SPI_Tx(address);

        for (uint8_t i = 0; i < EEPROM_PAGE_SIZE; i++) {
            SPI_Tx(0);
        }

        SPI_Deselect();
        __delay_ms(5); //write cycle interval
        address += EEPROM_PAGE_SIZE;
    }
}
