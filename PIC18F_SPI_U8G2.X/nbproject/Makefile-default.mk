#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/PIC18F_SPI_U8G2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/PIC18F_SPI_U8G2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=main.c spi_master.c u8g2_pic18f.c u8g2/u8g2_bitmap.c u8g2/u8g2_box.c u8g2/u8g2_buffer.c u8g2/u8g2_circle.c u8g2/u8g2_cleardisplay.c u8g2/u8g2_d_memory.c u8g2/u8g2_d_setup.c u8g2/u8g2_font.c u8g2/u8g2_fonts.c u8g2/u8g2_hvline.c u8g2/u8g2_input_value.c u8g2/u8g2_intersection.c u8g2/u8g2_kerning.c u8g2/u8g2_line.c u8g2/u8g2_ll_hvline.c u8g2/u8g2_message.c u8g2/u8g2_polygon.c u8g2/u8g2_selection_list.c u8g2/u8g2_setup.c u8g2/u8log.c u8g2/u8log_u8g2.c u8g2/u8log_u8x8.c u8g2/u8x8_8x8.c u8g2/u8x8_byte.c u8g2/u8x8_cad.c u8g2/u8x8_d_a2printer.c u8g2/u8x8_d_il3820_296x128.c u8g2/u8x8_d_ist3020.c u8g2/u8x8_d_ks0108.c u8g2/u8x8_d_lc7981.c u8g2/u8x8_d_ld7032_60x32.c u8g2/u8x8_d_ls013b7dh03.c u8g2/u8x8_d_max7219.c u8g2/u8x8_d_pcd8544_84x48.c u8g2/u8x8_d_pcf8812.c u8g2/u8x8_d_pcf8814_hx1230.c u8g2/u8x8_d_sbn1661.c u8g2/u8x8_d_sed1330.c u8g2/u8x8_d_sh1106_64x32.c u8g2/u8x8_d_sh1106_72x40.c u8g2/u8x8_d_sh1107.c u8g2/u8x8_d_sh1108.c u8g2/u8x8_d_sh1122.c u8g2/u8x8_d_ssd1305.c u8g2/u8x8_d_ssd1306_128x32.c u8g2/u8x8_d_ssd1306_128x64_noname.c u8g2/u8x8_d_ssd1306_48x64.c u8g2/u8x8_d_ssd1306_64x32.c u8g2/u8x8_d_ssd1306_64x48.c u8g2/u8x8_d_ssd1306_96x16.c u8g2/u8x8_d_ssd1309.c u8g2/u8x8_d_ssd1317.c u8g2/u8x8_d_ssd1318.c u8g2/u8x8_d_ssd1322.c u8g2/u8x8_d_ssd1325.c u8g2/u8x8_d_ssd1326.c u8g2/u8x8_d_ssd1327.c u8g2/u8x8_d_ssd1329.c u8g2/u8x8_d_ssd1606_172x72.c u8g2/u8x8_d_ssd1607_200x200.c u8g2/u8x8_d_st75256.c u8g2/u8x8_d_st7565.c u8g2/u8x8_d_st7567.c u8g2/u8x8_d_st7586s_erc240160.c u8g2/u8x8_d_st7586s_s028hn118a.c u8g2/u8x8_d_st7588.c u8g2/u8x8_d_st7920.c u8g2/u8x8_d_stdio.c u8g2/u8x8_d_t6963.c u8g2/u8x8_d_uc1601.c u8g2/u8x8_d_uc1604.c u8g2/u8x8_d_uc1608.c u8g2/u8x8_d_uc1610.c u8g2/u8x8_d_uc1611.c u8g2/u8x8_d_uc1617.c u8g2/u8x8_d_uc1638.c u8g2/u8x8_d_uc1701_dogs102.c u8g2/u8x8_d_uc1701_mini12864.c u8g2/u8x8_debounce.c u8g2/u8x8_display.c u8g2/u8x8_fonts.c u8g2/u8x8_gpio.c u8g2/u8x8_input_value.c u8g2/u8x8_message.c u8g2/u8x8_selection_list.c u8g2/u8x8_setup.c u8g2/u8x8_string.c u8g2/u8x8_u16toa.c u8g2/u8x8_u8toa.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/main.p1 ${OBJECTDIR}/spi_master.p1 ${OBJECTDIR}/u8g2_pic18f.p1 ${OBJECTDIR}/u8g2/u8g2_bitmap.p1 ${OBJECTDIR}/u8g2/u8g2_box.p1 ${OBJECTDIR}/u8g2/u8g2_buffer.p1 ${OBJECTDIR}/u8g2/u8g2_circle.p1 ${OBJECTDIR}/u8g2/u8g2_cleardisplay.p1 ${OBJECTDIR}/u8g2/u8g2_d_memory.p1 ${OBJECTDIR}/u8g2/u8g2_d_setup.p1 ${OBJECTDIR}/u8g2/u8g2_font.p1 ${OBJECTDIR}/u8g2/u8g2_fonts.p1 ${OBJECTDIR}/u8g2/u8g2_hvline.p1 ${OBJECTDIR}/u8g2/u8g2_input_value.p1 ${OBJECTDIR}/u8g2/u8g2_intersection.p1 ${OBJECTDIR}/u8g2/u8g2_kerning.p1 ${OBJECTDIR}/u8g2/u8g2_line.p1 ${OBJECTDIR}/u8g2/u8g2_ll_hvline.p1 ${OBJECTDIR}/u8g2/u8g2_message.p1 ${OBJECTDIR}/u8g2/u8g2_polygon.p1 ${OBJECTDIR}/u8g2/u8g2_selection_list.p1 ${OBJECTDIR}/u8g2/u8g2_setup.p1 ${OBJECTDIR}/u8g2/u8log.p1 ${OBJECTDIR}/u8g2/u8log_u8g2.p1 ${OBJECTDIR}/u8g2/u8log_u8x8.p1 ${OBJECTDIR}/u8g2/u8x8_8x8.p1 ${OBJECTDIR}/u8g2/u8x8_byte.p1 ${OBJECTDIR}/u8g2/u8x8_cad.p1 ${OBJECTDIR}/u8g2/u8x8_d_a2printer.p1 ${OBJECTDIR}/u8g2/u8x8_d_il3820_296x128.p1 ${OBJECTDIR}/u8g2/u8x8_d_ist3020.p1 ${OBJECTDIR}/u8g2/u8x8_d_ks0108.p1 ${OBJECTDIR}/u8g2/u8x8_d_lc7981.p1 ${OBJECTDIR}/u8g2/u8x8_d_ld7032_60x32.p1 ${OBJECTDIR}/u8g2/u8x8_d_ls013b7dh03.p1 ${OBJECTDIR}/u8g2/u8x8_d_max7219.p1 ${OBJECTDIR}/u8g2/u8x8_d_pcd8544_84x48.p1 ${OBJECTDIR}/u8g2/u8x8_d_pcf8812.p1 ${OBJECTDIR}/u8g2/u8x8_d_pcf8814_hx1230.p1 ${OBJECTDIR}/u8g2/u8x8_d_sbn1661.p1 ${OBJECTDIR}/u8g2/u8x8_d_sed1330.p1 ${OBJECTDIR}/u8g2/u8x8_d_sh1106_64x32.p1 ${OBJECTDIR}/u8g2/u8x8_d_sh1106_72x40.p1 ${OBJECTDIR}/u8g2/u8x8_d_sh1107.p1 ${OBJECTDIR}/u8g2/u8x8_d_sh1108.p1 ${OBJECTDIR}/u8g2/u8x8_d_sh1122.p1 ${OBJECTDIR}/u8g2/u8x8_d_ssd1305.p1 ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_128x32.p1 ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_128x64_noname.p1 ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_48x64.p1 ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_64x32.p1 ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_64x48.p1 ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_96x16.p1 ${OBJECTDIR}/u8g2/u8x8_d_ssd1309.p1 ${OBJECTDIR}/u8g2/u8x8_d_ssd1317.p1 ${OBJECTDIR}/u8g2/u8x8_d_ssd1318.p1 ${OBJECTDIR}/u8g2/u8x8_d_ssd1322.p1 ${OBJECTDIR}/u8g2/u8x8_d_ssd1325.p1 ${OBJECTDIR}/u8g2/u8x8_d_ssd1326.p1 ${OBJECTDIR}/u8g2/u8x8_d_ssd1327.p1 ${OBJECTDIR}/u8g2/u8x8_d_ssd1329.p1 ${OBJECTDIR}/u8g2/u8x8_d_ssd1606_172x72.p1 ${OBJECTDIR}/u8g2/u8x8_d_ssd1607_200x200.p1 ${OBJECTDIR}/u8g2/u8x8_d_st75256.p1 ${OBJECTDIR}/u8g2/u8x8_d_st7565.p1 ${OBJECTDIR}/u8g2/u8x8_d_st7567.p1 ${OBJECTDIR}/u8g2/u8x8_d_st7586s_erc240160.p1 ${OBJECTDIR}/u8g2/u8x8_d_st7586s_s028hn118a.p1 ${OBJECTDIR}/u8g2/u8x8_d_st7588.p1 ${OBJECTDIR}/u8g2/u8x8_d_st7920.p1 ${OBJECTDIR}/u8g2/u8x8_d_stdio.p1 ${OBJECTDIR}/u8g2/u8x8_d_t6963.p1 ${OBJECTDIR}/u8g2/u8x8_d_uc1601.p1 ${OBJECTDIR}/u8g2/u8x8_d_uc1604.p1 ${OBJECTDIR}/u8g2/u8x8_d_uc1608.p1 ${OBJECTDIR}/u8g2/u8x8_d_uc1610.p1 ${OBJECTDIR}/u8g2/u8x8_d_uc1611.p1 ${OBJECTDIR}/u8g2/u8x8_d_uc1617.p1 ${OBJECTDIR}/u8g2/u8x8_d_uc1638.p1 ${OBJECTDIR}/u8g2/u8x8_d_uc1701_dogs102.p1 ${OBJECTDIR}/u8g2/u8x8_d_uc1701_mini12864.p1 ${OBJECTDIR}/u8g2/u8x8_debounce.p1 ${OBJECTDIR}/u8g2/u8x8_display.p1 ${OBJECTDIR}/u8g2/u8x8_fonts.p1 ${OBJECTDIR}/u8g2/u8x8_gpio.p1 ${OBJECTDIR}/u8g2/u8x8_input_value.p1 ${OBJECTDIR}/u8g2/u8x8_message.p1 ${OBJECTDIR}/u8g2/u8x8_selection_list.p1 ${OBJECTDIR}/u8g2/u8x8_setup.p1 ${OBJECTDIR}/u8g2/u8x8_string.p1 ${OBJECTDIR}/u8g2/u8x8_u16toa.p1 ${OBJECTDIR}/u8g2/u8x8_u8toa.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/main.p1.d ${OBJECTDIR}/spi_master.p1.d ${OBJECTDIR}/u8g2_pic18f.p1.d ${OBJECTDIR}/u8g2/u8g2_bitmap.p1.d ${OBJECTDIR}/u8g2/u8g2_box.p1.d ${OBJECTDIR}/u8g2/u8g2_buffer.p1.d ${OBJECTDIR}/u8g2/u8g2_circle.p1.d ${OBJECTDIR}/u8g2/u8g2_cleardisplay.p1.d ${OBJECTDIR}/u8g2/u8g2_d_memory.p1.d ${OBJECTDIR}/u8g2/u8g2_d_setup.p1.d ${OBJECTDIR}/u8g2/u8g2_font.p1.d ${OBJECTDIR}/u8g2/u8g2_fonts.p1.d ${OBJECTDIR}/u8g2/u8g2_hvline.p1.d ${OBJECTDIR}/u8g2/u8g2_input_value.p1.d ${OBJECTDIR}/u8g2/u8g2_intersection.p1.d ${OBJECTDIR}/u8g2/u8g2_kerning.p1.d ${OBJECTDIR}/u8g2/u8g2_line.p1.d ${OBJECTDIR}/u8g2/u8g2_ll_hvline.p1.d ${OBJECTDIR}/u8g2/u8g2_message.p1.d ${OBJECTDIR}/u8g2/u8g2_polygon.p1.d ${OBJECTDIR}/u8g2/u8g2_selection_list.p1.d ${OBJECTDIR}/u8g2/u8g2_setup.p1.d ${OBJECTDIR}/u8g2/u8log.p1.d ${OBJECTDIR}/u8g2/u8log_u8g2.p1.d ${OBJECTDIR}/u8g2/u8log_u8x8.p1.d ${OBJECTDIR}/u8g2/u8x8_8x8.p1.d ${OBJECTDIR}/u8g2/u8x8_byte.p1.d ${OBJECTDIR}/u8g2/u8x8_cad.p1.d ${OBJECTDIR}/u8g2/u8x8_d_a2printer.p1.d ${OBJECTDIR}/u8g2/u8x8_d_il3820_296x128.p1.d ${OBJECTDIR}/u8g2/u8x8_d_ist3020.p1.d ${OBJECTDIR}/u8g2/u8x8_d_ks0108.p1.d ${OBJECTDIR}/u8g2/u8x8_d_lc7981.p1.d ${OBJECTDIR}/u8g2/u8x8_d_ld7032_60x32.p1.d ${OBJECTDIR}/u8g2/u8x8_d_ls013b7dh03.p1.d ${OBJECTDIR}/u8g2/u8x8_d_max7219.p1.d ${OBJECTDIR}/u8g2/u8x8_d_pcd8544_84x48.p1.d ${OBJECTDIR}/u8g2/u8x8_d_pcf8812.p1.d ${OBJECTDIR}/u8g2/u8x8_d_pcf8814_hx1230.p1.d ${OBJECTDIR}/u8g2/u8x8_d_sbn1661.p1.d ${OBJECTDIR}/u8g2/u8x8_d_sed1330.p1.d ${OBJECTDIR}/u8g2/u8x8_d_sh1106_64x32.p1.d ${OBJECTDIR}/u8g2/u8x8_d_sh1106_72x40.p1.d ${OBJECTDIR}/u8g2/u8x8_d_sh1107.p1.d ${OBJECTDIR}/u8g2/u8x8_d_sh1108.p1.d ${OBJECTDIR}/u8g2/u8x8_d_sh1122.p1.d ${OBJECTDIR}/u8g2/u8x8_d_ssd1305.p1.d ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_128x32.p1.d ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_128x64_noname.p1.d ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_48x64.p1.d ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_64x32.p1.d ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_64x48.p1.d ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_96x16.p1.d ${OBJECTDIR}/u8g2/u8x8_d_ssd1309.p1.d ${OBJECTDIR}/u8g2/u8x8_d_ssd1317.p1.d ${OBJECTDIR}/u8g2/u8x8_d_ssd1318.p1.d ${OBJECTDIR}/u8g2/u8x8_d_ssd1322.p1.d ${OBJECTDIR}/u8g2/u8x8_d_ssd1325.p1.d ${OBJECTDIR}/u8g2/u8x8_d_ssd1326.p1.d ${OBJECTDIR}/u8g2/u8x8_d_ssd1327.p1.d ${OBJECTDIR}/u8g2/u8x8_d_ssd1329.p1.d ${OBJECTDIR}/u8g2/u8x8_d_ssd1606_172x72.p1.d ${OBJECTDIR}/u8g2/u8x8_d_ssd1607_200x200.p1.d ${OBJECTDIR}/u8g2/u8x8_d_st75256.p1.d ${OBJECTDIR}/u8g2/u8x8_d_st7565.p1.d ${OBJECTDIR}/u8g2/u8x8_d_st7567.p1.d ${OBJECTDIR}/u8g2/u8x8_d_st7586s_erc240160.p1.d ${OBJECTDIR}/u8g2/u8x8_d_st7586s_s028hn118a.p1.d ${OBJECTDIR}/u8g2/u8x8_d_st7588.p1.d ${OBJECTDIR}/u8g2/u8x8_d_st7920.p1.d ${OBJECTDIR}/u8g2/u8x8_d_stdio.p1.d ${OBJECTDIR}/u8g2/u8x8_d_t6963.p1.d ${OBJECTDIR}/u8g2/u8x8_d_uc1601.p1.d ${OBJECTDIR}/u8g2/u8x8_d_uc1604.p1.d ${OBJECTDIR}/u8g2/u8x8_d_uc1608.p1.d ${OBJECTDIR}/u8g2/u8x8_d_uc1610.p1.d ${OBJECTDIR}/u8g2/u8x8_d_uc1611.p1.d ${OBJECTDIR}/u8g2/u8x8_d_uc1617.p1.d ${OBJECTDIR}/u8g2/u8x8_d_uc1638.p1.d ${OBJECTDIR}/u8g2/u8x8_d_uc1701_dogs102.p1.d ${OBJECTDIR}/u8g2/u8x8_d_uc1701_mini12864.p1.d ${OBJECTDIR}/u8g2/u8x8_debounce.p1.d ${OBJECTDIR}/u8g2/u8x8_display.p1.d ${OBJECTDIR}/u8g2/u8x8_fonts.p1.d ${OBJECTDIR}/u8g2/u8x8_gpio.p1.d ${OBJECTDIR}/u8g2/u8x8_input_value.p1.d ${OBJECTDIR}/u8g2/u8x8_message.p1.d ${OBJECTDIR}/u8g2/u8x8_selection_list.p1.d ${OBJECTDIR}/u8g2/u8x8_setup.p1.d ${OBJECTDIR}/u8g2/u8x8_string.p1.d ${OBJECTDIR}/u8g2/u8x8_u16toa.p1.d ${OBJECTDIR}/u8g2/u8x8_u8toa.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/main.p1 ${OBJECTDIR}/spi_master.p1 ${OBJECTDIR}/u8g2_pic18f.p1 ${OBJECTDIR}/u8g2/u8g2_bitmap.p1 ${OBJECTDIR}/u8g2/u8g2_box.p1 ${OBJECTDIR}/u8g2/u8g2_buffer.p1 ${OBJECTDIR}/u8g2/u8g2_circle.p1 ${OBJECTDIR}/u8g2/u8g2_cleardisplay.p1 ${OBJECTDIR}/u8g2/u8g2_d_memory.p1 ${OBJECTDIR}/u8g2/u8g2_d_setup.p1 ${OBJECTDIR}/u8g2/u8g2_font.p1 ${OBJECTDIR}/u8g2/u8g2_fonts.p1 ${OBJECTDIR}/u8g2/u8g2_hvline.p1 ${OBJECTDIR}/u8g2/u8g2_input_value.p1 ${OBJECTDIR}/u8g2/u8g2_intersection.p1 ${OBJECTDIR}/u8g2/u8g2_kerning.p1 ${OBJECTDIR}/u8g2/u8g2_line.p1 ${OBJECTDIR}/u8g2/u8g2_ll_hvline.p1 ${OBJECTDIR}/u8g2/u8g2_message.p1 ${OBJECTDIR}/u8g2/u8g2_polygon.p1 ${OBJECTDIR}/u8g2/u8g2_selection_list.p1 ${OBJECTDIR}/u8g2/u8g2_setup.p1 ${OBJECTDIR}/u8g2/u8log.p1 ${OBJECTDIR}/u8g2/u8log_u8g2.p1 ${OBJECTDIR}/u8g2/u8log_u8x8.p1 ${OBJECTDIR}/u8g2/u8x8_8x8.p1 ${OBJECTDIR}/u8g2/u8x8_byte.p1 ${OBJECTDIR}/u8g2/u8x8_cad.p1 ${OBJECTDIR}/u8g2/u8x8_d_a2printer.p1 ${OBJECTDIR}/u8g2/u8x8_d_il3820_296x128.p1 ${OBJECTDIR}/u8g2/u8x8_d_ist3020.p1 ${OBJECTDIR}/u8g2/u8x8_d_ks0108.p1 ${OBJECTDIR}/u8g2/u8x8_d_lc7981.p1 ${OBJECTDIR}/u8g2/u8x8_d_ld7032_60x32.p1 ${OBJECTDIR}/u8g2/u8x8_d_ls013b7dh03.p1 ${OBJECTDIR}/u8g2/u8x8_d_max7219.p1 ${OBJECTDIR}/u8g2/u8x8_d_pcd8544_84x48.p1 ${OBJECTDIR}/u8g2/u8x8_d_pcf8812.p1 ${OBJECTDIR}/u8g2/u8x8_d_pcf8814_hx1230.p1 ${OBJECTDIR}/u8g2/u8x8_d_sbn1661.p1 ${OBJECTDIR}/u8g2/u8x8_d_sed1330.p1 ${OBJECTDIR}/u8g2/u8x8_d_sh1106_64x32.p1 ${OBJECTDIR}/u8g2/u8x8_d_sh1106_72x40.p1 ${OBJECTDIR}/u8g2/u8x8_d_sh1107.p1 ${OBJECTDIR}/u8g2/u8x8_d_sh1108.p1 ${OBJECTDIR}/u8g2/u8x8_d_sh1122.p1 ${OBJECTDIR}/u8g2/u8x8_d_ssd1305.p1 ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_128x32.p1 ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_128x64_noname.p1 ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_48x64.p1 ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_64x32.p1 ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_64x48.p1 ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_96x16.p1 ${OBJECTDIR}/u8g2/u8x8_d_ssd1309.p1 ${OBJECTDIR}/u8g2/u8x8_d_ssd1317.p1 ${OBJECTDIR}/u8g2/u8x8_d_ssd1318.p1 ${OBJECTDIR}/u8g2/u8x8_d_ssd1322.p1 ${OBJECTDIR}/u8g2/u8x8_d_ssd1325.p1 ${OBJECTDIR}/u8g2/u8x8_d_ssd1326.p1 ${OBJECTDIR}/u8g2/u8x8_d_ssd1327.p1 ${OBJECTDIR}/u8g2/u8x8_d_ssd1329.p1 ${OBJECTDIR}/u8g2/u8x8_d_ssd1606_172x72.p1 ${OBJECTDIR}/u8g2/u8x8_d_ssd1607_200x200.p1 ${OBJECTDIR}/u8g2/u8x8_d_st75256.p1 ${OBJECTDIR}/u8g2/u8x8_d_st7565.p1 ${OBJECTDIR}/u8g2/u8x8_d_st7567.p1 ${OBJECTDIR}/u8g2/u8x8_d_st7586s_erc240160.p1 ${OBJECTDIR}/u8g2/u8x8_d_st7586s_s028hn118a.p1 ${OBJECTDIR}/u8g2/u8x8_d_st7588.p1 ${OBJECTDIR}/u8g2/u8x8_d_st7920.p1 ${OBJECTDIR}/u8g2/u8x8_d_stdio.p1 ${OBJECTDIR}/u8g2/u8x8_d_t6963.p1 ${OBJECTDIR}/u8g2/u8x8_d_uc1601.p1 ${OBJECTDIR}/u8g2/u8x8_d_uc1604.p1 ${OBJECTDIR}/u8g2/u8x8_d_uc1608.p1 ${OBJECTDIR}/u8g2/u8x8_d_uc1610.p1 ${OBJECTDIR}/u8g2/u8x8_d_uc1611.p1 ${OBJECTDIR}/u8g2/u8x8_d_uc1617.p1 ${OBJECTDIR}/u8g2/u8x8_d_uc1638.p1 ${OBJECTDIR}/u8g2/u8x8_d_uc1701_dogs102.p1 ${OBJECTDIR}/u8g2/u8x8_d_uc1701_mini12864.p1 ${OBJECTDIR}/u8g2/u8x8_debounce.p1 ${OBJECTDIR}/u8g2/u8x8_display.p1 ${OBJECTDIR}/u8g2/u8x8_fonts.p1 ${OBJECTDIR}/u8g2/u8x8_gpio.p1 ${OBJECTDIR}/u8g2/u8x8_input_value.p1 ${OBJECTDIR}/u8g2/u8x8_message.p1 ${OBJECTDIR}/u8g2/u8x8_selection_list.p1 ${OBJECTDIR}/u8g2/u8x8_setup.p1 ${OBJECTDIR}/u8g2/u8x8_string.p1 ${OBJECTDIR}/u8g2/u8x8_u16toa.p1 ${OBJECTDIR}/u8g2/u8x8_u8toa.p1

