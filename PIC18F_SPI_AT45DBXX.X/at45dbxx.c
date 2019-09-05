#include "at45dbxx.h"

/**
 * Enable device with chipselect.
 **/
inline void AT45DB_enable() {
    digitalWrite(m_chipSelectPin, LOW);
}

/**
 * Disable device with chipselect.
 **/
inline void AT45DB_disable() {
    digitalWrite(m_chipSelectPin, HIGH);
}

/** Get chip Select (CS) pin **/
inline int8_t AT45DB_chipSelectPin() const {
    return m_chipSelectPin;
}

/** Get reset (RESET) pin **/
inline int8_t AT45DB_resetPin() const {
    return m_resetPin;
}

/** Get write protect (WP) pin **/
inline int8_t AT45DB_writeProtectPin() const {
    return m_writeProtectPin;
}

/**
 * Compute page address high byte.
 */
inline uint8_t AT45DB_pageToHiU8(uint16_t page) const {
    return page >> (16 - m_bufferSize);
}

/**
 * Compute page address low byte.
 */
inline uint8_t AT45DB_pageToLoU8(uint16_t page) const {
    return page << (m_bufferSize - 8);
}

/**
 * Same as waitUntilReady
 * @todo This method will be removed.
 **/
inline void AT45DB_endAndWait() {
    /* Wait for the end of the previous operation. */
    waitUntilReady();
}


/* No need to put this into PROGMEM */
const AT45DB_AddressingInfos AT45DB_m_infos[7] ={
    { 9, 9, 2}, //  1
    { 9, 10, 3}, //  2
    { 9, 11, 3}, //  4
    { 9, 12, 4}, //  8
    { 10, 12, 4}, // 16
    { 10, 13, 6}, // 32
    { 11, 13, 5} // 64
};

/**
 * Constructor
 * This is not a good place to set the pins, because that causes hardware to be
 * initialised in the variable declaration part a long time before setup() is
 * called by the Arduino start-up code.
 * **/
AT45DB_DataFlash() {
}

/** Destructor **/
AT45DB_~DataFlash() {
}

/**
 * Set pin use, with defaults for reset and write-protect if not
 * specified as argument.
 * Set SPI transfer speed to "low" (can be changed with .speed() ).
 * @note This must be called the first time; afterwards .begin() can
 *       be called without arguments.
 * @param csPin Chip select (Slave select) pin.
 * @param resetPin Reset pin, optional (default none).
 * @param wpPin Write protect pin, optional (default none).
 * **/
void AT45DB_setup(int8_t csPin, int8_t resetPin, int8_t wpPin) {
    m_chipSelectPin = csPin;
    m_resetPin = resetPin;
    m_writeProtectPin = wpPin;

    pinMode(m_chipSelectPin, OUTPUT);
    if (m_resetPin >= 0) {
        pinMode(m_resetPin, OUTPUT);
        digitalWrite(m_resetPin, HIGH); // set inactive
    }
    if (m_writeProtectPin >= 0) {
        pinMode(m_writeProtectPin, OUTPUT);
        digitalWrite(m_writeProtectPin, HIGH); // set inactive
    }

    m_erase = ERASE_AUTO;
#ifdef AT45_USE_SPI_SPEED_CONTROL
    m_speed = SPEED_LOW;
#endif

    /* Setup SPI */
    SPI.setDataMode(SPI_MODE3);
    SPI.setBitOrder(MSBFIRST);
    SPI.setClockDivider(SPI_CLOCK_DIV2);

    /* Get DataFlash status register. */
    uint8_t stat;
    stat = status();

    /* Bit 3 of status register is ignored as it's always 1. Note that it is
     * equal to 0 on the obsolete chip with density higher than 64 MB. */
    m_deviceIndex = ((stat & 0x38) >> 3) - 1;
    /* If bit 0 is set, page size is set to 256 bytes, 264 otherwise. */
    m_bufferSize = m_infos[m_deviceIndex].bufferSize - (stat & 1);
    m_pageSize = m_infos[m_deviceIndex].pageSize;
    m_sectorSize = m_infos[m_deviceIndex].sectorSize;
}

