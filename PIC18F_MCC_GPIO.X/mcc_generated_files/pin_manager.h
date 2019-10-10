/**
  @Generated Pin Manager Header File

  @Company:
    Microchip Technology Inc.

  @File Name:
    pin_manager.h

  @Summary:
    This is the Pin Manager file generated using PIC10 / PIC12 / PIC16 / PIC18 MCUs

  @Description
    This header file provides APIs for driver for .
    Generation Information :
        Product Revision  :  PIC10 / PIC12 / PIC16 / PIC18 MCUs - 1.77
        Device            :  PIC18F45K20
        Driver Version    :  2.11
    The generated drivers are tested against the following:
        Compiler          :  XC8 2.05 and above
        MPLAB 	          :  MPLAB X 5.20	
*/

/*
    (c) 2018 Microchip Technology Inc. and its subsidiaries. 
    
    Subject to your compliance with these terms, you may use Microchip software and any 
    derivatives exclusively with Microchip products. It is your responsibility to comply with third party 
    license terms applicable to your use of third party software (including open source software) that 
    may accompany Microchip software.
    
    THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER 
    EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY 
    IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS 
    FOR A PARTICULAR PURPOSE.
    
    IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE, 
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND 
    WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP 
    HAS BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO 
    THE FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL 
    CLAIMS IN ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT 
    OF FEES, IF ANY, THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS 
    SOFTWARE.
*/

#ifndef PIN_MANAGER_H
#define PIN_MANAGER_H

/**
  Section: Included Files
*/

#include <xc.h>

#define INPUT   1
#define OUTPUT  0

#define HIGH    1
#define LOW     0

#define ANALOG      1
#define DIGITAL     0

#define PULL_UP_ENABLED      1
#define PULL_UP_DISABLED     0

// get/set LED0 aliases
#define LED0_TRIS                 TRISBbits.TRISB0
#define LED0_LAT                  LATBbits.LATB0
#define LED0_PORT                 PORTBbits.RB0
#define LED0_WPU                  WPUBbits.WPUB0
#define LED0_ANS                  ANSELHbits.ANS12
#define LED0_SetHigh()            do { LATBbits.LATB0 = 1; } while(0)
#define LED0_SetLow()             do { LATBbits.LATB0 = 0; } while(0)
#define LED0_Toggle()             do { LATBbits.LATB0 = ~LATBbits.LATB0; } while(0)
#define LED0_GetValue()           PORTBbits.RB0
#define LED0_SetDigitalInput()    do { TRISBbits.TRISB0 = 1; } while(0)
#define LED0_SetDigitalOutput()   do { TRISBbits.TRISB0 = 0; } while(0)
#define LED0_SetPullup()          do { WPUBbits.WPUB0 = 1; } while(0)
#define LED0_ResetPullup()        do { WPUBbits.WPUB0 = 0; } while(0)
#define LED0_SetAnalogMode()      do { ANSELHbits.ANS12 = 1; } while(0)
#define LED0_SetDigitalMode()     do { ANSELHbits.ANS12 = 0; } while(0)

// get/set LED1 aliases
#define LED1_TRIS                 TRISBbits.TRISB1
#define LED1_LAT                  LATBbits.LATB1
#define LED1_PORT                 PORTBbits.RB1
#define LED1_WPU                  WPUBbits.WPUB1
#define LED1_ANS                  ANSELHbits.ANS10
#define LED1_SetHigh()            do { LATBbits.LATB1 = 1; } while(0)
#define LED1_SetLow()             do { LATBbits.LATB1 = 0; } while(0)
#define LED1_Toggle()             do { LATBbits.LATB1 = ~LATBbits.LATB1; } while(0)
#define LED1_GetValue()           PORTBbits.RB1
#define LED1_SetDigitalInput()    do { TRISBbits.TRISB1 = 1; } while(0)
#define LED1_SetDigitalOutput()   do { TRISBbits.TRISB1 = 0; } while(0)
#define LED1_SetPullup()          do { WPUBbits.WPUB1 = 1; } while(0)
#define LED1_ResetPullup()        do { WPUBbits.WPUB1 = 0; } while(0)
#define LED1_SetAnalogMode()      do { ANSELHbits.ANS10 = 1; } while(0)
#define LED1_SetDigitalMode()     do { ANSELHbits.ANS10 = 0; } while(0)

