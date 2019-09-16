#include <string.h>

#include "main.h"
#include "i2c_master.h"
#include "uart.h"
#include "bme280.h"

struct bme280_dev dev;
struct bme280_data comp_data;
int8_t rslt;

char msg[32];

bool bme280_config(void);
int8_t user_i2c_read(uint8_t id, uint8_t reg_addr, uint8_t *data, uint16_t len);
int8_t user_i2c_write(uint8_t id, uint8_t reg_addr, uint8_t *data, uint16_t len);
void user_delay_ms(uint32_t period);

void main(void) {

    OSCCON = 0x72; //16MHz, Internal OSC

    ANSEL = 0x0; //disable analog input     
    ANSELH = 0x0;

    TRISBbits.RB0 = 0; //led output

    UART_Init(); //init uart    
    I2C_Init(); //init spi

    UART_puts("BME280 I2C TESTING...\r\n");

    if (!bme280_config()) { //configure BME280
        UART_puts("BME280 configuration failed...\r\n");
    }

    while (1) {

        rslt = bme280_set_sensor_mode(BME280_FORCED_MODE, &dev); /* set FORCED mode, turns into SLEEP mode after acquisition */
        dev.delay_ms(40);

        rslt = bme280_get_sensor_data(BME280_ALL, &comp_data, &dev); /* receive data */
        if (rslt == BME280_OK) {
            float temperature = comp_data.temperature / 100.0; /* °C  */
            float humidity = comp_data.humidity / 1024.0; /* %   */
            float pressure = comp_data.pressure / 10000.0; /* hPa */

            memset(msg, 0, sizeof (msg));
            sprintf(msg, "%03.1f C/%03.1f %%/%04.1f hPa\r\n", temperature, humidity, pressure);
            UART_puts(msg);
        }

        LATBbits.LATB0 = ~LATBbits.LATB0;
        __delay_ms(1000);
    }

    return;
}

bool bme280_config(void) {
    
    dev.dev_id = BME280_I2C_ADDR_PRIM; //device address
    dev.intf = BME280_I2C_INTF;
    dev.read = user_i2c_read; //set i2c read function
    dev.write = user_i2c_write; //set i2c write function
    dev.delay_ms = user_delay_ms; //set delay function

    rslt = bme280_init(&dev);
    if (rslt < 0) return false;
    
    dev.settings.osr_h = BME280_OVERSAMPLING_1X;
    dev.settings.osr_p = BME280_OVERSAMPLING_16X;
    dev.settings.osr_t = BME280_OVERSAMPLING_2X;
    dev.settings.filter = BME280_FILTER_COEFF_16;
    
    rslt = bme280_set_sensor_settings(BME280_OSR_PRESS_SEL | BME280_OSR_TEMP_SEL | BME280_OSR_HUM_SEL | BME280_FILTER_SEL, &dev); //temp + humidity + pressure
    if (rslt < 0) return false;

    return true;
}

//platform dependent i2c read function
int8_t user_i2c_read(uint8_t id, uint8_t reg_addr, uint8_t *data, uint16_t len) {
    if (!I2C_RxBuffer(id, reg_addr, data, len)) return -1;
    return 0;
}

//platform dependent i2c write function
int8_t user_i2c_write(uint8_t id, uint8_t reg_addr, uint8_t *data, uint16_t len) {
    if (!I2C_TxBuffer(id, reg_addr, data, len)) return -1;
    return 0;
}

//platform dependent delay function
void user_delay_ms(uint32_t period) {
    for (int i = 0; i < period; i++) {
        __delay_ms(1);
    }
}