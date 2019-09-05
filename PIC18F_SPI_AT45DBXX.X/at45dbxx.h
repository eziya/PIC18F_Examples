/* 
 * File:   at45dbxx.h
 * Author: KIKI
 *
 * Created on 2019년 9월 5일 (목), 오후 11:34
 */

#ifndef AT45DBXX_H
#define	AT45DBXX_H

/** size definition */
#define DF_45DBXX_PAGESIZE     264
#define DF_45DBXX_BLOCKSIZE    (8 * DF_45DBXX_PAGESIZE)
#define DF_45DBXX_SECTORSIZE   (32 * DF_45DBXX_BLOCKSIZE)
#define DF_45DBXX_PAGES        2048
#define DF_45DBXX_BLOCKS       256
#define DF_45DBXX_SECTORS      8
#define DF_45DBXX_SIZE         (DF_45DBXX_PAGES * DF_45DBXX_PAGESIZE)
#define DF_45DBXX_S0A_PAGES    8

/* command definition */
#define DATAFLASH_PAGE_READ 0xD2
#define DATAFLASH_CONTINUOUS_READ_LOW_FREQ 0x03
#define DATAFLASH_CONTINUOUS_READ_HIGH_FREQ 0x0B
#define DATAFLASH_BUFFER_1_READ_LOW_FREQ 0xD1
#define DATAFLASH_BUFFER_2_READ_LOW_FREQ 0xD3
#define DATAFLASH_BUFFER_1_READ 0xD4
#define DATAFLASH_BUFFER_2_READ 0xD6

#define DATAFLASH_BUFFER_1_WRITE 0x84
#define DATAFLASH_BUFFER_2_WRITE 0x87
#define DATAFLASH_BUFFER_1_TO_PAGE_WITH_ERASE 0x83
#define DATAFLASH_BUFFER_2_TO_PAGE_WITH_ERASE 0x86
#define DATAFLASH_BUFFER_1_TO_PAGE_WITHOUT_ERASE 0x88
#define DATAFLASH_BUFFER_2_TO_PAGE_WITHOUT_ERASE 0x89
#define DATAFLASH_PAGE_ERASE 0x81
#define DATAFLASH_BLOCK_ERASE 0x50
#define DATAFLASH_SECTOR_ERASE 0x7C
#define DATAFLASH_CHIP_ERASE_0 0xC7
#define DATAFLASH_CHIP_ERASE_1 0x94
#define DATAFLASH_CHIP_ERASE_2 0x80
#define DATAFLASH_CHIP_ERASE_3 0x9A
#define DATAFLASH_PAGE_THROUGH_BUFFER_1 0x82
#define DATAFLASH_PAGE_THROUGH_BUFFER_2 0x85

#define DATAFLASH_ENABLE_SECTOR_PROTECTION_0 0x3D
#define DATAFLASH_ENABLE_SECTOR_PROTECTION_1 0x2A
#define DATAFLASH_ENABLE_SECTOR_PROTECTION_2 0x7F
#define DATAFLASH_ENABLE_SECTOR_PROTECTION_3 0xA9
#define DATAFLASH_DISABLE_SECTOR_PROTECTION_0 0x3D
#define DATAFLASH_DISABLE_SECTOR_PROTECTION_1 0x2A
#define DATAFLASH_DISABLE_SECTOR_PROTECTION_2 0x7F
#define DATAFLASH_DISABLE_SECTOR_PROTECTION_3 0x9A
#define DATAFLASH_ERASE_SECTOR_PROTECTION_REGISTER_0 0x3D
#define DATAFLASH_ERASE_SECTOR_PROTECTION_REGISTER_1 0x2A
#define DATAFLASH_ERASE_SECTOR_PROTECTION_REGISTER_2 0x7F
#define DATAFLASH_ERASE_SECTOR_PROTECTION_REGISTER_3 0xCF
#define DATAFLASH_PROGRAM_SECTOR_PROTECTION_REGISTER_0 0x3D
#define DATAFLASH_PROGRAM_SECTOR_PROTECTION_REGISTER_1 0x2A
#define DATAFLASH_PROGRAM_SECTOR_PROTECTION_REGISTER_2 0x7F
#define DATAFLASH_PROGRAM_SECTOR_PROTECTION_REGISTER_3 0xFC

#define DATAFLASH_READ_SECTOR_PROTECTION_REGISTER 0x32
#define DATAFLASH_READ_SECTOR_LOCKDOWN_REGISTER 0x35
#define DATAFLASH_READ_SECURITY_REGISTER 0x77

#define DATAFLASH_TRANSFER_PAGE_TO_BUFFER_1 0x53
#define DATAFLASH_TRANSFER_PAGE_TO_BUFFER_2 0x55
#define DATAFLASH_COMPARE_PAGE_TO_BUFFER_1 0x60
#define DATAFLASH_COMPARE_PAGE_TO_BUFFER_2 0x61
#define DATAFLASH_AUTO_PAGE_REWRITE_THROUGH_BUFFER_1 0x58
#define DATAFLASH_AUTO_PAGE_REWRITE_THROUGH_BUFFER_2 0x59
#define DATAFLASH_DEEP_POWER_DOWN 0xB9
#define DATAFLASH_RESUME_FROM_DEEP_POWER_DOWN 0xAB
#define DATAFLASH_STATUS_REGISTER_READ 0xD7
#define DATAFLASH_READ_MANUFACTURER_AND_DEVICE_ID 0x9F

#define DATAFLASH_BUFFER_1_READ_LEGACY 0X54
#define DATAFLASH_BUFFER_2_READ_LEGACY 0x56
#define DATAFLASH_PAGE_READ_LEGACY 0x52
#define DATAFLASH_CONTINUOUS_READ_LEGACY 0x68
#define DATAFLASH_STATUS_REGISTER_READ_LEGACY 0x57

/** pin definition */
#define AT45_SS_PIN     10
#define AT45_RESET_PIN  -1
#define AT45_WP_PIN     -1

/** value definitions */
#define AT45_READY 0x80
#define AT45_COMPARE 0x40
#define AT45_PROTECT 0x02
#define AT45_PAGESIZE_PWR2 0x01
#define AT45_SIZE_CODE 0x2C
#define AT45_SECTOR_0A -1
#define AT45_SECTOR_0B 0

enum erasemode {
    ERASE_AUTO,
    ERASE_MANUAL
};

typedef struct {
    uint8_t manufacturer;
    uint8_t device[2];
    uint8_t extendedInfoLength;
}_deviceinfo;
static const _deviceinfo deviceinfo;

typedef struct {
    uint8_t bufferSize;
    uint8_t pageSize;
    uint8_t sectorSize;
}_sizeinfo;
static const _sizeinfo sizeinfo[7];

int8_t m_chipSelectPin;
int8_t m_resetPin;
int8_t m_writeProtectPin;

uint8_t m_deviceIndex;
uint8_t m_bufferSize;
uint8_t m_pageSize;
uint8_t m_sectorSize;

enum erasemode m_erase;

#endif	/* AT45DBXX_H */