// get/set LED2 aliases
#define LED2_TRIS                 TRISBbits.TRISB2
#define LED2_LAT                  LATBbits.LATB2
#define LED2_PORT                 PORTBbits.RB2
#define LED2_WPU                  WPUBbits.WPUB2
#define LED2_ANS                  ANSELHbits.ANS8
#define LED2_SetHigh()            do { LATBbits.LATB2 = 1; } while(0)
#define LED2_SetLow()             do { LATBbits.LATB2 = 0; } while(0)
#define LED2_Toggle()             do { LATBbits.LATB2 = ~LATBbits.LATB2; } while(0)
#define LED2_GetValue()           PORTBbits.RB2
#define LED2_SetDigitalInput()    do { TRISBbits.TRISB2 = 1; } while(0)
#define LED2_SetDigitalOutput()   do { TRISBbits.TRISB2 = 0; } while(0)
#define LED2_SetPullup()          do { WPUBbits.WPUB2 = 1; } while(0)
#define LED2_ResetPullup()        do { WPUBbits.WPUB2 = 0; } while(0)
#define LED2_SetAnalogMode()      do { ANSELHbits.ANS8 = 1; } while(0)
#define LED2_SetDigitalMode()     do { ANSELHbits.ANS8 = 0; } while(0)

// get/set LED3 aliases
#define LED3_TRIS                 TRISBbits.TRISB3
#define LED3_LAT                  LATBbits.LATB3
#define LED3_PORT                 PORTBbits.RB3
#define LED3_WPU                  WPUBbits.WPUB3
#define LED3_ANS                  ANSELHbits.ANS9
#define LED3_SetHigh()            do { LATBbits.LATB3 = 1; } while(0)
#define LED3_SetLow()             do { LATBbits.LATB3 = 0; } while(0)
#define LED3_Toggle()             do { LATBbits.LATB3 = ~LATBbits.LATB3; } while(0)
#define LED3_GetValue()           PORTBbits.RB3
#define LED3_SetDigitalInput()    do { TRISBbits.TRISB3 = 1; } while(0)
#define LED3_SetDigitalOutput()   do { TRISBbits.TRISB3 = 0; } while(0)
#define LED3_SetPullup()          do { WPUBbits.WPUB3 = 1; } while(0)
#define LED3_ResetPullup()        do { WPUBbits.WPUB3 = 0; } while(0)
#define LED3_SetAnalogMode()      do { ANSELHbits.ANS9 = 1; } while(0)
#define LED3_SetDigitalMode()     do { ANSELHbits.ANS9 = 0; } while(0)

// get/set LED4 aliases
#define LED4_TRIS                 TRISBbits.TRISB4
#define LED4_LAT                  LATBbits.LATB4
#define LED4_PORT                 PORTBbits.RB4
#define LED4_WPU                  WPUBbits.WPUB4
#define LED4_ANS                  ANSELHbits.ANS11
#define LED4_SetHigh()            do { LATBbits.LATB4 = 1; } while(0)
#define LED4_SetLow()             do { LATBbits.LATB4 = 0; } while(0)
#define LED4_Toggle()             do { LATBbits.LATB4 = ~LATBbits.LATB4; } while(0)
#define LED4_GetValue()           PORTBbits.RB4
#define LED4_SetDigitalInput()    do { TRISBbits.TRISB4 = 1; } while(0)
#define LED4_SetDigitalOutput()   do { TRISBbits.TRISB4 = 0; } while(0)
#define LED4_SetPullup()          do { WPUBbits.WPUB4 = 1; } while(0)
#define LED4_ResetPullup()        do { WPUBbits.WPUB4 = 0; } while(0)
#define LED4_SetAnalogMode()      do { ANSELHbits.ANS11 = 1; } while(0)
#define LED4_SetDigitalMode()     do { ANSELHbits.ANS11 = 0; } while(0)

// get/set LED5 aliases
#define LED5_TRIS                 TRISBbits.TRISB5
#define LED5_LAT                  LATBbits.LATB5
#define LED5_PORT                 PORTBbits.RB5
#define LED5_WPU                  WPUBbits.WPUB5
#define LED5_SetHigh()            do { LATBbits.LATB5 = 1; } while(0)
#define LED5_SetLow()             do { LATBbits.LATB5 = 0; } while(0)
#define LED5_Toggle()             do { LATBbits.LATB5 = ~LATBbits.LATB5; } while(0)
#define LED5_GetValue()           PORTBbits.RB5
#define LED5_SetDigitalInput()    do { TRISBbits.TRISB5 = 1; } while(0)
#define LED5_SetDigitalOutput()   do { TRISBbits.TRISB5 = 0; } while(0)
#define LED5_SetPullup()          do { WPUBbits.WPUB5 = 1; } while(0)
#define LED5_ResetPullup()        do { WPUBbits.WPUB5 = 0; } while(0)

