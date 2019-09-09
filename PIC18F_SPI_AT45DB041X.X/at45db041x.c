#include "at45db041x.h"
#include "spi_master.h"

void set_page_size(void) {

    SPI_Select();
    SPI_Tx(0x3D); //binary page size 256 bytes
    SPI_Tx(0x2A);
    SPI_Tx(0x80);
    SPI_Tx(0xA6);
    SPI_Deselect();

    //wait configuration process
    flash_wait_ready();
}

uint8_t flash_read_status(void) {

    SPI_Select();
    SPI_Tx(0xD7); //read status register
    uint8_t status = SPI_Rx();
    SPI_Deselect();

    return status;
}

void flash_wait_ready(void) {
    //wait ready bit 0x80
    while ((flash_read_status() & 0x80) == 0) {
        ClrWdt();
    }
}

uint8_t flash_check_present(void) {

    uint8_t data = flash_read_status();
    //read density bit (0x3c) and check value 0x1c(4Mbit)
    if ((data & 0x3C) != 0x1C) return 0;

    //check page size(256 bytes)
    if ((data & 0x01) != 0x01) {
        set_page_size();

        //check one more time
        data = flash_read_status();
        if ((data & 0x01) != 0x01) {
            return 0;
        }
    }

    return 1;
}

void flash_erase_page(uint16_t page_no) {

    // max page no == 2047
    if (page_no > AT45DB041X_MAX_PAGE_NO) return;

    SPI_Select();
    SPI_Tx(0x81); //page erase
    SPI_Tx((uint8_t) (page_no >> 8) & 0x07); //5 dummy + 3 address bits
    SPI_Tx((uint8_t) (page_no) & 0xFF); //8 address bits
    SPI_Tx(0x00); //8 dummy bits
    SPI_Deselect();

    //wait erase
    flash_wait_ready();
}

void flash_erase_block(uint8_t block_no) {

    uint16_t page_no = (block_no << 3); //8 page = 1 block    

    SPI_Select();
    SPI_Tx(0x50); //block erase
    SPI_Tx((uint8_t) (page_no >> 8) & 0x07); //5 dummy + 3 address bits
    SPI_Tx((uint8_t) (page_no) & 0xFF); //8 address bits
    SPI_Tx(0x00); //8 dummy bits
    SPI_Deselect();

    //wait erase
    flash_wait_ready();
}

void flash_erase_all(void) {
    for (uint16_t block_no = 0; block_no <= AT45DB041X_MAX_BLOCK_NO; block_no++) {
        flash_erase_block(block_no);
    }
}

void flash_read_page(uint16_t page_no, uint8_t *buffer, size_t len) {

    // max page no = 2047 & max buffer size = 256
    if (page_no > AT45DB041X_MAX_PAGE_NO || len > AT45DB041X_PAGE_SIZE) return;

    SPI_Select();
    SPI_Tx(0xD2); //read main memory page
    SPI_Tx((uint8_t) (page_no >> 8) & 0x07); //5 dummy + 3 address bits
    SPI_Tx((uint8_t) (page_no) & 0xFF); //8 address bits
    SPI_Tx(0x00); //start address within page

    SPI_Tx(0x00); //4 dummy bytes to read
    SPI_Tx(0x00);
    SPI_Tx(0x00);
    SPI_Tx(0x00);

    while (len > 0) {
        *buffer++ = SPI_Rx();
        len--;
    }
    SPI_Deselect();
}

void flash_write_page(uint16_t page_no, uint8_t *buffer, size_t len, uint8_t erase_first) {

    // max page no = 2047 & max buffer size = 256
    if (page_no > AT45DB041X_MAX_PAGE_NO || len > AT45DB041X_PAGE_SIZE) return;

    SPI_Select();
    SPI_Tx(0x84); //buffer1 write command
    SPI_Tx(0x00); //8 dummy bit
    SPI_Tx(0x00); //8 dummy bit
    SPI_Tx(0x00); //8 buffer address

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
    SPI_Tx((uint8_t) (page_no >> 8) & 0x07); //5 dummy + 3 address bits
    SPI_Tx((uint8_t) (page_no) & 0xFF); //8 address bits
    SPI_Tx(0x00); //8 dummy bits
    SPI_Deselect();

    flash_wait_ready();
}
