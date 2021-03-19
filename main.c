#include <gb/gb.h>
#include <stdio.h>
#include "sprites/smile.c"
#include "menu/menudata.c"
#include "menu/menu.c"
#include "sprites/arrow.c"
#include "sprites/arrow_sprite.c"
#include "backgrounds/letters.c"
#include "backgrounds/endscreen.c"
#include "backgrounds/splashscreen_data.c"
#include "backgrounds/splashscreen_map.c"
#include "backgrounds/blankscreen.c"
#include "Test_Background/Lvl1BackgroundMap.h"
#include "Test_Background/Lvl1BackgroundData.h"
#include "Test_Background/MenuMap.h"


struct Arrow arrow; 
struct Smile smile; 
UBYTE keydown; 
UINT8 menuOption; 
UINT8 gameOn = 1;

const UWORD backgroundpalette[]=
{
    Lvl1BackgroundDataCGBPal0c0, Lvl1BackgroundDataCGBPal0c1, Lvl1BackgroundDataCGBPal0c2, Lvl1BackgroundDataCGBPal0c3,
    Lvl1BackgroundDataCGBPal1c0, Lvl1BackgroundDataCGBPal1c1, Lvl1BackgroundDataCGBPal1c2, Lvl1BackgroundDataCGBPal1c3,
    Lvl1BackgroundDataCGBPal2c0, Lvl1BackgroundDataCGBPal2c1, Lvl1BackgroundDataCGBPal2c2, Lvl1BackgroundDataCGBPal2c3,
    Lvl1BackgroundDataCGBPal3c0, Lvl1BackgroundDataCGBPal3c1, Lvl1BackgroundDataCGBPal3c2, Lvl1BackgroundDataCGBPal3c3,
    Lvl1BackgroundDataCGBPal4c0, Lvl1BackgroundDataCGBPal4c1, Lvl1BackgroundDataCGBPal4c2, Lvl1BackgroundDataCGBPal4c3,
    Lvl1BackgroundDataCGBPal5c0, Lvl1BackgroundDataCGBPal5c1, Lvl1BackgroundDataCGBPal5c2, Lvl1BackgroundDataCGBPal5c3,
    Lvl1BackgroundDataCGBPal6c0, Lvl1BackgroundDataCGBPal6c1, Lvl1BackgroundDataCGBPal6c2, Lvl1BackgroundDataCGBPal6c3,
    Lvl1BackgroundDataCGBPal7c0, Lvl1BackgroundDataCGBPal7c1, Lvl1BackgroundDataCGBPal7c2, Lvl1BackgroundDataCGBPal7c3,
};

void load_menu(){
    //set_bkg_data(0,19,MenuTiles);
    //set_bkg_tiles(12,0,8,10, Menu);
    //switch to 2nd video memory bank 
    // VBK_REG = 1;
    // set_bkg_tiles(12, 0, MenuMapWidth, MenuMapHeight, MenuMapPLN0);
    // VBK_REG = 0;
    // set_bkg_tiles(12, 0, MenuMapWidth, MenuMapHeight, MenuMapPLN1);

    set_sprite_data(2, 1, ArrowSprite);
    set_sprite_tile(1, 2);
    
    arrow.row = 0;

    move_sprite(1, 120, 32);
 
    while(1){
        if(keydown){
            waitpadup();
            keydown = 0;
        }
        switch(joypad()){
            case J_UP:
                if (arrow.row > 0)
                {   arrow.row--;
                    scroll_sprite(1,0,-8); 
                    keydown = 1;
                }
                break;
            case J_DOWN:
                if (arrow.row < 2){
                    arrow.row++;
                    scroll_sprite(1,0,+8); 
                    keydown = 1;
                }
                break;
            case J_START:
                menuOption = arrow.row;
                return; 
        }
    }
}

void resumeGame(){
    move_sprite(0, smile.x, smile.y); 

    //set_bkg_data(0,19,MenuTiles);
    //set_bkg_tiles(0, 0, 40, 18, blankMap);
    VBK_REG = 1;
    set_bkg_tiles(0, 0, Lvl1BackgroundMapWidth, Lvl1BackgroundMapHeight, Lvl1BackgroundMapPLN0);
    VBK_REG = 0;
    set_bkg_tiles(0, 0, Lvl1BackgroundMapWidth, Lvl1BackgroundMapHeight, Lvl1BackgroundMapPLN1);
}

void main(){
    UINT8 currentspriteindex = 0;
    set_bkg_data(0,114,splashscreen_data);
    set_bkg_tiles(0,0,20,20,splashscreen_map);
    SHOW_BKG;
    DISPLAY_ON;
    waitpad(J_START);

    // set_bkg_data(0,19,MenuTiles);
    // set_bkg_tiles(0, 0, 20, 18, blankMap);

    set_bkg_palette(0, 7, &backgroundpalette[0]);
    // set background data 
    set_bkg_data(0, 127, Lvl1BackgroundData);
    //switch to 2nd video memory bank 
    VBK_REG = 1;
    set_bkg_tiles(0, 0, Lvl1BackgroundMapWidth, Lvl1BackgroundMapHeight, Lvl1BackgroundMapPLN1);
    VBK_REG = 0;
    set_bkg_tiles(0, 0, Lvl1BackgroundMapWidth, Lvl1BackgroundMapHeight, Lvl1BackgroundMapPLN0);

    set_sprite_data(0, 2, Smiler);
    set_sprite_tile(0, 0);
    
    smile.x = 88;
    smile.y = 78;
    move_sprite(0, 88, 78);
    SHOW_SPRITES;
    SHOW_BKG;
    DISPLAY_ON; 

    while(gameOn == 1){
        switch(joypad()){
            case J_LEFT: 
                scroll_sprite(0,-1,0);
                smile.x -=1;
                break;
            case J_RIGHT: 
                scroll_sprite(0,1,0);
                smile.x += 1; 
                break;  
            case J_UP: 
                scroll_sprite(0,0,-1);
                smile.y -= 1; 
                break; 
            case J_DOWN: 
                scroll_sprite(0,0,1);
                smile.y += 1;
                break;  
            case J_A:
                load_menu();
                if (menuOption == 2){
                    gameOn = 2;
                } else{
                    resumeGame();
                }
                break;                                                 
        }
        delay(100);
    }
    set_bkg_data(0, 27, letterTiles);
    set_bkg_tiles(0, 0, 20, 18, endMap);   
}