// get/set LED6 aliases
#define LED6_TRIS                 TRISBbits.TRISB6
#define LED6_LAT                  LATBbits.LATB6
#define LED6_PORT                 PORTBbits.RB6
#define LED6_WPU                  WPUBbits.WPUB6
#define LED6_SetHigh()            do { LATBbits.LATB6 = 1; } while(0)
#define LED6_SetLow()             do { LATBbits.LATB6 = 0; } while(0)
#define LED6_Toggle()             do { LATBbits.LATB6 = ~LATBbits.LATB6; } while(0)
#define LED6_GetValue()           PORTBbits.RB6
#define LED6_SetDigitalInput()    do { TRISBbits.TRISB6 = 1; } while(0)
#define LED6_SetDigitalOutput()   do { TRISBbits.TRISB6 = 0; } while(0)
#define LED6_SetPullup()          do { WPUBbits.WPUB6 = 1; } while(0)
#define LED6_ResetPullup()        do { WPUBbits.WPUB6 = 0; } while(0)

// get/set LED7 aliases
#define LED7_TRIS                 TRISBbits.TRISB7
#define LED7_LAT                  LATBbits.LATB7
#define LED7_PORT                 PORTBbits.RB7
#define LED7_WPU                  WPUBbits.WPUB7
#define LED7_SetHigh()            do { LATBbits.LATB7 = 1; } while(0)
#define LED7_SetLow()             do { LATBbits.LATB7 = 0; } while(0)
#define LED7_Toggle()             do { LATBbits.LATB7 = ~LATBbits.LATB7; } while(0)
#define LED7_GetValue()           PORTBbits.RB7
#define LED7_SetDigitalInput()    do { TRISBbits.TRISB7 = 1; } while(0)
#define LED7_SetDigitalOutput()   do { TRISBbits.TRISB7 = 0; } while(0)
#define LED7_SetPullup()          do { WPUBbits.WPUB7 = 1; } while(0)
#define LED7_ResetPullup()        do { WPUBbits.WPUB7 = 0; } while(0)

// get/set SW0 aliases
#define SW0_TRIS                 TRISDbits.TRISD0
#define SW0_LAT                  LATDbits.LATD0
#define SW0_PORT                 PORTDbits.RD0
#define SW0_SetHigh()            do { LATDbits.LATD0 = 1; } while(0)
#define SW0_SetLow()             do { LATDbits.LATD0 = 0; } while(0)
#define SW0_Toggle()             do { LATDbits.LATD0 = ~LATDbits.LATD0; } while(0)
#define SW0_GetValue()           PORTDbits.RD0
#define SW0_SetDigitalInput()    do { TRISDbits.TRISD0 = 1; } while(0)
#define SW0_SetDigitalOutput()   do { TRISDbits.TRISD0 = 0; } while(0)

// get/set SW1 aliases
#define SW1_TRIS                 TRISDbits.TRISD1
#define SW1_LAT                  LATDbits.LATD1
#define SW1_PORT                 PORTDbits.RD1
#define SW1_SetHigh()            do { LATDbits.LATD1 = 1; } while(0)
#define SW1_SetLow()             do { LATDbits.LATD1 = 0; } while(0)
#define SW1_Toggle()             do { LATDbits.LATD1 = ~LATDbits.LATD1; } while(0)
#define SW1_GetValue()           PORTDbits.RD1
#define SW1_SetDigitalInput()    do { TRISDbits.TRISD1 = 1; } while(0)
#define SW1_SetDigitalOutput()   do { TRISDbits.TRISD1 = 0; } while(0)

// get/set SW2 aliases
#define SW2_TRIS                 TRISDbits.TRISD2
#define SW2_LAT                  LATDbits.LATD2
#define SW2_PORT                 PORTDbits.RD2
#define SW2_SetHigh()            do { LATDbits.LATD2 = 1; } while(0)
#define SW2_SetLow()             do { LATDbits.LATD2 = 0; } while(0)
#define SW2_Toggle()             do { LATDbits.LATD2 = ~LATDbits.LATD2; } while(0)
#define SW2_GetValue()           PORTDbits.RD2
#define SW2_SetDigitalInput()    do { TRISDbits.TRISD2 = 1; } while(0)
#define SW2_SetDigitalOutput()   do { TRISDbits.TRISD2 = 0; } while(0)

