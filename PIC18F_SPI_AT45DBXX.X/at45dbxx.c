#include "at45dbxx.h"
#include "spi_master.h"

uint8_t flash_test_memory(void) {
    uint16_t count;
    uint32_t dw_temp;
    uint8_t buffer[256];
    //----- ERASE ALL FLASH -----
    flash_erase_all();

    for (count = 0; count < 256; count++)
        buffer[count] = 0x00;

    //----- WRITE ENTIRE MEMORY SPACE -----
    for (dw_temp = 0; dw_temp <= FLASH_END_ADDRESS; dw_temp++) {
        ClrWdt(); //Clear our watchdog timer as this may take several seconds

        buffer[(dw_temp & 0xFF)] = (uint8_t) ((dw_temp & 0xFF) + ((dw_temp >> 8) & 0xFF)); //Write each byte within a page with a unique value and for page use an incrementing offset so that pages are not all the same

        if ((dw_temp & 0xFF) == 0xff)
            flash_write_page(dw_temp, &buffer[0], sizeof(buffer), 0);
    }

    //----- READ AND VERIFY ENTIRE MEMORY SPACE -----
    for (dw_temp = 0; dw_temp <= FLASH_END_ADDRESS; dw_temp++) {
        ClrWdt(); //Clear our watchdog timer as this may take several seconds

        if ((dw_temp & 0xFF) == 0)
            flash_read_page(dw_temp, &buffer[0], sizeof(buffer));

        if (buffer[(dw_temp & 0xFF)] != (uint8_t) ((dw_temp & 0xFF) + ((dw_temp >> 8) & 0xFF))) {
            //----- FAILED -----
            return (0);
        }
    }
    //----- SUCCESS -----
    return (1);
}

void flash_wait_ready(void) {
    while ((flash_read_status() & 0x80) == 0) {
        ClrWdt();
    }
}

uint8_t flash_read_status(void) {
    uint8_t status;

    SPI_Select();

    SPI_Tx(0xD7); //status register
    status = SPI_Rx();

    SPI_Deselect();
    return (status);
}

uint8_t flash_check_present(void) {
    uint8_t data;
    data = flash_read_status();

    if ((data & 0x3c) == 0x1c)
        return (1);
    else
        return (0);
}

void flash_erase_all(void) {
    uint16_t block_id;

    for (block_id = 0; block_id < ((FLASH_END_ADDRESS + 1) / FLASH_BLOCK_SIZE); block_id++) {
        SPI_Select();

        SPI_Tx(0x50); //block erase
        SPI_Tx((uint8_t) (block_id >> 4));
        SPI_Tx((uint8_t) ((block_id & 0x0f) << 4));
        SPI_Tx(0x00);

        SPI_Deselect();
        flash_wait_ready();
    }
}

void flash_read_page(uint32_t address, uint8_t *buffer, size_t len) {

    SPI_Select();

    SPI_Tx(0xd2); //read page    
    SPI_Tx((uint8_t) ((address >> 15) & 0xff));
    SPI_Tx((uint8_t) ((address >> 7) & 0xfe));
    SPI_Tx(0x00);

    SPI_Tx(0x00); //32 don't care bits
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
    SPI_Tx(0x00);
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