/** 
 * Initialise SPI interface for use with the %Dataflash,
 * allowing shared use with other SPI devices (which must however use
 * a different chipselect pin).
 * **/
void AT45DB_begin() {
    // Clear pending SPI interrupts?
    // [todo] SPISEttings    
}

/**
 * Disable device and restore SPI configuration.
 **/
void AT45DB_end() {
    /* Disable device */
    disable();

    /* Don't call SPI.end() here to allow use of SPI interface with
    another chip. */
}

/**
 * Disable (deselect) %Dataflash, then enable (select) it again.
 **/
void AT45DB_reEnable() {
    disable();
    enable();
}

/**
 * Set erase mode to automatic (default).
 **/
void AT45DB_autoErase() {
    m_erase = ERASE_AUTO;
}

/**
 * Set erase mode to manual.
 * User must erase pages first, using one of the erase commands.
 **/
void AT45DB_manualErase() {
    m_erase = ERASE_MANUAL;
}

/**
 * Set transfer speed (33MHz = low, 66MHz = high).
 * Note: Arduino supports 20MHz max, so using "high" is actually slower
 * because additional bytes have to be transferred for no benefit.
 **/
#ifdef AT45_USE_SPI_SPEED_CONTROL

void AT45DB_setTransferSpeed(AT45DB_IOspeed rate) {
    m_speed = rate;
}

/**
 * Get transfer speed.
 **/
AT45DB_IOspeed AT45DB_getTransferSpeed() const {
    return m_speed;
}
#endif // AT45_USE_SPI_SPEED_CONTROL

/**
 * Return whether the chip has completed the current operation and is
 * ready for the next.
 * Note that in some situations read/write access to one of the buffers
 * is permitted although the chip is busy.
 **/
uint8_t AT45DB_isReady() {
    return status() & AT45_READY;
}

/**
 * Wait until the chip is ready.
 **/
void AT45DB_waitUntilReady() {
    /* Wait for the end of the transfer taking place. */
    while (!isReady()) {
    };
}

/** 
 * Read status register.
 * @return The content of the status register.
 * **/
uint8_t AT45DB_status() {
    uint8_t status;

    reEnable(); // Reset command decoder.

    /* Send status read command */
    SPI.transfer(DATAFLASH_STATUS_REGISTER_READ);
    /* Get result with a dummy write */
    status = SPI.transfer(0);

    disable();

    return status;
}

/** 
 * Read Manufacturer and Device ID.
 * @note If id.extendedInfoLength is not equal to zero,
 *       successive calls to SPI.transfer() return
 *       the extended device information bytes.
 * @param id ID structure.
 **/
void AT45DB_readID(struct AT45DB_ID &id) {
    reEnable(); // Reset command decoder.

    /* Send status read command */
    SPI.transfer(DATAFLASH_READ_MANUFACTURER_AND_DEVICE_ID);

    /* Manufacturer ID */
    id.manufacturer = SPI.transfer(0);
    /* Device ID (part 1) */
    id.device[0] = SPI.transfer(0);
    /* Device ID (part 2) */
    id.device[1] = SPI.transfer(0);
    /* Extended Device Information String Length */
    id.extendedInfoLength = SPI.transfer(0);

    disable();
}

/**
 * A main memory page read allows the user to read data directly from
 * any one of the pages in the main memory, bypassing both of the
 * data buffers and leaving the contents of the buffers unchanged.
 * Reading past the end of the page wraps around to the beginning of
 * the page.
 * The chip must remain enabled by this function; it is the user's
 * responsibility to disable the chip when finished reading.
 * @param page Page of the main memory to read.
 * @param offset Starting byte address within the page (default value: 0).
 **/
void AT45DB_pageRead(uint16_t page, uint16_t offset) {
    reEnable(); // Reset command decoder.

    /* Send opcode */
    SPI.transfer(DATAFLASH_PAGE_READ);

    /* Address (page | offset)  */
    SPI.transfer(pageToHiU8(page));
    SPI.transfer(pageToLoU8(page) | (uint8_t) (offset >> 8));
    SPI.transfer((uint8_t) (offset & 0xff));

    /* 4 "don't care" bytes */
    SPI.transfer(0);
    SPI.transfer(0);
    SPI.transfer(0);
    SPI.transfer(0);

    // Can't disable the chip here!
}

