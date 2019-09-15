#include "i2c_master.h"

static bool I2C_Start(void);
static bool I2C_Restart(void);
static bool I2C_Stop(void);
static bool I2C_Tx(uint8_t data);
static bool I2C_Rx(uint8_t *data, uint8_t ack);

void I2C_Init(void) {
    TRISCbits.RC3 = 1; //input
    TRISCbits.RC4 = 1;

    SSPADD = (_XTAL_FREQ / (4 * I2C_SPEED)) - 1; //

    SSPSTAT = 0; //clear status
    PIR1bits.SSPIF = 0; //clear flag       
    PIR2bits.BCLIF = 0; //clear flag

    SSPCON1bits.SSPM = 8; //master mode
    SSPCON1bits.SSPEN = 1; //enable i2c
}

bool I2C_RxBuffer(uint8_t deviceAddr, uint8_t registerAddr, uint8_t *data, uint8_t length) {
    if (!I2C_Start()) return false; //start condition	
    if (!I2C_Tx((deviceAddr << 1) | I2C_WRITE)) return false; //device address		
    if (!I2C_Tx(registerAddr)) return false; //register address

    if (!I2C_Restart()) return false; //repeated start condition to read
    if (!I2C_Tx((deviceAddr << 1) | I2C_READ)) return false; //device address

    //receive data	
    for (uint8_t i = 0; i < length; i++) {
        if (i < length - 1) {
            if (!I2C_Rx(data + i, 0)) return false;
        } else {
            if (!I2C_Rx(data + i, 1)) return false;
        }
    }

    if (!I2C_Stop()) return false; //stop condition

    return true;
}

bool I2C_TxBuffer(uint8_t deviceAddr, uint8_t registerAddr, uint8_t *data, uint8_t length) {
    if (!I2C_Start()) return false; //start condition		
    if (!I2C_Tx((deviceAddr << 1) | I2C_WRITE)) return false; //device address		
    if (!I2C_Tx(registerAddr)) return false; //register address

    //transmit data
    for (uint8_t i = 0; i < length; i++) {
        if (!I2C_Tx(*(data + i))) return false;
    }

    if (!I2C_Stop()) return false; //stop condition

    return true;
}

static bool I2C_Start(void) {
    PIR1bits.SSPIF = 0; //clear flag       
    while (SSPSTATbits.BF); //wait buffer empty
    SSPCON2bits.SEN = 1; //start condition
    while (!PIR1bits.SSPIF) //wait start condition
    {
        //check bus collision
        if (PIR2bits.BCLIF) {
            PIR2bits.BCLIF = 0; //clear flag
            return false;
        }
    };
    PIR1bits.SSPIF = 0;
    return true;
}

static bool I2C_Restart(void) {
    PIR1bits.SSPIF = 0; //clear flag       
    while (SSPSTATbits.BF); //wait buffer empty
    SSPCON2bits.RSEN = 1; //repeated start condition
    while (!PIR1bits.SSPIF) //wait start condition
    {
        //check bus collision
        if (PIR2bits.BCLIF) {
            PIR2bits.BCLIF = 0; //clear flag
            return false;
        }
    };
    PIR1bits.SSPIF = 0;
    return true;
}

static bool I2C_Stop(void) {
    PIR1bits.SSPIF = 0; //clear flag       
    while (SSPSTATbits.BF); //wait buffer empty
    SSPCON2bits.PEN = 1; //stop condition
    while (!PIR1bits.SSPIF) //wait start condition
    {
        //check bus collision
        if (PIR2bits.BCLIF) {
            PIR2bits.BCLIF = 0; //clear flag
            return false;
        }
    };
    PIR1bits.SSPIF = 0;
    return true;
}

static bool I2C_Tx(uint8_t data) {
    PIR1bits.SSPIF = 0; //clear flag       
    while (SSPSTATbits.BF); //wait buffer empty
    SSPBUF = data;
    while (!PIR1bits.SSPIF) //wait tx condition
    {
        //check bus collision
        if (PIR2bits.BCLIF) {
            PIR2bits.BCLIF = 0; //clear flag
            return false;
        }

        //write collision
        if (SSPCON1bits.WCOL) {
            SSPCON1bits.WCOL = 0; //clear flag;
            return false;
        }
    };
    PIR1bits.SSPIF = 0;

    return !SSPCON2bits.ACKSTAT; //ACK is low
}

static bool I2C_Rx(uint8_t *data, uint8_t ack) {
    PIR1bits.SSPIF = 0; //clear flag       
    while (SSPSTATbits.BF); //wait buffer empty
    SSPCON2bits.RCEN = 1; //receive
    while (!PIR1bits.SSPIF) //wait rx condition
    {
        //check bus collision
        if (PIR2bits.BCLIF) {
            PIR2bits.BCLIF = 0; //clear flag
            return false;
        }

        //check overflow        
        if (SSPCON1bits.SSPOV) {
            SSPCON1bits.SSPOV = 0; //clear flag;
            return false;
        }

        //write collision
        if (SSPCON1bits.WCOL) {
            SSPCON1bits.WCOL = 0; //clear flag;
            return false;
        }
    };
    *data = SSPBUF;
    
    PIR1bits.SSPIF = 0;
    SSPCON2bits.ACKDT = ack; //0:ack, 1:nack
    SSPCON2bits.ACKEN = 1; //send ack

    while (!PIR1bits.SSPIF) //wait ack condition
    {
        //check bus collision
        if (PIR2bits.BCLIF) {
            PIR2bits.BCLIF = 0; //clear flag
            return false;
        }
    };

    PIR1bits.SSPIF = 0;    
    return true;
}
