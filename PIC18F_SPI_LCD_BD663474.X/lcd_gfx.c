#include "lcd_gfx.h"
#include "lcd_bd663474.h"
#include "spi_master.h"

void LCD_DrawHollowCircle(uint16_t X, uint16_t Y, uint16_t radius, uint16_t color) {
    int x = radius - 1;
    int y = 0;
    int dx = 1;
    int dy = 1;
    int err = dx - (radius << 1);

    while (x >= y) {
        LCD_DrawPixel(X + x, Y + y, color);
        LCD_DrawPixel(X + y, Y + x, color);
        LCD_DrawPixel(X - y, Y + x, color);
        LCD_DrawPixel(X - x, Y + y, color);
        LCD_DrawPixel(X - x, Y - y, color);
        LCD_DrawPixel(X - y, Y - x, color);
        LCD_DrawPixel(X + y, Y - x, color);
        LCD_DrawPixel(X + x, Y - y, color);

        if (err <= 0) {
            y++;
            err += dy;
            dy += 2;
        }

        if (err > 0) {
            x--;
            dx += 2;
            err += (-radius << 1) + dx;
        }
    }
}

void LCD_DrawFilledCircle(uint16_t X, uint16_t Y, uint16_t radius, uint16_t color) {

    int x = radius;
    int y = 0;
    int xChange = 1 - (radius << 1);
    int yChange = 0;
    int radiusError = 0;

    while (x >= y) {
        for (int i = X - x; i <= X + x; i++) {
            LCD_DrawPixel(i, Y + y, color);
            LCD_DrawPixel(i, Y - y, color);
        }

        for (int i = X - y; i <= X + y; i++) {
            LCD_DrawPixel(i, Y + x, color);
            LCD_DrawPixel(i, Y - x, color);
        }

        y++;
        radiusError += yChange;
        yChange += 2;

        if (((radiusError << 1) + xChange) > 0) {
            x--;
            radiusError += xChange;
            xChange += 2;
        }
    }
}

void LCD_DrawHollowRectangleCoord(uint16_t X0, uint16_t Y0, uint16_t X1, uint16_t Y1, uint16_t color) {
    uint16_t xLen = 0;
    uint16_t yLen = 0;
    uint8_t negX = 0;
    uint8_t negY = 0;
    float negCalc = 0;

    negCalc = X1 - X0;
    if (negCalc < 0) negX = 1;
    negCalc = 0;

    negCalc = Y1 - Y0;
    if (negCalc < 0) negY = 1;

    //DRAW HORIZONTAL!
    if (!negX) {
        xLen = X1 - X0;
    } else {
        xLen = X0 - X1;
    }
    LCD_DrawHLine(X0, Y0, xLen, color);
    LCD_DrawHLine(X0, Y1, xLen, color);

    //DRAW VERTICAL!
    if (!negY) {
        yLen = Y1 - Y0;
    } else {
        yLen = Y0 - Y1;
    }

    LCD_DrawVLine(X0, Y0, yLen, color);
    LCD_DrawVLine(X1, Y0, yLen, color);

    if ((xLen > 0) || (yLen > 0)) {
        LCD_DrawPixel(X1, Y1, color);
    }
}

void LCD_DrawFilledRectangleCoord(uint16_t X0, uint16_t Y0, uint16_t X1, uint16_t Y1, uint16_t color) {
    uint16_t xLen = 0;
    uint16_t yLen = 0;
    uint8_t negX = 0;
    uint8_t negY = 0;
    int32_t negCalc = 0;
    uint16_t X0True = 0;
    uint16_t Y0True = 0;

    negCalc = X1 - X0;
    if (negCalc < 0) negX = 1;
    negCalc = 0;

    negCalc = Y1 - Y0;
    if (negCalc < 0) negY = 1;

    if (!negX) {
        xLen = X1 - X0;
        X0True = X0;
    } else {
        xLen = X0 - X1;
        X0True = X1;
    }

    if (!negY) {
        yLen = Y1 - Y0;
        Y0True = Y0;
    } else {
        yLen = Y0 - Y1;
        Y0True = Y1;
    }

    LCD_DrawRectangle(X0True, Y0True, xLen, yLen, color);
}

void LCD_DrawChar(char ch, const uint8_t font[], uint16_t X, uint16_t Y, uint16_t color, uint16_t bgcolor) {
    if ((ch < 31) || (ch > 127)) return;

    uint8_t fOffset, fWidth, fHeight, fBPL;
    uint8_t *tempChar;

    fOffset = font[0];
    fWidth = font[1];
    fHeight = font[2];
    fBPL = font[3];

    tempChar = (uint8_t*) & font[((ch - 0x20) * fOffset) + 4]; /* Current Character = Meta + (Character Index * Offset) */

    /* Clear background first */
    LCD_DrawRectangle(X, Y, fWidth, fHeight, bgcolor);

    for (int j = 0; j < fHeight; j++) {
        for (int i = 0; i < fWidth; i++) {
            uint8_t z = tempChar[fBPL * i + ((j & 0xF8) >> 3) + 1]; /* (j & 0xF8) >> 3, increase one by 8-bits */
            uint8_t b = 1 << (j & 0x07);
            if ((z & b) != 0x00) {
                LCD_DrawPixel(X + i, Y + j, color);
            }
        }
    }
}

void LCD_DrawText(const char* str, const uint8_t font[], uint16_t X, uint16_t Y, uint16_t color, uint16_t bgcolor) {
    uint8_t charWidth; /* Width of character */
    uint8_t fOffset = font[0]; /* Offset of character */
    uint8_t fWidth = font[1]; /* Width of font */

    while (*str) {
        LCD_DrawChar(*str, font, X, Y, color, bgcolor);

        /* Check character width and calculate proper position */
        uint8_t *tempChar = (uint8_t*) & font[((*str - 0x20) * fOffset) + 4];
        charWidth = tempChar[0];

        if (charWidth + 2 < fWidth) {
            /* If character width is smaller than font width */
            X += (charWidth + 2);
        } else {
            X += fWidth;
        }

        str++;
    }
}

void LCD_DrawImage(uint16_t x, uint16_t y, uint16_t width, uint16_t height, const uint16_t* image, uint8_t orientation) {
    if (orientation == SCREEN_VERTICAL_1) {
        LCD_SetRotation(SCREEN_VERTICAL_1);
    } else if (orientation == SCREEN_HORIZONTAL_1) {
        LCD_SetRotation(SCREEN_HORIZONTAL_1);
    } else if (orientation == SCREEN_VERTICAL_2) {
        LCD_SetRotation(SCREEN_VERTICAL_2);
    } else if (orientation == SCREEN_HORIZONTAL_2) {
        LCD_SetRotation(SCREEN_HORIZONTAL_2);
    }

    LCD_SetWindow(x, y, x + width - 1, y + height - 1);

    LCD_CS = 0;
    for (uint32_t i = 0; i < ((uint32_t) width * (uint32_t) height); i++) {
        uint16_t data = (*image++);
        LCD_TxData(data);
    }
    LCD_CS = 1;
}
