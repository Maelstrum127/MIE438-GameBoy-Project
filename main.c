#include <gb/gb.h>
#include <stdio.h>
#include <gb/font.h>
#include "Splashscreens/bit_splashscreen_data.c"
#include "Splashscreens/bit_splashscreen_map.c"
#include "Splashscreens/intro1.c"
#include "Splashscreens/intro2.c"
#include "Splashscreens/intro3.c"
#include "Splashscreens/letter2Data.c"
#include "Backgrounds/Lvl1BackgroundData.h"
#include "Backgrounds/Lvl1BackgroundMap.h"
#include "Backgrounds/windowmap.c"

void intro1();
void intro2();
void intro3();

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

void load_splashscreen(){
    set_bkg_data(0,103,bit_splashscreen_data);
    set_bkg_tiles(0,0,20,18,bit_splashscreen_map);
    SHOW_BKG;
    DISPLAY_ON;
}

// void introduction(){
//     font_t min_font;
//     font_init();
//     min_font = font_load(font_min); // 36 tile
//     font_set(min_font);
//     set_win_tiles(0,0,5,1,windowmap);
//     move_win(50,70);
//     SHOW_WIN;
//     DISPLAY_ON;
// }

void load_level1(){
    HIDE_WIN;
    set_bkg_palette(0, 7, &lvl1backgroundpalette[0]);
    // set background data 
    set_bkg_data(0, 127, Lvl1BackgroundData);
    //switch to 2nd video memory bank 
    VBK_REG = 1;
    set_bkg_tiles(0, 0, Lvl1BackgroundMapWidth, Lvl1BackgroundMapHeight, Lvl1BackgroundMapPLN1);
    VBK_REG = 0;
    set_bkg_tiles(0, 0, Lvl1BackgroundMapWidth, Lvl1BackgroundMapHeight, Lvl1BackgroundMapPLN0); 
    SHOW_BKG;
    DISPLAY_ON;
}

// void load_menu(){
//     set_win_data(0,45,LetterData);
//     set_win_tiles(0,0,MenuMapWidth,MenuMapHeight,MenuMap);
//     move_win(100,0);
//     SHOW_WIN;
//     DISPLAY_ON;
// }

void main(){
    int counter = 0;
    int menu = 0;
    load_splashscreen();
    while(1){
		// if(joypad()==J_START){
        //     if (counter == 0){ 
        //         intro1(); }
        //     else if (counter == 10){ 
        //         intro2(); }
        //     else if (counter == 20) {
        //         intro3();
        //     }
        //     else if (counter>=30){
        //         break;
        //     }
        //     counter ++;
        // } 
        if (joypad()==J_START){
            intro1();
        }
        else if (joypad()==J_LEFT){
            intro2();
        }
        else if (joypad()==J_RIGHT){
            intro3();
        }
        else if (joypad()==J_DOWN){
            break;
        }
	}
    load_level1();
    // while(counter>1){
    //     if (joypad()==J_START){
    //         if (menu == 0){
    //             load_menu();
    //             menu == 1;
    //         }
    //         else{
    //             HIDE_WIN;
    //             menu == 0;
    //         }
    //     }
    // }

}

void intro1(){
    set_win_data(0,45,Letter2Data);
    set_win_tiles(0,0,Intro1MapWidth,Intro1MapHeight,Intro1Map);
    SHOW_WIN;
    DISPLAY_ON;
}

void intro2(){
    HIDE_WIN; 
    set_win_tiles(0,0,Intro2MapWidth,Intro2MapHeight,Intro2Map);
    SHOW_WIN;
    DISPLAY_ON;
}

void intro3(){
    HIDE_WIN; 
    set_win_tiles(0,0,Intro3MapWidth,Intro3MapHeight,Intro3Map);
    SHOW_WIN;
    DISPLAY_ON;
}