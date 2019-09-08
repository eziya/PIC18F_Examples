#include "at45dbxx.h"
#include "spi_master.h"

void flash_wait_ready(void) {
    //wait ready bit 0x80
    while ((flash_read_status() & 0x80) == 0) {
        ClrWdt();
    }
}

uint8_t flash_read_status(void) {

    SPI_Select();
    SPI_Tx(0xD7); //read status register
    uint8_t status = SPI_Rx();
    SPI_Deselect();

    return status;
}

uint8_t flash_check_present(void) {

    uint8_t data = flash_read_status();
    //read density bit (0x3c) and check value 0x1c(4Mbit)
    if ((data & 0x3C) == 0x1C) return 1;
    else return 0;
}

void flash_erase_block(uint16_t block_id) {

    // max block id == 255
    if (block_id > 255) return;

    SPI_Select();
    SPI_Tx(0x50); //block erase
    SPI_Tx((uint8_t) (block_id >> 5));
    SPI_Tx((uint8_t) (block_id << 3));
    SPI_Tx(0x00);
    SPI_Deselect();

    //wait erase
    flash_wait_ready();
}

void flash_erase_all(void) {
    for (uint16_t block_id = 0; block_id < ((FLASH_END_ADDRESS + 1) / FLASH_BLOCK_SIZE); block_id++) {
        flash_erase_block(block_id);
    }
}

void flash_read_page(uint32_t address, uint8_t *buffer, size_t len) {

    SPI_Select();
    SPI_Tx(0xD2); //read main memory page 
    SPI_Tx((uint8_t) ((address >> 15) & 0xFF));
    SPI_Tx((uint8_t) ((address >> 7) & 0xFE));
    SPI_Tx(0x00); //dummy
    SPI_Tx(0x00);
    SPI_Tx(0x00);
    SPI_Tx(0x00);
    SPI_Tx(0x00);

    while (len > 0) {
        *buffer++ = SPI_Rx();
        len--;
    }
    SPI_Deselect();
}

void flash_write_page(uint32_t address, uint8_t *buffer, size_t len, uint8_t erase_first) {

    SPI_Select();
    SPI_Tx(0x84); //buffer1 write command
    SPI_Tx(0x00); //dummy
    SPI_Tx(0x00);
    SPI_Tx(0x00);

    while (len > 0) {
        SPI_Tx(*buffer++); //write to buffer
        len--;
    }
    SPI_Deselect();

    SPI_Select();
    if (erase_first) {
        SPI_Tx(0x83); //write buffer1 to page with built-in erase
    } else {
        SPI_Tx(0x88); //write buffer1 to page without built-in erase
    }
    SPI_Tx((uint8_t) ((address >> 15) & 0xff));
    SPI_Tx((uint8_t) ((address >> 7) & 0xfe));
    SPI_Tx(0x00);
    SPI_Deselect();

    flash_wait_ready();
}

uint8_t flash_test_memory(void) {
    uint16_t count;
    uint32_t dw_temp;
    uint8_t buffer[256];

    flash_erase_all();

    for (count = 0; count < 256; count++)
        buffer[count] = 0x00;

    //write
    for (dw_temp = 0; dw_temp <= FLASH_END_ADDRESS; dw_temp++) {
        ClrWdt();
        buffer[(dw_temp & 0xFF)] = (uint8_t) ((dw_temp & 0xFF) + ((dw_temp >> 8) & 0xFF));
        if ((dw_temp & 0xFF) == 0xff) flash_write_page(dw_temp, &buffer[0], sizeof (buffer), 0);
    }

    //read & validate
    for (dw_temp = 0; dw_temp <= FLASH_END_ADDRESS; dw_temp++) {
        ClrWdt();
        if ((dw_temp & 0xFF) == 0) flash_read_page(dw_temp, &buffer[0], sizeof (buffer));
        if (buffer[(dw_temp & 0xFF)] != (uint8_t) ((dw_temp & 0xFF) + ((dw_temp >> 8) & 0xFF))) {
            return 0;
        }
    }

    return 1;
}