/**
 * Sequentially read a continuous stream of data at the currently set
 * speed. Reading past the end of the last page wraps around to the
 * beginning of the first page.
 * The chip must remain enabled by this function; it is the user's
 * responsibility to disable the chip when finished reading.
 * @param page Page of the main memory where the sequential read will
 * start.
 * @param offset Starting byte address within the page (default value: 0).
 * @note The legacy mode is not needed and not supported.
 **/
void AT45DB_arrayRead(uint16_t page, uint16_t offset) {
    reEnable(); // Reset command decoder.

    /* Send opcode */
#ifdef AT45_USE_SPI_SPEED_CONTROL
    SPI.transfer(m_speed == SPEED_LOW ? DATAFLASH_CONTINUOUS_READ_LOW_FREQ :
            DATAFLASH_CONTINUOUS_READ_HIGH_FREQ);
#else
    SPI.transfer(DATAFLASH_CONTINUOUS_READ_LOW_FREQ);
#endif

    /* Address (page | offset)  */
    SPI.transfer(pageToHiU8(page));
    SPI.transfer(pageToLoU8(page) | (uint8_t) (offset >> 8));
    SPI.transfer((uint8_t) (offset & 0xff));

#ifdef AT45_USE_SPI_SPEED_CONTROL
    /* High frequency continuous read has an additional don't care byte. */
    if (m_speed != SPEED_LOW) {
        SPI.transfer(0x00);
    }
#endif

    // Can't disable the chip here!
}

/**
 * Read the content of one of the SRAM data buffer at the currently
 * set speed. Reading past the end of the buffer wraps around to the
 * beginning.
 * The chip must remain enabled by this function; it is the user's
 * responsibility to disable the chip when finished reading.
 * @param bufferNum Buffer to read (0 or 1).
 * @param offset Starting byte within the buffer (default value: 0).
 **/
void AT45DB_bufferRead(uint8_t bufferNum, uint16_t offset) {
    /* Wait for the end of the previous operation. */
    waitUntilReady();

    reEnable(); // Reset command decoder.

    /* Send opcode */
#ifdef AT45_USE_SPI_SPEED_CONTROL
    if (bufferNum) {
        SPI.transfer((m_speed == SPEED_LOW) ? DATAFLASH_BUFFER_2_READ_LOW_FREQ :
                DATAFLASH_BUFFER_2_READ);
    } else {
        SPI.transfer((m_speed == SPEED_LOW) ? DATAFLASH_BUFFER_1_READ_LOW_FREQ :
                DATAFLASH_BUFFER_1_READ);

    }
#else
    SPI.transfer(bufferNum ? DATAFLASH_BUFFER_2_READ_LOW_FREQ :
            DATAFLASH_BUFFER_1_READ_LOW_FREQ);
#endif

    /* 14 "Don't care" bits */
    SPI.transfer(0x00);
    /* Rest of the "don't care" bits + bits 8,9 of the offset */
    SPI.transfer((uint8_t) (offset >> 8));
    /* bits 7-0 of the offset */
    SPI.transfer((uint8_t) (offset & 0xff));

#ifdef AT45_USE_SPI_SPEED_CONTROL
    /* High frequency buffer read has an additional don't care byte. */
    if (m_speed != SPEED_LOW) {
        SPI.transfer(0x00);
    }
#endif

    // Can't disable the chip here!
}

/**
 * Write data to one of the SRAM data buffers at the currently set
 * speed. Writing past the end of the buffer wraps around to the
 * beginning.
 * The chip must remain enabled by this function; it is the user's
 * responsibility to disable the chip when finished reading.
 * @param bufferNum Buffer to read (0 or 1).
 * @param offset Starting byte within the buffer (default value: 0).
 **/
