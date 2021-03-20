#include <gb/gb.h>
#include <gb/cgb.h>
#include <stdio.h>
#include "Lvl1BackgroundData.h"
#include "Lvl1BackgroundMap.h"
#include "gb/font.h"

unsigned char windowmap[] = 
{
    0x13, 0x10, 0x17, 0x17, 0x1A
};

const UWORD lvl1backgroundpalette[] = {

  Lvl1BackgroundDataCGBPal0c0,
  Lvl1BackgroundDataCGBPal0c1,
  Lvl1BackgroundDataCGBPal0c2,
  Lvl1BackgroundDataCGBPal0c3,

  Lvl1BackgroundDataCGBPal1c0,
  Lvl1BackgroundDataCGBPal1c1,
  Lvl1BackgroundDataCGBPal1c2,
  Lvl1BackgroundDataCGBPal1c3,

  Lvl1BackgroundDataCGBPal2c0,
  Lvl1BackgroundDataCGBPal2c1,
  Lvl1BackgroundDataCGBPal2c2,
  Lvl1BackgroundDataCGBPal2c3,

  Lvl1BackgroundDataCGBPal3c0,
  Lvl1BackgroundDataCGBPal3c1,
  Lvl1BackgroundDataCGBPal3c2,
  Lvl1BackgroundDataCGBPal3c3,

  Lvl1BackgroundDataCGBPal4c0,
  Lvl1BackgroundDataCGBPal4c1,
  Lvl1BackgroundDataCGBPal4c2,
  Lvl1BackgroundDataCGBPal4c3,

  Lvl1BackgroundDataCGBPal5c0,
  Lvl1BackgroundDataCGBPal5c1,
  Lvl1BackgroundDataCGBPal5c2,
  Lvl1BackgroundDataCGBPal5c3,

  Lvl1BackgroundDataCGBPal6c0,
  Lvl1BackgroundDataCGBPal6c1,
  Lvl1BackgroundDataCGBPal6c2,
  Lvl1BackgroundDataCGBPal6c3,

  Lvl1BackgroundDataCGBPal7c0,
  Lvl1BackgroundDataCGBPal7c1,
  Lvl1BackgroundDataCGBPal7c2,
  Lvl1BackgroundDataCGBPal7c3,
};

void performantdelay(UINT8 numloops){
    UINT8 i;
    for(i=0;i<numloops;i++){
        wait_vbl_done();
    }
}

void interruptLCD(){
    HIDE_WIN;
}

void main(){
    font_t min_font;
    UINT8 step = 0;

    STAT_REG = 0x45;
    LYC_REG = 0x08;

    //disable_interrupts();

    font_init();
    min_font = font_load(font_min);
    font_set(min_font);

    //set_bkg_palette(0, 7, &backgroundpalette[0]);
    set_bkg_palette(0, 7, &lvl1backgroundpalette[0]);

    // set background data 
    //set_bkg_data(0, 14, BackgroundData);
    set_bkg_data(0, 127, Lvl1BackgroundData);

    //switch to 2nd video memory bank 
    VBK_REG = 1;

    //set_bkg_tiles(0, 0, BackgroundMapWidth, BackgroundMapHeight, BackgroundMapPLN1);
    set_bkg_tiles(0, 0, Lvl1BackgroundMapWidth, Lvl1BackgroundMapHeight, Lvl1BackgroundMapPLN1);

    VBK_REG = 0;

    //set_bkg_tiles(0, 0, BackgroundMapWidth, BackgroundMapHeight, BackgroundMapPLN0);
    set_bkg_tiles(0, 0, Lvl1BackgroundMapWidth, Lvl1BackgroundMapHeight, Lvl1BackgroundMapPLN0);

    set_win_tiles(0,0,5,1,windowmap);
    move_win(7,0);

    SHOW_BKG;
    SHOW_WIN;
    DISPLAY_ON;

    add_LCD(interruptLCD);
    enable_interrupts();
    set_interrupts(VBL_IFLAG | LCD_IFLAG);

    while(1){
        SHOW_WIN;
        scroll_bkg(1,0);
        wait_vbl_done();
    }
}