// get/set SW3 aliases
#define SW3_TRIS                 TRISDbits.TRISD3
#define SW3_LAT                  LATDbits.LATD3
#define SW3_PORT                 PORTDbits.RD3
#define SW3_SetHigh()            do { LATDbits.LATD3 = 1; } while(0)
#define SW3_SetLow()             do { LATDbits.LATD3 = 0; } while(0)
#define SW3_Toggle()             do { LATDbits.LATD3 = ~LATDbits.LATD3; } while(0)
#define SW3_GetValue()           PORTDbits.RD3
#define SW3_SetDigitalInput()    do { TRISDbits.TRISD3 = 1; } while(0)
#define SW3_SetDigitalOutput()   do { TRISDbits.TRISD3 = 0; } while(0)

// get/set SW4 aliases
#define SW4_TRIS                 TRISDbits.TRISD4
#define SW4_LAT                  LATDbits.LATD4
#define SW4_PORT                 PORTDbits.RD4
#define SW4_SetHigh()            do { LATDbits.LATD4 = 1; } while(0)
#define SW4_SetLow()             do { LATDbits.LATD4 = 0; } while(0)
#define SW4_Toggle()             do { LATDbits.LATD4 = ~LATDbits.LATD4; } while(0)
#define SW4_GetValue()           PORTDbits.RD4
#define SW4_SetDigitalInput()    do { TRISDbits.TRISD4 = 1; } while(0)
#define SW4_SetDigitalOutput()   do { TRISDbits.TRISD4 = 0; } while(0)

// get/set SW5 aliases
#define SW5_TRIS                 TRISDbits.TRISD5
#define SW5_LAT                  LATDbits.LATD5
#define SW5_PORT                 PORTDbits.RD5
#define SW5_SetHigh()            do { LATDbits.LATD5 = 1; } while(0)
#define SW5_SetLow()             do { LATDbits.LATD5 = 0; } while(0)
#define SW5_Toggle()             do { LATDbits.LATD5 = ~LATDbits.LATD5; } while(0)
#define SW5_GetValue()           PORTDbits.RD5
#define SW5_SetDigitalInput()    do { TRISDbits.TRISD5 = 1; } while(0)
#define SW5_SetDigitalOutput()   do { TRISDbits.TRISD5 = 0; } while(0)

// get/set SW6 aliases
#define SW6_TRIS                 TRISDbits.TRISD6
#define SW6_LAT                  LATDbits.LATD6
#define SW6_PORT                 PORTDbits.RD6
#define SW6_SetHigh()            do { LATDbits.LATD6 = 1; } while(0)
#define SW6_SetLow()             do { LATDbits.LATD6 = 0; } while(0)
#define SW6_Toggle()             do { LATDbits.LATD6 = ~LATDbits.LATD6; } while(0)
#define SW6_GetValue()           PORTDbits.RD6
#define SW6_SetDigitalInput()    do { TRISDbits.TRISD6 = 1; } while(0)
#define SW6_SetDigitalOutput()   do { TRISDbits.TRISD6 = 0; } while(0)

// get/set SW7 aliases
#define SW7_TRIS                 TRISDbits.TRISD7
#define SW7_LAT                  LATDbits.LATD7
#define SW7_PORT                 PORTDbits.RD7
#define SW7_SetHigh()            do { LATDbits.LATD7 = 1; } while(0)
#define SW7_SetLow()             do { LATDbits.LATD7 = 0; } while(0)
#define SW7_Toggle()             do { LATDbits.LATD7 = ~LATDbits.LATD7; } while(0)
#define SW7_GetValue()           PORTDbits.RD7
#define SW7_SetDigitalInput()    do { TRISDbits.TRISD7 = 1; } while(0)
#define SW7_SetDigitalOutput()   do { TRISDbits.TRISD7 = 0; } while(0)

/**
   @Param
    none
   @Returns
    none
   @Description
    GPIO and peripheral I/O initialization
   @Example
    PIN_MANAGER_Initialize();
 */
void PIN_MANAGER_Initialize (void);

/**
 * @Param
    none
 * @Returns
    none
 * @Description
    Interrupt on Change Handling routine
 * @Example
    PIN_MANAGER_IOC();
 */
void PIN_MANAGER_IOC(void);



#endif // PIN_MANAGER_H
/**
 End of File
*/