void AT45DB_bufferWrite(uint8_t bufferNum, uint16_t offset) {
    /* Wait for the end of the previous operation. */
    waitUntilReady();

    reEnable(); // Reset command decoder.

    SPI.transfer(bufferNum ? DATAFLASH_BUFFER_2_WRITE :
            DATAFLASH_BUFFER_1_WRITE);

    /* 14 "Don't care" bits */
    SPI.transfer(0x00);
    /* Rest of the "don't care" bits + bits 8,9 of the offset */
    SPI.transfer((uint8_t) (offset >> 8));
    /* bits 7-0 of the offset */
    SPI.transfer((uint8_t) (offset & 0xff));

    // Can't disable the chip here!
}

/**
 * Transfer data from buffer 0 or 1 to a main memory page, erasing the
 * page first if auto-erase is set. If erase is manual, the page must
 * have been erased previously using one of the erase commands.
 * @param bufferNum Buffer to use (0 or 1).
 * @param page Page to which the content of the buffer is written.
 **/
void AT45DB_bufferToPage(uint8_t bufferNum, uint16_t page) {
    /* Wait for the end of the previous operation. */
    waitUntilReady();

    reEnable();

    /* Opcode */
    if (m_erase == ERASE_AUTO) {
        SPI.transfer(bufferNum ? DATAFLASH_BUFFER_2_TO_PAGE_WITH_ERASE :
                DATAFLASH_BUFFER_1_TO_PAGE_WITH_ERASE);
    } else {
        SPI.transfer(bufferNum ? DATAFLASH_BUFFER_2_TO_PAGE_WITHOUT_ERASE :
                DATAFLASH_BUFFER_1_TO_PAGE_WITHOUT_ERASE);
    }

    /* see pageToBuffer */
    SPI.transfer(pageToHiU8(page));
    SPI.transfer(pageToLoU8(page));
    SPI.transfer(0x00);

    /* Start transfer. If erase was set to automatic, the page will first be
    erased. The chip remains busy until this operation finishes. */
    disable();
}

/**
 * Transfer a page of data from main memory to buffer 0 or 1.
 * @param page Main memory page to transfer.
 * @param bufferNum Buffer (0 or 1) to which the data is written.
 **/
void AT45DB_pageToBuffer(uint16_t page, uint8_t bufferNum) {
    /* Wait for the end of the previous operation. */
    waitUntilReady();

    reEnable();

    /* Send opcode */
    SPI.transfer(bufferNum ? DATAFLASH_TRANSFER_PAGE_TO_BUFFER_2 :
            DATAFLASH_TRANSFER_PAGE_TO_BUFFER_1);

    /* Output the 3 bytes adress.
     * For all DataFlashes 011D to 642D the number of trailing don't care bits
     * is equal to the number of page bits plus 3 (a block consists of 8 (1<<3)
     * pages), and always larger than 8 so the third byte is always 0. */
    SPI.transfer(pageToHiU8(page));
    SPI.transfer(pageToLoU8(page));
    SPI.transfer(0);

    /* Start transfer. The chip remains busy until this operation finishes. */
    disable();
}

/** 
 * Erase a page in the main memory array.
 * @param page Page to erase.
 **/
void AT45DB_pageErase(uint16_t page) {
    /* Wait for the end of the previous operation. */
    waitUntilReady();

    reEnable();

    /* Send opcode */
    SPI.transfer(DATAFLASH_PAGE_ERASE);

    /* see pageToBuffer */
    SPI.transfer(pageToHiU8(page));
    SPI.transfer(pageToLoU8(page));
    SPI.transfer(0x00);

    /* Start page erase. The chip remains busy until this operation finishes. */
    disable();
}

/**
 * Erase a block of pages in a single operation.
 * @param block Block to erase.
 * @warning UNTESTED
 **/
