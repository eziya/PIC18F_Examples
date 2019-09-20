#include <string.h>

#include "main.h"
#include "spi_master.h"
#include "lcd_bd663474.h"
#include "lcd_gfx.h"
#include "bitmap.h"

void main(void) {

    OSCCON = 0x70; //16MHz, Internal OSC    
    OSCTUNEbits.PLLEN = 1; //PLLx4 = 64MHz

    ANSEL = 0x0; //disable analog input     
    ANSELH = 0x0;

    SPI_Init(); //init spi
    LCD_Init(); //init bd663474 lcd

    while (1) {
        static uint16_t x = 0;
        static uint16_t y = 0;
        static char BufferText[40];

        /* COUNTING MULTIPLE SEGMENTS */
        LCD_FillScreen(WHITE);
        LCD_SetRotation(SCREEN_HORIZONTAL_2);
        LCD_DrawText("Counting multiple segments at once", FONT2, 10, 10, BLACK, WHITE);
        __delay_ms(2000);
        LCD_FillScreen(WHITE);

        for (uint16_t i = 0; i <= 10; i++) {
            sprintf(BufferText, "Counting: %d", i);
            LCD_DrawText(BufferText, FONT3, 10, 10, BLACK, WHITE);
            LCD_DrawText(BufferText, FONT3, 10, 30, BLUE, WHITE);
            LCD_DrawText(BufferText, FONT3, 10, 50, RED, WHITE);
            LCD_DrawText(BufferText, FONT3, 10, 70, GREEN, WHITE);
            LCD_DrawText(BufferText, FONT3, 10, 90, BLACK, WHITE);
            LCD_DrawText(BufferText, FONT3, 10, 110, BLUE, WHITE);
            LCD_DrawText(BufferText, FONT3, 10, 130, RED, WHITE);
            LCD_DrawText(BufferText, FONT3, 10, 150, GREEN, WHITE);
            LCD_DrawText(BufferText, FONT3, 10, 170, WHITE, BLACK);
            LCD_DrawText(BufferText, FONT3, 10, 190, BLUE, BLACK);
            LCD_DrawText(BufferText, FONT3, 10, 210, RED, BLACK);
        }
        __delay_ms(1000);
       
        /* ALIGNMENT TEST */
        LCD_FillScreen(WHITE);
        LCD_SetRotation(SCREEN_HORIZONTAL_2);
        LCD_DrawText("Rectangle alignment check", FONT3, 10, 10, BLACK, WHITE);
        __delay_ms(2000);
        LCD_FillScreen(WHITE);

        LCD_DrawHollowRectangleCoord(50, 50, 100, 100, BLACK);
        LCD_DrawFilledRectangleCoord(20, 20, 50, 50, BLACK);
        LCD_DrawHollowRectangleCoord(10, 10, 19, 19, BLACK);
        __delay_ms(1000);

        /* HOLLOW CIRCLES EXAMPLE */
        LCD_FillScreen(WHITE);
        LCD_SetRotation(SCREEN_HORIZONTAL_2);
        LCD_DrawText("Randomly placed and sized", FONT3, 10, 10, BLACK, WHITE);
        LCD_DrawText("Circles", FONT3, 10, 30, BLACK, WHITE);
        __delay_ms(2000);
        LCD_FillScreen(WHITE);

        for (uint32_t i = 0; i < 1500; i++) {
            uint32_t random_num = 0;
            uint16_t xr = 0;
            uint16_t yr = 0;
            uint16_t radiusr = 0;
            uint16_t colourr = 0;

            random_num = rand();
            xr = random_num;
            random_num = rand();
            yr = random_num;
            random_num = rand();
            radiusr = random_num;
            random_num = rand();
            colourr = random_num;

            xr &= 0x01FF;
            yr &= 0x01FF;
            radiusr &= 0x001F;

            LCD_DrawHollowCircle(xr, yr, radiusr * 2, colourr);
        }
        __delay_ms(1000);

        /* FILLED CIRCLES EXAMPLE */
        LCD_FillScreen(WHITE);
        LCD_SetRotation(SCREEN_HORIZONTAL_2);
        LCD_DrawText("Randomly placed and sized", FONT3, 10, 10, BLACK, WHITE);
        LCD_DrawText("Filled Circles", FONT3, 10, 30, BLACK, WHITE);
        __delay_ms(2000);
        LCD_FillScreen(WHITE);

        for (uint32_t i = 0; i < 500; i++) {
            uint32_t random_num = 0;
            uint16_t xr = 0;
            uint16_t yr = 0;
            uint16_t radiusr = 0;
            uint16_t colourr = 0;

            random_num = rand();
            xr = random_num;
            random_num = rand();
            yr = random_num;
            random_num = rand();
            radiusr = random_num;
            random_num = rand();
            colourr = random_num;

            xr &= 0x01FF;
            yr &= 0x01FF;
            radiusr &= 0x001F;

            LCD_DrawFilledCircle(xr, yr, radiusr / 2, colourr);
        }
        __delay_ms(1000);

        /* HOLLOW RECTANGLES EXAMPLE */
        LCD_FillScreen(WHITE);
        LCD_SetRotation(SCREEN_HORIZONTAL_2);
        LCD_DrawText("Randomly placed and sized", FONT3, 10, 10, BLACK, WHITE);
        LCD_DrawText("Rectangles", FONT3, 10, 30, BLACK, WHITE);
        __delay_ms(2000);
        LCD_FillScreen(WHITE);

        for (uint32_t i = 0; i < 4000; i++) {
            uint32_t random_num = 0;
            uint16_t xr = 0;
            uint16_t yr = 0;
            uint16_t radiusr = 0;
            uint16_t colourr = 0;

            random_num = rand();
            xr = random_num;
            random_num = rand();
            yr = random_num;
            random_num = rand();
            radiusr = random_num;
            random_num = rand();
            colourr = random_num;

            xr &= 0x01FF;
            yr &= 0x01FF;
            radiusr &= 0x001F;

            LCD_DrawHollowRectangleCoord(xr, yr, xr + radiusr, yr + radiusr, colourr);
        }
        __delay_ms(1000);

        /* FILLED RECTANGLES EXAMPLE */
        LCD_FillScreen(WHITE);
        LCD_SetRotation(SCREEN_HORIZONTAL_2);
        LCD_DrawText("Randomly placed and sized", FONT3, 10, 10, BLACK, WHITE);
        LCD_DrawText("Filled Rectangles", FONT3, 10, 30, BLACK, WHITE);
        __delay_ms(2000);
        LCD_FillScreen(WHITE);

        for (uint32_t i = 0; i < 4000; i++) {
            uint32_t random_num = 0;
            uint16_t xr = 0;
            uint16_t yr = 0;
            uint16_t radiusr = 0;
            uint16_t color = 0;

            random_num = rand();
            xr = random_num;
            random_num = rand();
            yr = random_num;
            random_num = rand();
            radiusr = random_num;
            random_num = rand();
            color = random_num;

            xr &= 0x01FF;
            yr &= 0x01FF;
            radiusr &= 0x001F;

            LCD_DrawRectangle(xr, yr, radiusr, radiusr, color);
        }
        __delay_ms(1000);

        /* IMAGE EXAMPLE */
        LCD_FillScreen(WHITE);
        LCD_SetRotation(SCREEN_HORIZONTAL_2);
        LCD_DrawText("RGB Picture", FONT3, 10, 10, RED, YELLOW);
        LCD_DrawText("KAKAO Friends", FONT3, 10, 30, BLACK, WHITE);
        __delay_ms(2000);
        LCD_DrawImage(50, 50, 60, 60, bitmap, SCREEN_HORIZONTAL_2);
        __delay_ms(2000);
    }

    return;
}