# Source Files
SOURCEFILES=main.c spi_master.c u8g2_pic18f.c u8g2/u8g2_bitmap.c u8g2/u8g2_box.c u8g2/u8g2_buffer.c u8g2/u8g2_circle.c u8g2/u8g2_cleardisplay.c u8g2/u8g2_d_memory.c u8g2/u8g2_d_setup.c u8g2/u8g2_font.c u8g2/u8g2_fonts.c u8g2/u8g2_hvline.c u8g2/u8g2_input_value.c u8g2/u8g2_intersection.c u8g2/u8g2_kerning.c u8g2/u8g2_line.c u8g2/u8g2_ll_hvline.c u8g2/u8g2_message.c u8g2/u8g2_polygon.c u8g2/u8g2_selection_list.c u8g2/u8g2_setup.c u8g2/u8log.c u8g2/u8log_u8g2.c u8g2/u8log_u8x8.c u8g2/u8x8_8x8.c u8g2/u8x8_byte.c u8g2/u8x8_cad.c u8g2/u8x8_d_a2printer.c u8g2/u8x8_d_il3820_296x128.c u8g2/u8x8_d_ist3020.c u8g2/u8x8_d_ks0108.c u8g2/u8x8_d_lc7981.c u8g2/u8x8_d_ld7032_60x32.c u8g2/u8x8_d_ls013b7dh03.c u8g2/u8x8_d_max7219.c u8g2/u8x8_d_pcd8544_84x48.c u8g2/u8x8_d_pcf8812.c u8g2/u8x8_d_pcf8814_hx1230.c u8g2/u8x8_d_sbn1661.c u8g2/u8x8_d_sed1330.c u8g2/u8x8_d_sh1106_64x32.c u8g2/u8x8_d_sh1106_72x40.c u8g2/u8x8_d_sh1107.c u8g2/u8x8_d_sh1108.c u8g2/u8x8_d_sh1122.c u8g2/u8x8_d_ssd1305.c u8g2/u8x8_d_ssd1306_128x32.c u8g2/u8x8_d_ssd1306_128x64_noname.c u8g2/u8x8_d_ssd1306_48x64.c u8g2/u8x8_d_ssd1306_64x32.c u8g2/u8x8_d_ssd1306_64x48.c u8g2/u8x8_d_ssd1306_96x16.c u8g2/u8x8_d_ssd1309.c u8g2/u8x8_d_ssd1317.c u8g2/u8x8_d_ssd1318.c u8g2/u8x8_d_ssd1322.c u8g2/u8x8_d_ssd1325.c u8g2/u8x8_d_ssd1326.c u8g2/u8x8_d_ssd1327.c u8g2/u8x8_d_ssd1329.c u8g2/u8x8_d_ssd1606_172x72.c u8g2/u8x8_d_ssd1607_200x200.c u8g2/u8x8_d_st75256.c u8g2/u8x8_d_st7565.c u8g2/u8x8_d_st7567.c u8g2/u8x8_d_st7586s_erc240160.c u8g2/u8x8_d_st7586s_s028hn118a.c u8g2/u8x8_d_st7588.c u8g2/u8x8_d_st7920.c u8g2/u8x8_d_stdio.c u8g2/u8x8_d_t6963.c u8g2/u8x8_d_uc1601.c u8g2/u8x8_d_uc1604.c u8g2/u8x8_d_uc1608.c u8g2/u8x8_d_uc1610.c u8g2/u8x8_d_uc1611.c u8g2/u8x8_d_uc1617.c u8g2/u8x8_d_uc1638.c u8g2/u8x8_d_uc1701_dogs102.c u8g2/u8x8_d_uc1701_mini12864.c u8g2/u8x8_debounce.c u8g2/u8x8_display.c u8g2/u8x8_fonts.c u8g2/u8x8_gpio.c u8g2/u8x8_input_value.c u8g2/u8x8_message.c u8g2/u8x8_selection_list.c u8g2/u8x8_setup.c u8g2/u8x8_string.c u8g2/u8x8_u16toa.c u8g2/u8x8_u8toa.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/PIC18F_SPI_U8G2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F45K20
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/main.p1: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.p1.d 
	@${RM} ${OBJECTDIR}/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/main.p1 main.c 
	@-${MV} ${OBJECTDIR}/main.d ${OBJECTDIR}/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/spi_master.p1: spi_master.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/spi_master.p1.d 
	@${RM} ${OBJECTDIR}/spi_master.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/spi_master.p1 spi_master.c 
	@-${MV} ${OBJECTDIR}/spi_master.d ${OBJECTDIR}/spi_master.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/spi_master.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2_pic18f.p1: u8g2_pic18f.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/u8g2_pic18f.p1.d 
	@${RM} ${OBJECTDIR}/u8g2_pic18f.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2_pic18f.p1 u8g2_pic18f.c 
	@-${MV} ${OBJECTDIR}/u8g2_pic18f.d ${OBJECTDIR}/u8g2_pic18f.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2_pic18f.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8g2_bitmap.p1: u8g2/u8g2_bitmap.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_bitmap.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_bitmap.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8g2_bitmap.p1 u8g2/u8g2_bitmap.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8g2_bitmap.d ${OBJECTDIR}/u8g2/u8g2_bitmap.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8g2_bitmap.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8g2_box.p1: u8g2/u8g2_box.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_box.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_box.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8g2_box.p1 u8g2/u8g2_box.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8g2_box.d ${OBJECTDIR}/u8g2/u8g2_box.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8g2_box.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8g2_buffer.p1: u8g2/u8g2_buffer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_buffer.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_buffer.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8g2_buffer.p1 u8g2/u8g2_buffer.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8g2_buffer.d ${OBJECTDIR}/u8g2/u8g2_buffer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8g2_buffer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8g2_circle.p1: u8g2/u8g2_circle.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_circle.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_circle.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8g2_circle.p1 u8g2/u8g2_circle.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8g2_circle.d ${OBJECTDIR}/u8g2/u8g2_circle.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8g2_circle.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8g2_cleardisplay.p1: u8g2/u8g2_cleardisplay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_cleardisplay.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_cleardisplay.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8g2_cleardisplay.p1 u8g2/u8g2_cleardisplay.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8g2_cleardisplay.d ${OBJECTDIR}/u8g2/u8g2_cleardisplay.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8g2_cleardisplay.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8g2_d_memory.p1: u8g2/u8g2_d_memory.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_d_memory.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_d_memory.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8g2_d_memory.p1 u8g2/u8g2_d_memory.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8g2_d_memory.d ${OBJECTDIR}/u8g2/u8g2_d_memory.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8g2_d_memory.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8g2_d_setup.p1: u8g2/u8g2_d_setup.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_d_setup.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_d_setup.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8g2_d_setup.p1 u8g2/u8g2_d_setup.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8g2_d_setup.d ${OBJECTDIR}/u8g2/u8g2_d_setup.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8g2_d_setup.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8g2_font.p1: u8g2/u8g2_font.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_font.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_font.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8g2_font.p1 u8g2/u8g2_font.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8g2_font.d ${OBJECTDIR}/u8g2/u8g2_font.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8g2_font.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8g2_fonts.p1: u8g2/u8g2_fonts.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_fonts.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_fonts.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8g2_fonts.p1 u8g2/u8g2_fonts.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8g2_fonts.d ${OBJECTDIR}/u8g2/u8g2_fonts.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8g2_fonts.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8g2_hvline.p1: u8g2/u8g2_hvline.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_hvline.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_hvline.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8g2_hvline.p1 u8g2/u8g2_hvline.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8g2_hvline.d ${OBJECTDIR}/u8g2/u8g2_hvline.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8g2_hvline.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8g2_input_value.p1: u8g2/u8g2_input_value.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_input_value.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_input_value.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8g2_input_value.p1 u8g2/u8g2_input_value.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8g2_input_value.d ${OBJECTDIR}/u8g2/u8g2_input_value.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8g2_input_value.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8g2_intersection.p1: u8g2/u8g2_intersection.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_intersection.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_intersection.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8g2_intersection.p1 u8g2/u8g2_intersection.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8g2_intersection.d ${OBJECTDIR}/u8g2/u8g2_intersection.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8g2_intersection.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8g2_kerning.p1: u8g2/u8g2_kerning.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_kerning.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_kerning.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8g2_kerning.p1 u8g2/u8g2_kerning.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8g2_kerning.d ${OBJECTDIR}/u8g2/u8g2_kerning.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8g2_kerning.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8g2_line.p1: u8g2/u8g2_line.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_line.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_line.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8g2_line.p1 u8g2/u8g2_line.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8g2_line.d ${OBJECTDIR}/u8g2/u8g2_line.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8g2_line.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8g2_ll_hvline.p1: u8g2/u8g2_ll_hvline.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_ll_hvline.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_ll_hvline.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8g2_ll_hvline.p1 u8g2/u8g2_ll_hvline.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8g2_ll_hvline.d ${OBJECTDIR}/u8g2/u8g2_ll_hvline.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8g2_ll_hvline.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8g2_message.p1: u8g2/u8g2_message.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_message.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_message.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8g2_message.p1 u8g2/u8g2_message.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8g2_message.d ${OBJECTDIR}/u8g2/u8g2_message.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8g2_message.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8g2_polygon.p1: u8g2/u8g2_polygon.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_polygon.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_polygon.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8g2_polygon.p1 u8g2/u8g2_polygon.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8g2_polygon.d ${OBJECTDIR}/u8g2/u8g2_polygon.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8g2_polygon.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8g2_selection_list.p1: u8g2/u8g2_selection_list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_selection_list.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_selection_list.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8g2_selection_list.p1 u8g2/u8g2_selection_list.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8g2_selection_list.d ${OBJECTDIR}/u8g2/u8g2_selection_list.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8g2_selection_list.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8g2_setup.p1: u8g2/u8g2_setup.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_setup.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_setup.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8g2_setup.p1 u8g2/u8g2_setup.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8g2_setup.d ${OBJECTDIR}/u8g2/u8g2_setup.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8g2_setup.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8log.p1: u8g2/u8log.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8log.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8log.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8log.p1 u8g2/u8log.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8log.d ${OBJECTDIR}/u8g2/u8log.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8log.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8log_u8g2.p1: u8g2/u8log_u8g2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8log_u8g2.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8log_u8g2.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8log_u8g2.p1 u8g2/u8log_u8g2.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8log_u8g2.d ${OBJECTDIR}/u8g2/u8log_u8g2.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8log_u8g2.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8log_u8x8.p1: u8g2/u8log_u8x8.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8log_u8x8.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8log_u8x8.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8log_u8x8.p1 u8g2/u8log_u8x8.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8log_u8x8.d ${OBJECTDIR}/u8g2/u8log_u8x8.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8log_u8x8.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_8x8.p1: u8g2/u8x8_8x8.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_8x8.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_8x8.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_8x8.p1 u8g2/u8x8_8x8.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_8x8.d ${OBJECTDIR}/u8g2/u8x8_8x8.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_8x8.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_byte.p1: u8g2/u8x8_byte.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_byte.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_byte.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_byte.p1 u8g2/u8x8_byte.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_byte.d ${OBJECTDIR}/u8g2/u8x8_byte.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_byte.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_cad.p1: u8g2/u8x8_cad.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_cad.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_cad.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_cad.p1 u8g2/u8x8_cad.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_cad.d ${OBJECTDIR}/u8g2/u8x8_cad.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_cad.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_a2printer.p1: u8g2/u8x8_d_a2printer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_a2printer.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_a2printer.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_a2printer.p1 u8g2/u8x8_d_a2printer.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_a2printer.d ${OBJECTDIR}/u8g2/u8x8_d_a2printer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_a2printer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_il3820_296x128.p1: u8g2/u8x8_d_il3820_296x128.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_il3820_296x128.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_il3820_296x128.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_il3820_296x128.p1 u8g2/u8x8_d_il3820_296x128.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_il3820_296x128.d ${OBJECTDIR}/u8g2/u8x8_d_il3820_296x128.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_il3820_296x128.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_ist3020.p1: u8g2/u8x8_d_ist3020.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ist3020.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ist3020.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_ist3020.p1 u8g2/u8x8_d_ist3020.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_ist3020.d ${OBJECTDIR}/u8g2/u8x8_d_ist3020.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_ist3020.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_ks0108.p1: u8g2/u8x8_d_ks0108.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ks0108.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ks0108.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_ks0108.p1 u8g2/u8x8_d_ks0108.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_ks0108.d ${OBJECTDIR}/u8g2/u8x8_d_ks0108.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_ks0108.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_lc7981.p1: u8g2/u8x8_d_lc7981.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_lc7981.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_lc7981.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_lc7981.p1 u8g2/u8x8_d_lc7981.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_lc7981.d ${OBJECTDIR}/u8g2/u8x8_d_lc7981.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_lc7981.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_ld7032_60x32.p1: u8g2/u8x8_d_ld7032_60x32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ld7032_60x32.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ld7032_60x32.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_ld7032_60x32.p1 u8g2/u8x8_d_ld7032_60x32.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_ld7032_60x32.d ${OBJECTDIR}/u8g2/u8x8_d_ld7032_60x32.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_ld7032_60x32.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_ls013b7dh03.p1: u8g2/u8x8_d_ls013b7dh03.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ls013b7dh03.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ls013b7dh03.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_ls013b7dh03.p1 u8g2/u8x8_d_ls013b7dh03.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_ls013b7dh03.d ${OBJECTDIR}/u8g2/u8x8_d_ls013b7dh03.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_ls013b7dh03.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_max7219.p1: u8g2/u8x8_d_max7219.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_max7219.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_max7219.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_max7219.p1 u8g2/u8x8_d_max7219.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_max7219.d ${OBJECTDIR}/u8g2/u8x8_d_max7219.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_max7219.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_pcd8544_84x48.p1: u8g2/u8x8_d_pcd8544_84x48.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_pcd8544_84x48.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_pcd8544_84x48.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_pcd8544_84x48.p1 u8g2/u8x8_d_pcd8544_84x48.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_pcd8544_84x48.d ${OBJECTDIR}/u8g2/u8x8_d_pcd8544_84x48.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_pcd8544_84x48.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_pcf8812.p1: u8g2/u8x8_d_pcf8812.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_pcf8812.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_pcf8812.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_pcf8812.p1 u8g2/u8x8_d_pcf8812.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_pcf8812.d ${OBJECTDIR}/u8g2/u8x8_d_pcf8812.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_pcf8812.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_pcf8814_hx1230.p1: u8g2/u8x8_d_pcf8814_hx1230.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_pcf8814_hx1230.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_pcf8814_hx1230.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_pcf8814_hx1230.p1 u8g2/u8x8_d_pcf8814_hx1230.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_pcf8814_hx1230.d ${OBJECTDIR}/u8g2/u8x8_d_pcf8814_hx1230.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_pcf8814_hx1230.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_sbn1661.p1: u8g2/u8x8_d_sbn1661.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_sbn1661.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_sbn1661.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_sbn1661.p1 u8g2/u8x8_d_sbn1661.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_sbn1661.d ${OBJECTDIR}/u8g2/u8x8_d_sbn1661.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_sbn1661.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_sed1330.p1: u8g2/u8x8_d_sed1330.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_sed1330.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_sed1330.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_sed1330.p1 u8g2/u8x8_d_sed1330.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_sed1330.d ${OBJECTDIR}/u8g2/u8x8_d_sed1330.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_sed1330.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_sh1106_64x32.p1: u8g2/u8x8_d_sh1106_64x32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_sh1106_64x32.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_sh1106_64x32.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_sh1106_64x32.p1 u8g2/u8x8_d_sh1106_64x32.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_sh1106_64x32.d ${OBJECTDIR}/u8g2/u8x8_d_sh1106_64x32.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_sh1106_64x32.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_sh1106_72x40.p1: u8g2/u8x8_d_sh1106_72x40.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_sh1106_72x40.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_sh1106_72x40.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_sh1106_72x40.p1 u8g2/u8x8_d_sh1106_72x40.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_sh1106_72x40.d ${OBJECTDIR}/u8g2/u8x8_d_sh1106_72x40.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_sh1106_72x40.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_sh1107.p1: u8g2/u8x8_d_sh1107.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_sh1107.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_sh1107.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_sh1107.p1 u8g2/u8x8_d_sh1107.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_sh1107.d ${OBJECTDIR}/u8g2/u8x8_d_sh1107.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_sh1107.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_sh1108.p1: u8g2/u8x8_d_sh1108.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_sh1108.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_sh1108.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_sh1108.p1 u8g2/u8x8_d_sh1108.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_sh1108.d ${OBJECTDIR}/u8g2/u8x8_d_sh1108.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_sh1108.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_sh1122.p1: u8g2/u8x8_d_sh1122.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_sh1122.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_sh1122.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_sh1122.p1 u8g2/u8x8_d_sh1122.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_sh1122.d ${OBJECTDIR}/u8g2/u8x8_d_sh1122.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_sh1122.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_ssd1305.p1: u8g2/u8x8_d_ssd1305.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ssd1305.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ssd1305.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_ssd1305.p1 u8g2/u8x8_d_ssd1305.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_ssd1305.d ${OBJECTDIR}/u8g2/u8x8_d_ssd1305.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_ssd1305.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_ssd1306_128x32.p1: u8g2/u8x8_d_ssd1306_128x32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_128x32.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_128x32.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_128x32.p1 u8g2/u8x8_d_ssd1306_128x32.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_128x32.d ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_128x32.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_128x32.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_ssd1306_128x64_noname.p1: u8g2/u8x8_d_ssd1306_128x64_noname.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_128x64_noname.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_128x64_noname.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_128x64_noname.p1 u8g2/u8x8_d_ssd1306_128x64_noname.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_128x64_noname.d ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_128x64_noname.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_128x64_noname.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_ssd1306_48x64.p1: u8g2/u8x8_d_ssd1306_48x64.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_48x64.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_48x64.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_48x64.p1 u8g2/u8x8_d_ssd1306_48x64.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_48x64.d ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_48x64.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_48x64.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_ssd1306_64x32.p1: u8g2/u8x8_d_ssd1306_64x32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_64x32.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_64x32.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_64x32.p1 u8g2/u8x8_d_ssd1306_64x32.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_64x32.d ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_64x32.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_64x32.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_ssd1306_64x48.p1: u8g2/u8x8_d_ssd1306_64x48.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_64x48.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_64x48.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_64x48.p1 u8g2/u8x8_d_ssd1306_64x48.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_64x48.d ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_64x48.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_64x48.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_ssd1306_96x16.p1: u8g2/u8x8_d_ssd1306_96x16.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_96x16.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_96x16.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_96x16.p1 u8g2/u8x8_d_ssd1306_96x16.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_96x16.d ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_96x16.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_96x16.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_ssd1309.p1: u8g2/u8x8_d_ssd1309.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ssd1309.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ssd1309.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_ssd1309.p1 u8g2/u8x8_d_ssd1309.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_ssd1309.d ${OBJECTDIR}/u8g2/u8x8_d_ssd1309.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_ssd1309.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_ssd1317.p1: u8g2/u8x8_d_ssd1317.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ssd1317.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ssd1317.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_ssd1317.p1 u8g2/u8x8_d_ssd1317.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_ssd1317.d ${OBJECTDIR}/u8g2/u8x8_d_ssd1317.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_ssd1317.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_ssd1318.p1: u8g2/u8x8_d_ssd1318.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ssd1318.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ssd1318.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_ssd1318.p1 u8g2/u8x8_d_ssd1318.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_ssd1318.d ${OBJECTDIR}/u8g2/u8x8_d_ssd1318.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_ssd1318.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_ssd1322.p1: u8g2/u8x8_d_ssd1322.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ssd1322.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ssd1322.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_ssd1322.p1 u8g2/u8x8_d_ssd1322.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_ssd1322.d ${OBJECTDIR}/u8g2/u8x8_d_ssd1322.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_ssd1322.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_ssd1325.p1: u8g2/u8x8_d_ssd1325.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ssd1325.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ssd1325.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_ssd1325.p1 u8g2/u8x8_d_ssd1325.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_ssd1325.d ${OBJECTDIR}/u8g2/u8x8_d_ssd1325.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_ssd1325.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_ssd1326.p1: u8g2/u8x8_d_ssd1326.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ssd1326.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ssd1326.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_ssd1326.p1 u8g2/u8x8_d_ssd1326.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_ssd1326.d ${OBJECTDIR}/u8g2/u8x8_d_ssd1326.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_ssd1326.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_ssd1327.p1: u8g2/u8x8_d_ssd1327.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ssd1327.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ssd1327.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_ssd1327.p1 u8g2/u8x8_d_ssd1327.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_ssd1327.d ${OBJECTDIR}/u8g2/u8x8_d_ssd1327.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_ssd1327.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_ssd1329.p1: u8g2/u8x8_d_ssd1329.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ssd1329.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ssd1329.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_ssd1329.p1 u8g2/u8x8_d_ssd1329.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_ssd1329.d ${OBJECTDIR}/u8g2/u8x8_d_ssd1329.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_ssd1329.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_ssd1606_172x72.p1: u8g2/u8x8_d_ssd1606_172x72.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ssd1606_172x72.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ssd1606_172x72.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_ssd1606_172x72.p1 u8g2/u8x8_d_ssd1606_172x72.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_ssd1606_172x72.d ${OBJECTDIR}/u8g2/u8x8_d_ssd1606_172x72.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_ssd1606_172x72.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_ssd1607_200x200.p1: u8g2/u8x8_d_ssd1607_200x200.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ssd1607_200x200.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ssd1607_200x200.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_ssd1607_200x200.p1 u8g2/u8x8_d_ssd1607_200x200.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_ssd1607_200x200.d ${OBJECTDIR}/u8g2/u8x8_d_ssd1607_200x200.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_ssd1607_200x200.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_st75256.p1: u8g2/u8x8_d_st75256.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_st75256.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_st75256.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_st75256.p1 u8g2/u8x8_d_st75256.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_st75256.d ${OBJECTDIR}/u8g2/u8x8_d_st75256.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_st75256.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_st7565.p1: u8g2/u8x8_d_st7565.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_st7565.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_st7565.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_st7565.p1 u8g2/u8x8_d_st7565.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_st7565.d ${OBJECTDIR}/u8g2/u8x8_d_st7565.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_st7565.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_st7567.p1: u8g2/u8x8_d_st7567.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_st7567.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_st7567.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_st7567.p1 u8g2/u8x8_d_st7567.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_st7567.d ${OBJECTDIR}/u8g2/u8x8_d_st7567.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_st7567.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_st7586s_erc240160.p1: u8g2/u8x8_d_st7586s_erc240160.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_st7586s_erc240160.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_st7586s_erc240160.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_st7586s_erc240160.p1 u8g2/u8x8_d_st7586s_erc240160.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_st7586s_erc240160.d ${OBJECTDIR}/u8g2/u8x8_d_st7586s_erc240160.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_st7586s_erc240160.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_st7586s_s028hn118a.p1: u8g2/u8x8_d_st7586s_s028hn118a.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_st7586s_s028hn118a.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_st7586s_s028hn118a.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_st7586s_s028hn118a.p1 u8g2/u8x8_d_st7586s_s028hn118a.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_st7586s_s028hn118a.d ${OBJECTDIR}/u8g2/u8x8_d_st7586s_s028hn118a.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_st7586s_s028hn118a.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_st7588.p1: u8g2/u8x8_d_st7588.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_st7588.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_st7588.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_st7588.p1 u8g2/u8x8_d_st7588.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_st7588.d ${OBJECTDIR}/u8g2/u8x8_d_st7588.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_st7588.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_st7920.p1: u8g2/u8x8_d_st7920.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_st7920.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_st7920.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_st7920.p1 u8g2/u8x8_d_st7920.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_st7920.d ${OBJECTDIR}/u8g2/u8x8_d_st7920.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_st7920.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_stdio.p1: u8g2/u8x8_d_stdio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_stdio.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_stdio.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_stdio.p1 u8g2/u8x8_d_stdio.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_stdio.d ${OBJECTDIR}/u8g2/u8x8_d_stdio.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_stdio.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_t6963.p1: u8g2/u8x8_d_t6963.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_t6963.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_t6963.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_t6963.p1 u8g2/u8x8_d_t6963.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_t6963.d ${OBJECTDIR}/u8g2/u8x8_d_t6963.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_t6963.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_uc1601.p1: u8g2/u8x8_d_uc1601.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_uc1601.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_uc1601.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_uc1601.p1 u8g2/u8x8_d_uc1601.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_uc1601.d ${OBJECTDIR}/u8g2/u8x8_d_uc1601.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_uc1601.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_uc1604.p1: u8g2/u8x8_d_uc1604.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_uc1604.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_uc1604.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_uc1604.p1 u8g2/u8x8_d_uc1604.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_uc1604.d ${OBJECTDIR}/u8g2/u8x8_d_uc1604.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_uc1604.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_uc1608.p1: u8g2/u8x8_d_uc1608.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_uc1608.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_uc1608.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_uc1608.p1 u8g2/u8x8_d_uc1608.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_uc1608.d ${OBJECTDIR}/u8g2/u8x8_d_uc1608.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_uc1608.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_uc1610.p1: u8g2/u8x8_d_uc1610.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_uc1610.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_uc1610.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_uc1610.p1 u8g2/u8x8_d_uc1610.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_uc1610.d ${OBJECTDIR}/u8g2/u8x8_d_uc1610.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_uc1610.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_uc1611.p1: u8g2/u8x8_d_uc1611.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_uc1611.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_uc1611.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_uc1611.p1 u8g2/u8x8_d_uc1611.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_uc1611.d ${OBJECTDIR}/u8g2/u8x8_d_uc1611.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_uc1611.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_uc1617.p1: u8g2/u8x8_d_uc1617.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_uc1617.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_uc1617.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_uc1617.p1 u8g2/u8x8_d_uc1617.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_uc1617.d ${OBJECTDIR}/u8g2/u8x8_d_uc1617.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_uc1617.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_uc1638.p1: u8g2/u8x8_d_uc1638.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_uc1638.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_uc1638.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_uc1638.p1 u8g2/u8x8_d_uc1638.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_uc1638.d ${OBJECTDIR}/u8g2/u8x8_d_uc1638.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_uc1638.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_uc1701_dogs102.p1: u8g2/u8x8_d_uc1701_dogs102.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_uc1701_dogs102.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_uc1701_dogs102.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_uc1701_dogs102.p1 u8g2/u8x8_d_uc1701_dogs102.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_uc1701_dogs102.d ${OBJECTDIR}/u8g2/u8x8_d_uc1701_dogs102.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_uc1701_dogs102.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_uc1701_mini12864.p1: u8g2/u8x8_d_uc1701_mini12864.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_uc1701_mini12864.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_uc1701_mini12864.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_uc1701_mini12864.p1 u8g2/u8x8_d_uc1701_mini12864.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_uc1701_mini12864.d ${OBJECTDIR}/u8g2/u8x8_d_uc1701_mini12864.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_uc1701_mini12864.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_debounce.p1: u8g2/u8x8_debounce.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_debounce.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_debounce.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_debounce.p1 u8g2/u8x8_debounce.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_debounce.d ${OBJECTDIR}/u8g2/u8x8_debounce.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_debounce.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_display.p1: u8g2/u8x8_display.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_display.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_display.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_display.p1 u8g2/u8x8_display.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_display.d ${OBJECTDIR}/u8g2/u8x8_display.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_display.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_fonts.p1: u8g2/u8x8_fonts.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_fonts.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_fonts.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_fonts.p1 u8g2/u8x8_fonts.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_fonts.d ${OBJECTDIR}/u8g2/u8x8_fonts.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_fonts.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_gpio.p1: u8g2/u8x8_gpio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_gpio.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_gpio.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_gpio.p1 u8g2/u8x8_gpio.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_gpio.d ${OBJECTDIR}/u8g2/u8x8_gpio.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_gpio.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_input_value.p1: u8g2/u8x8_input_value.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_input_value.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_input_value.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_input_value.p1 u8g2/u8x8_input_value.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_input_value.d ${OBJECTDIR}/u8g2/u8x8_input_value.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_input_value.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_message.p1: u8g2/u8x8_message.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_message.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_message.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_message.p1 u8g2/u8x8_message.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_message.d ${OBJECTDIR}/u8g2/u8x8_message.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_message.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_selection_list.p1: u8g2/u8x8_selection_list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_selection_list.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_selection_list.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_selection_list.p1 u8g2/u8x8_selection_list.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_selection_list.d ${OBJECTDIR}/u8g2/u8x8_selection_list.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_selection_list.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_setup.p1: u8g2/u8x8_setup.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_setup.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_setup.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_setup.p1 u8g2/u8x8_setup.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_setup.d ${OBJECTDIR}/u8g2/u8x8_setup.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_setup.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_string.p1: u8g2/u8x8_string.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_string.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_string.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_string.p1 u8g2/u8x8_string.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_string.d ${OBJECTDIR}/u8g2/u8x8_string.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_string.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_u16toa.p1: u8g2/u8x8_u16toa.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_u16toa.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_u16toa.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_u16toa.p1 u8g2/u8x8_u16toa.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_u16toa.d ${OBJECTDIR}/u8g2/u8x8_u16toa.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_u16toa.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_u8toa.p1: u8g2/u8x8_u8toa.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_u8toa.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_u8toa.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_u8toa.p1 u8g2/u8x8_u8toa.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_u8toa.d ${OBJECTDIR}/u8g2/u8x8_u8toa.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_u8toa.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/main.p1: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.p1.d 
	@${RM} ${OBJECTDIR}/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/main.p1 main.c 
	@-${MV} ${OBJECTDIR}/main.d ${OBJECTDIR}/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/spi_master.p1: spi_master.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/spi_master.p1.d 
	@${RM} ${OBJECTDIR}/spi_master.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/spi_master.p1 spi_master.c 
	@-${MV} ${OBJECTDIR}/spi_master.d ${OBJECTDIR}/spi_master.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/spi_master.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2_pic18f.p1: u8g2_pic18f.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/u8g2_pic18f.p1.d 
	@${RM} ${OBJECTDIR}/u8g2_pic18f.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2_pic18f.p1 u8g2_pic18f.c 
	@-${MV} ${OBJECTDIR}/u8g2_pic18f.d ${OBJECTDIR}/u8g2_pic18f.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2_pic18f.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8g2_bitmap.p1: u8g2/u8g2_bitmap.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_bitmap.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_bitmap.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8g2_bitmap.p1 u8g2/u8g2_bitmap.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8g2_bitmap.d ${OBJECTDIR}/u8g2/u8g2_bitmap.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8g2_bitmap.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8g2_box.p1: u8g2/u8g2_box.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_box.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_box.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8g2_box.p1 u8g2/u8g2_box.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8g2_box.d ${OBJECTDIR}/u8g2/u8g2_box.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8g2_box.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8g2_buffer.p1: u8g2/u8g2_buffer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_buffer.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_buffer.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8g2_buffer.p1 u8g2/u8g2_buffer.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8g2_buffer.d ${OBJECTDIR}/u8g2/u8g2_buffer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8g2_buffer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8g2_circle.p1: u8g2/u8g2_circle.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_circle.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_circle.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8g2_circle.p1 u8g2/u8g2_circle.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8g2_circle.d ${OBJECTDIR}/u8g2/u8g2_circle.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8g2_circle.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8g2_cleardisplay.p1: u8g2/u8g2_cleardisplay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_cleardisplay.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_cleardisplay.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8g2_cleardisplay.p1 u8g2/u8g2_cleardisplay.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8g2_cleardisplay.d ${OBJECTDIR}/u8g2/u8g2_cleardisplay.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8g2_cleardisplay.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8g2_d_memory.p1: u8g2/u8g2_d_memory.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_d_memory.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_d_memory.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8g2_d_memory.p1 u8g2/u8g2_d_memory.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8g2_d_memory.d ${OBJECTDIR}/u8g2/u8g2_d_memory.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8g2_d_memory.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8g2_d_setup.p1: u8g2/u8g2_d_setup.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_d_setup.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_d_setup.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8g2_d_setup.p1 u8g2/u8g2_d_setup.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8g2_d_setup.d ${OBJECTDIR}/u8g2/u8g2_d_setup.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8g2_d_setup.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8g2_font.p1: u8g2/u8g2_font.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_font.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_font.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8g2_font.p1 u8g2/u8g2_font.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8g2_font.d ${OBJECTDIR}/u8g2/u8g2_font.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8g2_font.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8g2_fonts.p1: u8g2/u8g2_fonts.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_fonts.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_fonts.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8g2_fonts.p1 u8g2/u8g2_fonts.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8g2_fonts.d ${OBJECTDIR}/u8g2/u8g2_fonts.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8g2_fonts.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8g2_hvline.p1: u8g2/u8g2_hvline.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_hvline.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_hvline.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8g2_hvline.p1 u8g2/u8g2_hvline.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8g2_hvline.d ${OBJECTDIR}/u8g2/u8g2_hvline.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8g2_hvline.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8g2_input_value.p1: u8g2/u8g2_input_value.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_input_value.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_input_value.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8g2_input_value.p1 u8g2/u8g2_input_value.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8g2_input_value.d ${OBJECTDIR}/u8g2/u8g2_input_value.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8g2_input_value.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8g2_intersection.p1: u8g2/u8g2_intersection.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_intersection.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_intersection.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8g2_intersection.p1 u8g2/u8g2_intersection.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8g2_intersection.d ${OBJECTDIR}/u8g2/u8g2_intersection.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8g2_intersection.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8g2_kerning.p1: u8g2/u8g2_kerning.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_kerning.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_kerning.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8g2_kerning.p1 u8g2/u8g2_kerning.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8g2_kerning.d ${OBJECTDIR}/u8g2/u8g2_kerning.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8g2_kerning.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8g2_line.p1: u8g2/u8g2_line.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_line.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_line.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8g2_line.p1 u8g2/u8g2_line.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8g2_line.d ${OBJECTDIR}/u8g2/u8g2_line.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8g2_line.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8g2_ll_hvline.p1: u8g2/u8g2_ll_hvline.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_ll_hvline.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_ll_hvline.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8g2_ll_hvline.p1 u8g2/u8g2_ll_hvline.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8g2_ll_hvline.d ${OBJECTDIR}/u8g2/u8g2_ll_hvline.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8g2_ll_hvline.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8g2_message.p1: u8g2/u8g2_message.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_message.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_message.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8g2_message.p1 u8g2/u8g2_message.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8g2_message.d ${OBJECTDIR}/u8g2/u8g2_message.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8g2_message.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8g2_polygon.p1: u8g2/u8g2_polygon.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_polygon.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_polygon.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8g2_polygon.p1 u8g2/u8g2_polygon.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8g2_polygon.d ${OBJECTDIR}/u8g2/u8g2_polygon.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8g2_polygon.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8g2_selection_list.p1: u8g2/u8g2_selection_list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_selection_list.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_selection_list.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8g2_selection_list.p1 u8g2/u8g2_selection_list.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8g2_selection_list.d ${OBJECTDIR}/u8g2/u8g2_selection_list.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8g2_selection_list.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8g2_setup.p1: u8g2/u8g2_setup.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_setup.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_setup.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8g2_setup.p1 u8g2/u8g2_setup.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8g2_setup.d ${OBJECTDIR}/u8g2/u8g2_setup.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8g2_setup.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8log.p1: u8g2/u8log.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8log.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8log.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8log.p1 u8g2/u8log.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8log.d ${OBJECTDIR}/u8g2/u8log.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8log.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8log_u8g2.p1: u8g2/u8log_u8g2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8log_u8g2.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8log_u8g2.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8log_u8g2.p1 u8g2/u8log_u8g2.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8log_u8g2.d ${OBJECTDIR}/u8g2/u8log_u8g2.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8log_u8g2.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8log_u8x8.p1: u8g2/u8log_u8x8.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8log_u8x8.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8log_u8x8.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8log_u8x8.p1 u8g2/u8log_u8x8.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8log_u8x8.d ${OBJECTDIR}/u8g2/u8log_u8x8.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8log_u8x8.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_8x8.p1: u8g2/u8x8_8x8.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_8x8.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_8x8.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_8x8.p1 u8g2/u8x8_8x8.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_8x8.d ${OBJECTDIR}/u8g2/u8x8_8x8.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_8x8.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_byte.p1: u8g2/u8x8_byte.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_byte.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_byte.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_byte.p1 u8g2/u8x8_byte.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_byte.d ${OBJECTDIR}/u8g2/u8x8_byte.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_byte.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_cad.p1: u8g2/u8x8_cad.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_cad.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_cad.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_cad.p1 u8g2/u8x8_cad.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_cad.d ${OBJECTDIR}/u8g2/u8x8_cad.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_cad.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_a2printer.p1: u8g2/u8x8_d_a2printer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_a2printer.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_a2printer.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_a2printer.p1 u8g2/u8x8_d_a2printer.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_a2printer.d ${OBJECTDIR}/u8g2/u8x8_d_a2printer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_a2printer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_il3820_296x128.p1: u8g2/u8x8_d_il3820_296x128.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_il3820_296x128.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_il3820_296x128.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_il3820_296x128.p1 u8g2/u8x8_d_il3820_296x128.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_il3820_296x128.d ${OBJECTDIR}/u8g2/u8x8_d_il3820_296x128.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_il3820_296x128.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_ist3020.p1: u8g2/u8x8_d_ist3020.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ist3020.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ist3020.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_ist3020.p1 u8g2/u8x8_d_ist3020.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_ist3020.d ${OBJECTDIR}/u8g2/u8x8_d_ist3020.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_ist3020.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_ks0108.p1: u8g2/u8x8_d_ks0108.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ks0108.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ks0108.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_ks0108.p1 u8g2/u8x8_d_ks0108.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_ks0108.d ${OBJECTDIR}/u8g2/u8x8_d_ks0108.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_ks0108.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_lc7981.p1: u8g2/u8x8_d_lc7981.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_lc7981.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_lc7981.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_lc7981.p1 u8g2/u8x8_d_lc7981.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_lc7981.d ${OBJECTDIR}/u8g2/u8x8_d_lc7981.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_lc7981.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_ld7032_60x32.p1: u8g2/u8x8_d_ld7032_60x32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ld7032_60x32.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ld7032_60x32.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_ld7032_60x32.p1 u8g2/u8x8_d_ld7032_60x32.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_ld7032_60x32.d ${OBJECTDIR}/u8g2/u8x8_d_ld7032_60x32.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_ld7032_60x32.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_ls013b7dh03.p1: u8g2/u8x8_d_ls013b7dh03.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ls013b7dh03.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ls013b7dh03.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_ls013b7dh03.p1 u8g2/u8x8_d_ls013b7dh03.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_ls013b7dh03.d ${OBJECTDIR}/u8g2/u8x8_d_ls013b7dh03.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_ls013b7dh03.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_max7219.p1: u8g2/u8x8_d_max7219.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_max7219.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_max7219.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_max7219.p1 u8g2/u8x8_d_max7219.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_max7219.d ${OBJECTDIR}/u8g2/u8x8_d_max7219.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_max7219.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_pcd8544_84x48.p1: u8g2/u8x8_d_pcd8544_84x48.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_pcd8544_84x48.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_pcd8544_84x48.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_pcd8544_84x48.p1 u8g2/u8x8_d_pcd8544_84x48.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_pcd8544_84x48.d ${OBJECTDIR}/u8g2/u8x8_d_pcd8544_84x48.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_pcd8544_84x48.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_pcf8812.p1: u8g2/u8x8_d_pcf8812.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_pcf8812.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_pcf8812.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_pcf8812.p1 u8g2/u8x8_d_pcf8812.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_pcf8812.d ${OBJECTDIR}/u8g2/u8x8_d_pcf8812.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_pcf8812.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_pcf8814_hx1230.p1: u8g2/u8x8_d_pcf8814_hx1230.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_pcf8814_hx1230.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_pcf8814_hx1230.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_pcf8814_hx1230.p1 u8g2/u8x8_d_pcf8814_hx1230.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_pcf8814_hx1230.d ${OBJECTDIR}/u8g2/u8x8_d_pcf8814_hx1230.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_pcf8814_hx1230.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_sbn1661.p1: u8g2/u8x8_d_sbn1661.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_sbn1661.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_sbn1661.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_sbn1661.p1 u8g2/u8x8_d_sbn1661.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_sbn1661.d ${OBJECTDIR}/u8g2/u8x8_d_sbn1661.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_sbn1661.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_sed1330.p1: u8g2/u8x8_d_sed1330.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_sed1330.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_sed1330.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_sed1330.p1 u8g2/u8x8_d_sed1330.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_sed1330.d ${OBJECTDIR}/u8g2/u8x8_d_sed1330.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_sed1330.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_sh1106_64x32.p1: u8g2/u8x8_d_sh1106_64x32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_sh1106_64x32.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_sh1106_64x32.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_sh1106_64x32.p1 u8g2/u8x8_d_sh1106_64x32.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_sh1106_64x32.d ${OBJECTDIR}/u8g2/u8x8_d_sh1106_64x32.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_sh1106_64x32.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_sh1106_72x40.p1: u8g2/u8x8_d_sh1106_72x40.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_sh1106_72x40.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_sh1106_72x40.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_sh1106_72x40.p1 u8g2/u8x8_d_sh1106_72x40.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_sh1106_72x40.d ${OBJECTDIR}/u8g2/u8x8_d_sh1106_72x40.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_sh1106_72x40.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_sh1107.p1: u8g2/u8x8_d_sh1107.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_sh1107.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_sh1107.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_sh1107.p1 u8g2/u8x8_d_sh1107.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_sh1107.d ${OBJECTDIR}/u8g2/u8x8_d_sh1107.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_sh1107.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_sh1108.p1: u8g2/u8x8_d_sh1108.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_sh1108.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_sh1108.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_sh1108.p1 u8g2/u8x8_d_sh1108.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_sh1108.d ${OBJECTDIR}/u8g2/u8x8_d_sh1108.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_sh1108.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_sh1122.p1: u8g2/u8x8_d_sh1122.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_sh1122.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_sh1122.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_sh1122.p1 u8g2/u8x8_d_sh1122.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_sh1122.d ${OBJECTDIR}/u8g2/u8x8_d_sh1122.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_sh1122.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_ssd1305.p1: u8g2/u8x8_d_ssd1305.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ssd1305.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ssd1305.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_ssd1305.p1 u8g2/u8x8_d_ssd1305.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_ssd1305.d ${OBJECTDIR}/u8g2/u8x8_d_ssd1305.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_ssd1305.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_ssd1306_128x32.p1: u8g2/u8x8_d_ssd1306_128x32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_128x32.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_128x32.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_128x32.p1 u8g2/u8x8_d_ssd1306_128x32.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_128x32.d ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_128x32.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_128x32.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_ssd1306_128x64_noname.p1: u8g2/u8x8_d_ssd1306_128x64_noname.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_128x64_noname.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_128x64_noname.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_128x64_noname.p1 u8g2/u8x8_d_ssd1306_128x64_noname.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_128x64_noname.d ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_128x64_noname.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_128x64_noname.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_ssd1306_48x64.p1: u8g2/u8x8_d_ssd1306_48x64.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_48x64.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_48x64.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_48x64.p1 u8g2/u8x8_d_ssd1306_48x64.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_48x64.d ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_48x64.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_48x64.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_ssd1306_64x32.p1: u8g2/u8x8_d_ssd1306_64x32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_64x32.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_64x32.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_64x32.p1 u8g2/u8x8_d_ssd1306_64x32.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_64x32.d ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_64x32.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_64x32.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_ssd1306_64x48.p1: u8g2/u8x8_d_ssd1306_64x48.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_64x48.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_64x48.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_64x48.p1 u8g2/u8x8_d_ssd1306_64x48.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_64x48.d ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_64x48.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_64x48.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_ssd1306_96x16.p1: u8g2/u8x8_d_ssd1306_96x16.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_96x16.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_96x16.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_96x16.p1 u8g2/u8x8_d_ssd1306_96x16.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_96x16.d ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_96x16.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_96x16.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_ssd1309.p1: u8g2/u8x8_d_ssd1309.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ssd1309.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ssd1309.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_ssd1309.p1 u8g2/u8x8_d_ssd1309.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_ssd1309.d ${OBJECTDIR}/u8g2/u8x8_d_ssd1309.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_ssd1309.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_ssd1317.p1: u8g2/u8x8_d_ssd1317.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ssd1317.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ssd1317.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_ssd1317.p1 u8g2/u8x8_d_ssd1317.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_ssd1317.d ${OBJECTDIR}/u8g2/u8x8_d_ssd1317.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_ssd1317.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_ssd1318.p1: u8g2/u8x8_d_ssd1318.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ssd1318.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ssd1318.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_ssd1318.p1 u8g2/u8x8_d_ssd1318.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_ssd1318.d ${OBJECTDIR}/u8g2/u8x8_d_ssd1318.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_ssd1318.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_ssd1322.p1: u8g2/u8x8_d_ssd1322.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ssd1322.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ssd1322.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_ssd1322.p1 u8g2/u8x8_d_ssd1322.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_ssd1322.d ${OBJECTDIR}/u8g2/u8x8_d_ssd1322.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_ssd1322.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_ssd1325.p1: u8g2/u8x8_d_ssd1325.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ssd1325.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ssd1325.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_ssd1325.p1 u8g2/u8x8_d_ssd1325.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_ssd1325.d ${OBJECTDIR}/u8g2/u8x8_d_ssd1325.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_ssd1325.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_ssd1326.p1: u8g2/u8x8_d_ssd1326.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ssd1326.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ssd1326.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_ssd1326.p1 u8g2/u8x8_d_ssd1326.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_ssd1326.d ${OBJECTDIR}/u8g2/u8x8_d_ssd1326.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_ssd1326.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_ssd1327.p1: u8g2/u8x8_d_ssd1327.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ssd1327.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ssd1327.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_ssd1327.p1 u8g2/u8x8_d_ssd1327.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_ssd1327.d ${OBJECTDIR}/u8g2/u8x8_d_ssd1327.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_ssd1327.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_ssd1329.p1: u8g2/u8x8_d_ssd1329.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ssd1329.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ssd1329.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_ssd1329.p1 u8g2/u8x8_d_ssd1329.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_ssd1329.d ${OBJECTDIR}/u8g2/u8x8_d_ssd1329.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_ssd1329.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_ssd1606_172x72.p1: u8g2/u8x8_d_ssd1606_172x72.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ssd1606_172x72.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ssd1606_172x72.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_ssd1606_172x72.p1 u8g2/u8x8_d_ssd1606_172x72.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_ssd1606_172x72.d ${OBJECTDIR}/u8g2/u8x8_d_ssd1606_172x72.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_ssd1606_172x72.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_ssd1607_200x200.p1: u8g2/u8x8_d_ssd1607_200x200.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ssd1607_200x200.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ssd1607_200x200.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_ssd1607_200x200.p1 u8g2/u8x8_d_ssd1607_200x200.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_ssd1607_200x200.d ${OBJECTDIR}/u8g2/u8x8_d_ssd1607_200x200.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_ssd1607_200x200.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_st75256.p1: u8g2/u8x8_d_st75256.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_st75256.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_st75256.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_st75256.p1 u8g2/u8x8_d_st75256.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_st75256.d ${OBJECTDIR}/u8g2/u8x8_d_st75256.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_st75256.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_st7565.p1: u8g2/u8x8_d_st7565.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_st7565.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_st7565.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_st7565.p1 u8g2/u8x8_d_st7565.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_st7565.d ${OBJECTDIR}/u8g2/u8x8_d_st7565.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_st7565.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_st7567.p1: u8g2/u8x8_d_st7567.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_st7567.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_st7567.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_st7567.p1 u8g2/u8x8_d_st7567.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_st7567.d ${OBJECTDIR}/u8g2/u8x8_d_st7567.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_st7567.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_st7586s_erc240160.p1: u8g2/u8x8_d_st7586s_erc240160.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_st7586s_erc240160.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_st7586s_erc240160.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_st7586s_erc240160.p1 u8g2/u8x8_d_st7586s_erc240160.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_st7586s_erc240160.d ${OBJECTDIR}/u8g2/u8x8_d_st7586s_erc240160.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_st7586s_erc240160.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_st7586s_s028hn118a.p1: u8g2/u8x8_d_st7586s_s028hn118a.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_st7586s_s028hn118a.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_st7586s_s028hn118a.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_st7586s_s028hn118a.p1 u8g2/u8x8_d_st7586s_s028hn118a.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_st7586s_s028hn118a.d ${OBJECTDIR}/u8g2/u8x8_d_st7586s_s028hn118a.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_st7586s_s028hn118a.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_st7588.p1: u8g2/u8x8_d_st7588.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_st7588.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_st7588.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_st7588.p1 u8g2/u8x8_d_st7588.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_st7588.d ${OBJECTDIR}/u8g2/u8x8_d_st7588.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_st7588.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_st7920.p1: u8g2/u8x8_d_st7920.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_st7920.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_st7920.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_st7920.p1 u8g2/u8x8_d_st7920.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_st7920.d ${OBJECTDIR}/u8g2/u8x8_d_st7920.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_st7920.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_stdio.p1: u8g2/u8x8_d_stdio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_stdio.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_stdio.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_stdio.p1 u8g2/u8x8_d_stdio.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_stdio.d ${OBJECTDIR}/u8g2/u8x8_d_stdio.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_stdio.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_t6963.p1: u8g2/u8x8_d_t6963.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_t6963.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_t6963.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_t6963.p1 u8g2/u8x8_d_t6963.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_t6963.d ${OBJECTDIR}/u8g2/u8x8_d_t6963.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_t6963.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_uc1601.p1: u8g2/u8x8_d_uc1601.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_uc1601.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_uc1601.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_uc1601.p1 u8g2/u8x8_d_uc1601.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_uc1601.d ${OBJECTDIR}/u8g2/u8x8_d_uc1601.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_uc1601.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_uc1604.p1: u8g2/u8x8_d_uc1604.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_uc1604.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_uc1604.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_uc1604.p1 u8g2/u8x8_d_uc1604.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_uc1604.d ${OBJECTDIR}/u8g2/u8x8_d_uc1604.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_uc1604.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_uc1608.p1: u8g2/u8x8_d_uc1608.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_uc1608.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_uc1608.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_uc1608.p1 u8g2/u8x8_d_uc1608.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_uc1608.d ${OBJECTDIR}/u8g2/u8x8_d_uc1608.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_uc1608.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_uc1610.p1: u8g2/u8x8_d_uc1610.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_uc1610.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_uc1610.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_uc1610.p1 u8g2/u8x8_d_uc1610.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_uc1610.d ${OBJECTDIR}/u8g2/u8x8_d_uc1610.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_uc1610.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_uc1611.p1: u8g2/u8x8_d_uc1611.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_uc1611.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_uc1611.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_uc1611.p1 u8g2/u8x8_d_uc1611.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_uc1611.d ${OBJECTDIR}/u8g2/u8x8_d_uc1611.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_uc1611.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_uc1617.p1: u8g2/u8x8_d_uc1617.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_uc1617.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_uc1617.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_uc1617.p1 u8g2/u8x8_d_uc1617.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_uc1617.d ${OBJECTDIR}/u8g2/u8x8_d_uc1617.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_uc1617.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_uc1638.p1: u8g2/u8x8_d_uc1638.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_uc1638.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_uc1638.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_uc1638.p1 u8g2/u8x8_d_uc1638.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_uc1638.d ${OBJECTDIR}/u8g2/u8x8_d_uc1638.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_uc1638.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_uc1701_dogs102.p1: u8g2/u8x8_d_uc1701_dogs102.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_uc1701_dogs102.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_uc1701_dogs102.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_uc1701_dogs102.p1 u8g2/u8x8_d_uc1701_dogs102.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_uc1701_dogs102.d ${OBJECTDIR}/u8g2/u8x8_d_uc1701_dogs102.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_uc1701_dogs102.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_d_uc1701_mini12864.p1: u8g2/u8x8_d_uc1701_mini12864.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_uc1701_mini12864.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_uc1701_mini12864.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_d_uc1701_mini12864.p1 u8g2/u8x8_d_uc1701_mini12864.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_d_uc1701_mini12864.d ${OBJECTDIR}/u8g2/u8x8_d_uc1701_mini12864.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_d_uc1701_mini12864.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_debounce.p1: u8g2/u8x8_debounce.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_debounce.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_debounce.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_debounce.p1 u8g2/u8x8_debounce.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_debounce.d ${OBJECTDIR}/u8g2/u8x8_debounce.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_debounce.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_display.p1: u8g2/u8x8_display.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_display.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_display.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_display.p1 u8g2/u8x8_display.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_display.d ${OBJECTDIR}/u8g2/u8x8_display.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_display.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_fonts.p1: u8g2/u8x8_fonts.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_fonts.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_fonts.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_fonts.p1 u8g2/u8x8_fonts.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_fonts.d ${OBJECTDIR}/u8g2/u8x8_fonts.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_fonts.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_gpio.p1: u8g2/u8x8_gpio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_gpio.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_gpio.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_gpio.p1 u8g2/u8x8_gpio.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_gpio.d ${OBJECTDIR}/u8g2/u8x8_gpio.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_gpio.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_input_value.p1: u8g2/u8x8_input_value.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_input_value.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_input_value.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_input_value.p1 u8g2/u8x8_input_value.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_input_value.d ${OBJECTDIR}/u8g2/u8x8_input_value.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_input_value.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_message.p1: u8g2/u8x8_message.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_message.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_message.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_message.p1 u8g2/u8x8_message.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_message.d ${OBJECTDIR}/u8g2/u8x8_message.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_message.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_selection_list.p1: u8g2/u8x8_selection_list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_selection_list.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_selection_list.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_selection_list.p1 u8g2/u8x8_selection_list.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_selection_list.d ${OBJECTDIR}/u8g2/u8x8_selection_list.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_selection_list.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_setup.p1: u8g2/u8x8_setup.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_setup.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_setup.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_setup.p1 u8g2/u8x8_setup.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_setup.d ${OBJECTDIR}/u8g2/u8x8_setup.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_setup.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_string.p1: u8g2/u8x8_string.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_string.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_string.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_string.p1 u8g2/u8x8_string.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_string.d ${OBJECTDIR}/u8g2/u8x8_string.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_string.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_u16toa.p1: u8g2/u8x8_u16toa.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_u16toa.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_u16toa.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_u16toa.p1 u8g2/u8x8_u16toa.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_u16toa.d ${OBJECTDIR}/u8g2/u8x8_u16toa.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_u16toa.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/u8g2/u8x8_u8toa.p1: u8g2/u8x8_u8toa.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_u8toa.p1.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_u8toa.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/u8g2/u8x8_u8toa.p1 u8g2/u8x8_u8toa.c 
	@-${MV} ${OBJECTDIR}/u8g2/u8x8_u8toa.d ${OBJECTDIR}/u8g2/u8x8_u8toa.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/u8g2/u8x8_u8toa.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/PIC18F_SPI_U8G2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=dist/${CND_CONF}/${IMAGE_TYPE}/PIC18F_SPI_U8G2.X.${IMAGE_TYPE}.map  -D__DEBUG=1  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -mrom=default,-7dc0-7fff -mram=default,-5f4-5ff,-f9c-f9c,-fd4-fd4,-fdb-fdf,-fe3-fe7,-feb-fef,-ffd-fff  $(COMPARISON_BUILD) -Wl,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -o dist/${CND_CONF}/${IMAGE_TYPE}/PIC18F_SPI_U8G2.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/PIC18F_SPI_U8G2.X.${IMAGE_TYPE}.hex 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/PIC18F_SPI_U8G2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=dist/${CND_CONF}/${IMAGE_TYPE}/PIC18F_SPI_U8G2.X.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -D__PIC18 -xassembler-with-cpp -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99" -I"D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include" -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     $(COMPARISON_BUILD) -Wl,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -o dist/${CND_CONF}/${IMAGE_TYPE}/PIC18F_SPI_U8G2.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