void AT45DB_blockErase(uint16_t block) {
    /* Wait for the end of the previous operation. */
    waitUntilReady();

    reEnable();

    /* Send opcode */
    SPI.transfer(DATAFLASH_BLOCK_ERASE);

    /* Output the 3 bytes adress.
     * For all DataFlashes 011D to 642D the number of trailing don't care bits
     * is equal to the number of page bits plus 3 (a block consists of 8 (1<<3)
     * pages), and always larger than 8 so the third byte is always 0. */
    uint8_t rightShift = m_bufferSize + 3 - 8;
    block >>= rightShift;
    SPI.transfer(highByte(block));
    SPI.transfer(lowByte(block));
    SPI.transfer(0x00);

    /* Start block erase.
    The chip remains busy until this operation finishes. */
    disable();
}

/** 
 * Erase a sector of blocks in a single operation.
 * @param sector Sector to erase.
 **/
void AT45DB_sectorErase(int8_t sector) {
    /* Wait for the end of the previous operation. */
    waitUntilReady();

    reEnable();

    /* Send opcode */
    SPI.transfer(DATAFLASH_SECTOR_ERASE);

    if ((sector == AT45_SECTOR_0A) || (sector == AT45_SECTOR_0B)) {
        SPI.transfer(0x00);
        SPI.transfer((static_cast<uint8_t>(-sector) & 0x01) << (m_bufferSize - 5));
    } else {
        uint8_t shift = m_bufferSize + m_pageSize - m_sectorSize - 16;
        SPI.transfer(sector << shift);
        SPI.transfer(0x00);
    }

    SPI.transfer(0x00);

    /* Start sector erase.
    The chip remains busy until this operation finishes. */
    disable();
}

#ifdef AT45_CHIP_ERASE_ENABLED

/** 
 * Erase the entire chip memory. Sectors protected or locked down will
 * not be erased.
 * @warning UNTESTED
 **/
void AT45DB_chipErase() {
    uint8_t sectorCount = 1 << m_sectorSize;

    sectorErase(AT45_SECTOR_0A);
    sectorErase(AT45_SECTOR_0B);
    for (uint8_t i = 1; i < sectorCount; i++) {
        sectorErase(i);
    }

#if 0
    /* DO NOT USE THIS CODE!       */
    /* MAY DAMAGE CHIP.            */
    /* READ DATASHEET FOR DETAILS. */

    /* Wait for the end of the previous operation. */
    waitUntilReady();

    enable();

    /* Send chip erase sequence */
    SPI.transfer(DATAFLASH_CHIP_ERASE_0);
    SPI.transfer(DATAFLASH_CHIP_ERASE_1);
    SPI.transfer(DATAFLASH_CHIP_ERASE_2);
    SPI.transfer(DATAFLASH_CHIP_ERASE_3);

    /* Start chip erase.
    The chip remains busy until this operation finishes. */
    disable();
#else
    (void) sector;
#endif
}
#endif // AT45_CHIP_ERASE_ENABLED

/**
 * This a combination of Buffer Write and Buffer to Page with
 * Built-in Erase.
 * The global erase flag .manual_erase() is ignored.
 * Writing past the end of the page wraps around to the beginning of
 * the page.
 * @note You must call endAndWait in order to start transferring data
 * from buffer to page.
 * @param page Page to which the content of the buffer is written.
 * @param offset Starting byte address within the buffer.
 * @param bufferNum Buffer to use (0 or 1).
 **/
void AT45DB_beginPageWriteThroughBuffer(
        uint16_t page, uint16_t offset, uint8_t bufferNum) {
    reEnable(); // Reset command decoder.

    /* Send opcode */
    SPI.transfer(bufferNum ? DATAFLASH_PAGE_THROUGH_BUFFER_2 :
            DATAFLASH_PAGE_THROUGH_BUFFER_1);

    /* Address */
    SPI.transfer(pageToHiU8(page));
    SPI.transfer(pageToLoU8(page) | (uint8_t) (offset >> 8));
    SPI.transfer((uint8_t) (offset & 0xff));
}

/**
 * Compare a page of data in main memory to the data in buffer 0 or 1.
 * @param page Page to compare.
 * @param bufferNum Buffer number (0 or 1).
 * @return
 *      - true  If the page and the buffer contains the same data.
 *      - false Otherwise.
 **/
