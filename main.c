#include <gb/gb.h>
#include <stdio.h>
#include "backgrounds/bit_splashscreen_data.c"
#include "backgrounds/bit_splashscreen_map.c"
#include "Test_Background/Lvl1BackgroundMap.h"
#include "Test_Background/Lvl1AllData.h"


const UWORD backgroundpalette[]=
{
    Lvl1AllDataCGBPal0c0, Lvl1AllDataCGBPal0c1, Lvl1AllDataCGBPal0c2, Lvl1AllDataCGBPal0c3,
    Lvl1AllDataCGBPal1c0, Lvl1AllDataCGBPal1c1, Lvl1AllDataCGBPal1c2, Lvl1AllDataCGBPal1c3,
    Lvl1AllDataCGBPal2c0, Lvl1AllDataCGBPal2c1, Lvl1AllDataCGBPal2c2, Lvl1AllDataCGBPal2c3,
    Lvl1AllDataCGBPal3c0, Lvl1AllDataCGBPal3c1, Lvl1AllDataCGBPal3c2, Lvl1AllDataCGBPal3c3,
    Lvl1AllDataCGBPal4c0, Lvl1AllDataCGBPal4c1, Lvl1AllDataCGBPal4c2, Lvl1AllDataCGBPal4c3,
    Lvl1AllDataCGBPal5c0, Lvl1AllDataCGBPal5c1, Lvl1AllDataCGBPal5c2, Lvl1AllDataCGBPal5c3,
    Lvl1AllDataCGBPal6c0, Lvl1AllDataCGBPal6c1, Lvl1AllDataCGBPal6c2, Lvl1AllDataCGBPal6c3,
    Lvl1AllDataCGBPal7c0, Lvl1AllDataCGBPal7c1, Lvl1AllDataCGBPal7c2, Lvl1AllDataCGBPal7c3,
};

void main(){
    set_bkg_data(0,114,bit_splashscreen_data);
    set_bkg_tiles(0,0,20,18,bit_splashscreen_map);
    SHOW_BKG;
    DISPLAY_ON;
    waitpad(J_START);

    set_bkg_palette(0, 7, &backgroundpalette[0]);
    // set background data 
    set_bkg_data(0, 126, Lvl1AllData);
    //switch to 2nd video memory bank 
    VBK_REG = 1;
    set_bkg_tiles(0, 0, Lvl1BackgroundMapWidth, Lvl1BackgroundMapHeight, Lvl1BackgroundMapPLN1);
    VBK_REG = 0;
    set_bkg_tiles(0, 0, Lvl1BackgroundMapWidth, Lvl1BackgroundMapHeight, Lvl1BackgroundMapPLN0);  
}