int8_t AT45DB_isPageEqualBuffer(uint16_t page, uint8_t bufferNum) {
    reEnable(); // Reset command decoder.

    /* Send opcode */
    SPI.transfer(bufferNum ? DATAFLASH_COMPARE_PAGE_TO_BUFFER_2 :
            DATAFLASH_COMPARE_PAGE_TO_BUFFER_1);

    /* Page address */
    SPI.transfer(pageToHiU8(page));
    SPI.transfer(pageToLoU8(page));
    SPI.transfer(0x00);

    disable(); /* Start comparison */

    /* Wait for the end of the comparison. */
    waitUntilReady();

    /* If bit 6 of the status register is 0 then the data in the
     * main memory page matches the data in the buffer. 
     * If it's 1 then the data in the main memory page doesn't match.
     */
    return ((status() & AT45_COMPARE) == 0);
}

/**
 * Put the device into the lowest power consumption mode.
 * Once the device has entered the Deep Power-down mode, all
 * instructions are ignored except the Resume from Deep
 * Power-down command.
 * @warning UNTESTED
 **/
void AT45DB_deepPowerDown() {
    reEnable(); // Reset command decoder.

    /* Send opcode */
    SPI.transfer(DATAFLASH_DEEP_POWER_DOWN);

    /* Enter Deep Power-Down mode */
    disable();
}

/**
 * Takes the device out of Deep Power-down mode.
 **/
void AT45DB_resumeFromDeepPowerDown() {
    reEnable(); // Reset command decoder.

    /* Send opcode */
    SPI.transfer(DATAFLASH_RESUME_FROM_DEEP_POWER_DOWN);

    /* Resume device */
    disable();

    /* The CS pin must stay high during t_RDPD microseconds before the device
     * can receive any commands.
     * On the at45db161D t_RDPD = 35 microseconds.
     * Wait 40us (just to be sure). */
    delayMicroseconds(40);
}

/**
 * Reset device via the reset pin.
 * If no reset pint was specified (with begin()), this does nothing.
 **/
void AT45DB_hardReset() {
    if (m_resetPin >= 0) {
        digitalWrite(m_resetPin, LOW);

        /* The reset pin should stay low for at least 10us (table 18.4). */
        delayMicroseconds(10);

        /* According to the Dataflash spec (21.6 Reset Timing),
         * the CS pin should be in high state before RESET
         * is deasserted (ie HIGH). */
        disable();
        /* Just to be sure that the high state is reached */
        delayMicroseconds(1);

        digitalWrite(m_resetPin, HIGH);

        /* Reset recovery time = 1us */
        delayMicroseconds(1);
    }
}

void AT45DB_enableSectorProtection() {
    waitUntilReady();
    if (m_writeProtectPin >= 0)
        digitalWrite(m_writeProtectPin, HIGH);
    reEnable();

    SPI.transfer(DATAFLASH_ENABLE_SECTOR_PROTECTION_0);
    SPI.transfer(DATAFLASH_ENABLE_SECTOR_PROTECTION_1);
    SPI.transfer(DATAFLASH_ENABLE_SECTOR_PROTECTION_2);
    SPI.transfer(DATAFLASH_ENABLE_SECTOR_PROTECTION_3);

    disable();
    if (m_writeProtectPin >= 0)
        digitalWrite(m_writeProtectPin, LOW);
}

void AT45DB_disableSectorProtection() {
    waitUntilReady();
    if (m_writeProtectPin >= 0)
        digitalWrite(m_writeProtectPin, HIGH);
    reEnable();

    SPI.transfer(DATAFLASH_DISABLE_SECTOR_PROTECTION_0);
    SPI.transfer(DATAFLASH_DISABLE_SECTOR_PROTECTION_1);
    SPI.transfer(DATAFLASH_DISABLE_SECTOR_PROTECTION_2);
    SPI.transfer(DATAFLASH_DISABLE_SECTOR_PROTECTION_3);

    disable();
}

void AT45DB_eraseSectorProtectionRegister() {
    waitUntilReady();
    if (m_writeProtectPin >= 0)
        digitalWrite(m_writeProtectPin, HIGH);
    reEnable();

    SPI.transfer(DATAFLASH_ERASE_SECTOR_PROTECTION_REGISTER_0);
    SPI.transfer(DATAFLASH_ERASE_SECTOR_PROTECTION_REGISTER_1);
    SPI.transfer(DATAFLASH_ERASE_SECTOR_PROTECTION_REGISTER_2);
    SPI.transfer(DATAFLASH_ERASE_SECTOR_PROTECTION_REGISTER_3);

    disable();

    waitUntilReady();
    if (m_writeProtectPin >= 0)
        digitalWrite(m_writeProtectPin, LOW);
}

uint8_t AT45DB_programSectorProtectionRegister(const AT45DB_SectorProtectionStatus& status) {
    uint8_t sectorCount = 1 << m_sectorSize;
    eraseSectorProtectionRegister();

    if (m_writeProtectPin >= 0)
        digitalWrite(m_writeProtectPin, HIGH);
    reEnable();

    SPI.transfer(DATAFLASH_PROGRAM_SECTOR_PROTECTION_REGISTER_0);
    SPI.transfer(DATAFLASH_PROGRAM_SECTOR_PROTECTION_REGISTER_1);
    SPI.transfer(DATAFLASH_PROGRAM_SECTOR_PROTECTION_REGISTER_2);
    SPI.transfer(DATAFLASH_PROGRAM_SECTOR_PROTECTION_REGISTER_3);

    for (uint8_t i = 0; i < sectorCount; i++) {
        SPI.transfer(status.data[i]);
    }

    disable();
    waitUntilReady();
    if (m_writeProtectPin >= 0)
        digitalWrite(m_writeProtectPin, LOW);

    return sectorCount;
}

uint8_t AT45DB_readSectorProtectionRegister(AT45DB_SectorProtectionStatus& status) {
    uint8_t sectorCount = 1 << m_sectorSize;

    waitUntilReady();
    reEnable();

    SPI.transfer(DATAFLASH_READ_SECTOR_PROTECTION_REGISTER);
    SPI.transfer(0xff);
    SPI.transfer(0xff);
    SPI.transfer(0xff);

    for (uint8_t i = 0; i < sectorCount; i++) {
        status.data[i] = SPI.transfer(0);
    }

    disable();

    return sectorCount;
}

AT45DB_SectorProtectionStatus::SectorProtectionStatus() {
    clear();
}

AT45DB_SectorProtectionStatus::SectorProtectionStatus(const AT45DB_SectorProtectionStatus &status) {
    for (uint8_t i = 0; i < 64; i++) {
        data[i] = status.data[i];
    }
}
AT45DB_SectorProtectionStatus& AT45DB_SectorProtectionStatus::operator = (const AT45DB_SectorProtectionStatus& status){
    for (uint8_t i = 0; i < 64; i++) {
        data[i] = status.data[i];
    }
    return *this;
}

void AT45DB_SectorProtectionStatus::set(int8_t sectorId, bool status) {
    if (sectorId == AT45_SECTOR_0A) {
        data[0] = (data[0] & 0x3f) | (status ? 0xc0 : 0x00);
    } else if (sectorId == AT45_SECTOR_0B) {
        data[0] = (data[0] & 0xcf) | (status ? 0x30 : 0x00);
    } else if ((sectorId > 0) && (sectorId < 64)) {
        data[sectorId] = status ? 0xff : 0x00;
    }
}

bool AT45DB_SectorProtectionStatus::get(int8_t sectorId) const {
    if (sectorId == AT45_SECTOR_0A) {
        return (data[0] & 0xc0) ? true : false;
    } else if (sectorId == AT45_SECTOR_0B) {
        return (data[0] & 0x30) ? true : false;
    } else if ((sectorId > 0) && (sectorId < 64)) {
        return data[sectorId] ? true : false;
    }
    return false;
}

void AT45DB_SectorProtectionStatus::clear() {
    for (uint8_t i = 0; i < 64; i++) {
        data[i] = 0;
    }
}