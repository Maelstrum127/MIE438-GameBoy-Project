vc#include <gb/gb.h>
#include <gb/cgb.h>
#include <stdio.h>
#include "BackgroundMap.h"
#include "BackgroundData.h"
#include "GameCharacter.c"
#include "GameSprites.h"
//#include "spriteBitAnimation.c"
#include "Lvl1BackgroundData.h"
#include "Lvl1BackgroundMap.h"
#include "gb/font.h"
#include "MemBackgroundMap.h"
#include "NewBackgroundData.h"

struct GameCharacter_rec bit;
struct GameCharacter_square frog;

UBYTE spritesize = 8;

unsigned char windowmap[] = 
{
    0x13, 0x10, 0x17, 0x17, 0x1A
};

const UWORD spritepalette[] = {
    GameSpritesCGBPal0c0,
    GameSpritesCGBPal0c1,
    GameSpritesCGBPal0c2,
    GameSpritesCGBPal0c3,

    GameSpritesCGBPal1c0,
    GameSpritesCGBPal1c1,
    GameSpritesCGBPal1c2,
    GameSpritesCGBPal1c3,


    GameSpritesCGBPal2c0,
    GameSpritesCGBPal2c1,
    GameSpritesCGBPal2c2,
    GameSpritesCGBPal2c3,

    GameSpritesCGBPal3c0,
    GameSpritesCGBPal3c1,
    GameSpritesCGBPal3c2,
    GameSpritesCGBPal3c3,

    GameSpritesCGBPal4c0,
    GameSpritesCGBPal4c1,
    GameSpritesCGBPal4c2,
    GameSpritesCGBPal4c3,

    GameSpritesCGBPal5c0,
    GameSpritesCGBPal5c1,
    GameSpritesCGBPal5c2,
    GameSpritesCGBPal5c3,

    GameSpritesCGBPal6c0,
    GameSpritesCGBPal6c1,
    GameSpritesCGBPal6c2,
    GameSpritesCGBPal6c3,

    GameSpritesCGBPal7c0,
    GameSpritesCGBPal7c1,
    GameSpritesCGBPal7c2,
    GameSpritesCGBPal7c3,
};

const UWORD backgroundpalette[] =
{   
    BackgroundDataCGBPal0c0, BackgroundDataCGBPal0c1, BackgroundDataCGBPal0c2, BackgroundDataCGBPal0c3,
    BackgroundDataCGBPal1c0, BackgroundDataCGBPal1c1, BackgroundDataCGBPal1c2, BackgroundDataCGBPal1c3,
    BackgroundDataCGBPal2c0, BackgroundDataCGBPal2c1, BackgroundDataCGBPal2c2, BackgroundDataCGBPal2c3,
    BackgroundDataCGBPal3c0, BackgroundDataCGBPal3c1, BackgroundDataCGBPal3c2, BackgroundDataCGBPal3c3,
    BackgroundDataCGBPal4c0, BackgroundDataCGBPal4c1, BackgroundDataCGBPal4c2, BackgroundDataCGBPal4c3,
    BackgroundDataCGBPal5c0, BackgroundDataCGBPal5c1, BackgroundDataCGBPal5c2, BackgroundDataCGBPal5c3,
    BackgroundDataCGBPal6c0, BackgroundDataCGBPal6c1, BackgroundDataCGBPal6c2, BackgroundDataCGBPal6c3,
};

const UWORD newbackgroundpalette[] = {

  NewBackgroundDataCGBPal0c0,
  NewBackgroundDataCGBPal0c1,
  NewBackgroundDataCGBPal0c2,
  NewBackgroundDataCGBPal0c3,

  NewBackgroundDataCGBPal1c0,
  NewBackgroundDataCGBPal1c1,
  NewBackgroundDataCGBPal1c2,
  NewBackgroundDataCGBPal1c3,

  NewBackgroundDataCGBPal2c0,
  NewBackgroundDataCGBPal2c1,
  NewBackgroundDataCGBPal2c2,
  NewBackgroundDataCGBPal2c3,

  NewBackgroundDataCGBPal3c0,
  NewBackgroundDataCGBPal3c1,
  NewBackgroundDataCGBPal3c2,
  NewBackgroundDataCGBPal3c3,

  NewBackgroundDataCGBPal4c0,
  NewBackgroundDataCGBPal4c1,
  NewBackgroundDataCGBPal4c2,
  NewBackgroundDataCGBPal4c3,

  NewBackgroundDataCGBPal5c0,
  NewBackgroundDataCGBPal5c1,
  NewBackgroundDataCGBPal5c2,
  NewBackgroundDataCGBPal5c3,

  NewBackgroundDataCGBPal6c0,
  NewBackgroundDataCGBPal6c1,
  NewBackgroundDataCGBPal6c2,
  NewBackgroundDataCGBPal6c3,

  NewBackgroundDataCGBPal7c0,
  NewBackgroundDataCGBPal7c1,
  NewBackgroundDataCGBPal7c2,
  NewBackgroundDataCGBPal7c3,
};

void performantdelay(UINT8 numloops){
    UINT8 i;
    for(i=0;i<numloops;i++){
        wait_vbl_done();
    }
}

void movegamecharacter_bit(struct GameCharacter_rec* character, UINT8 x, UINT8 y){
    move_sprite(character->spriteids[0], x, y);
    move_sprite(character->spriteids[1], x + spritesize, y);
    move_sprite(character->spriteids[2], x, y + spritesize);
    move_sprite(character->spriteids[3], x + spritesize, y + spritesize);
    move_sprite(character->spriteids[4], x, y + 2*spritesize);
    move_sprite(character->spriteids[5], x + spritesize, y + 2*spritesize);
}

void movegamecharacter_frog(struct GameCharacter_square* character, UINT8 x, UINT8 y){
    move_sprite(character->spriteids[0], x, y);
    move_sprite(character->spriteids[1], x + spritesize, y);
    move_sprite(character->spriteids[2], x, y + spritesize);
    move_sprite(character->spriteids[3], x + spritesize, y + spritesize);
}

void setupbit(){
    bit.x = 80;
    bit.y = 130;
    bit.height = 24;
    bit.width = 16;

    // load bit sprites
    set_sprite_tile(0,0);
    bit.spriteids[0] = 0;
    set_sprite_prop(0,4);
    set_sprite_tile(1,1);
    bit.spriteids[1] = 1;
    set_sprite_prop(1,4);
    set_sprite_tile(2,2);
    bit.spriteids[2] = 2;
    set_sprite_prop(2,1);    
    set_sprite_tile(3,3);
    bit.spriteids[3] = 3;
    set_sprite_prop(3,1);  
    set_sprite_tile(4,4);
    bit.spriteids[4] = 4; 
    set_sprite_prop(4,7);
    set_sprite_tile(5,5);
    bit.spriteids[5] = 5; 
    set_sprite_prop(5,7); 

    movegamecharacter_bit(&bit, bit.x, bit.y); 
}

void setupfrog(){
    frog.x = 80;
    frog.y = 80;
    frog.height = 16;
    frog.width = 16;

    // load frog sprites
    set_sprite_tile(6,42);
    frog.spriteids[0] = 6;
    set_sprite_prop(6,2);
    set_sprite_tile(7,43);
    frog.spriteids[1] = 7;
    set_sprite_prop(7,2);
    set_sprite_tile(8,44);
    frog.spriteids[2] = 8;
    set_sprite_prop(8,6);    
    set_sprite_tile(9,45);
    frog.spriteids[3] = 9;
    set_sprite_prop(9,6);  

    movegamecharacter_frog(&frog, frog.x, frog.y); 
}

UINT8 setbit_forward(UINT8 step){
    if (step == 1){
    set_sprite_tile(0,0);
    set_sprite_tile(1,1);
    set_sprite_tile(2,2);  
    set_sprite_tile(3,3);
    set_sprite_tile(4,6);
    set_sprite_tile(5,7);
    }
    if (step == 0){
    set_sprite_tile(0,0);
    set_sprite_tile(1,1);
    set_sprite_tile(2,2);  
    set_sprite_tile(3,3);
    set_sprite_tile(4,8);
    set_sprite_tile(5,9);  
    }
return (step + 1)%2;
}

UINT8 setbit_backward(UINT8 step){
    if (step == 1){
    set_sprite_tile(0,10);
    set_sprite_tile(1,11);
    set_sprite_tile(2,12); 
    set_sprite_tile(3,13);
    set_sprite_tile(4,14);
    set_sprite_tile(5,15);
    }
    if (step == 0){
    set_sprite_tile(0,10);
    set_sprite_tile(1,11);
    set_sprite_tile(2,12);   
    set_sprite_tile(3,13);
    set_sprite_tile(4,16);
    set_sprite_tile(5,17);  
    }
return (step + 1)%2;
}

UINT8 setbit_right(UINT8 step){
    if (step == 1){
    set_sprite_tile(0,18);
    set_sprite_tile(1,19);
    set_sprite_tile(2,20);  
    set_sprite_tile(3,21);
    set_sprite_tile(4,22);
    set_sprite_tile(5,23);
    }
    if (step == 0){
    set_sprite_tile(0,30);
    set_sprite_tile(1,31);
    set_sprite_tile(2,32);
    set_sprite_tile(3,33); 
    set_sprite_tile(4,34);
    set_sprite_tile(5,35);  
    }
return (step + 1)%2;
}
UINT8 setbit_left(UINT8 step){
    if (step == 1){
    set_sprite_tile(0,24);
    set_sprite_tile(1,25);
    set_sprite_tile(2,26);   
    set_sprite_tile(3,27); 
    set_sprite_tile(4,28);
    set_sprite_tile(5,29);
    }
    if (step == 0){
    set_sprite_tile(0,36);
    set_sprite_tile(1,37);
    set_sprite_tile(2,38);   
    set_sprite_tile(3,39);
    set_sprite_tile(4,40); 
    set_sprite_tile(5,41);  
    }
return (step + 1)%2;
}

UINT8 setfrog_bounce(UINT8 step){
    if (step == 1){
    set_sprite_tile(6,42);
    set_sprite_tile(7,43);
    }
    if (step == 0){
    set_sprite_tile(6,46);
    set_sprite_tile(7,47);
    }
return (step + 1)%2; 
}

void interruptLCD(){
    HIDE_WIN;
}

void switch_background(){

    set_bkg_palette(0, 7, &newbackgroundpalette[0]);

    set_bkg_data(0, 127, NewBackgroundData);

    //switch to 2nd video memory bank 
    VBK_REG = 1;

    //set_bkg_tiles(0, 0, BackgroundMapWidth, BackgroundMapHeight, BackgroundMapPLN1);
    set_bkg_tiles(0, 0, MemBackgroundMapWidth, MemBackgroundMapHeight, MemBackgroundMapPLN1);

    VBK_REG = 0;

    //set_bkg_tiles(0, 0, BackgroundMapWidth, BackgroundMapHeight, BackgroundMapPLN0);
    set_bkg_tiles(0, 0, MemBackgroundMapWidth, MemBackgroundMapHeight, MemBackgroundMapPLN0);

    SHOW_WIN;
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
    set_bkg_palette(0, 7, &newbackgroundpalette[0]);

    // set background data 
    //set_bkg_data(0, 14, BackgroundData);
    set_bkg_data(0, 110, NewBackgroundData);

    //switch to 2nd video memory bank 
    VBK_REG = 1;

    //set_bkg_tiles(0, 0, BackgroundMapWidth, BackgroundMapHeight, BackgroundMapPLN1);
    set_bkg_tiles(0, 0, Lvl1BackgroundMapWidth, Lvl1BackgroundMapHeight, Lvl1BackgroundMapPLN1);

    VBK_REG = 0;

    //set_bkg_tiles(0, 0, BackgroundMapWidth, BackgroundMapHeight, BackgroundMapPLN0);
    set_bkg_tiles(0, 0, Lvl1BackgroundMapWidth, Lvl1BackgroundMapHeight, Lvl1BackgroundMapPLN0);

    //set_win_tiles(0,0,5,1,windowmap);
    //move_win(7,0);

    set_sprite_palette(0, 8, &spritepalette[0]);
    
    set_sprite_data(0, 50, GameSprites);
    
    setupbit();
    setupfrog();

    SHOW_SPRITES;
    SHOW_BKG;
    SHOW_WIN;
    DISPLAY_ON;

    add_LCD(interruptLCD);
    enable_interrupts();
    set_interrupts(VBL_IFLAG | LCD_IFLAG);

    while(1){
        //SHOW_WIN;
        //scroll_bkg(1,0);
        //wait_vbl_done();
        if (joypad() & J_LEFT){
            bit.x -=8;
            step = setbit_left(step);
            movegamecharacter_bit(&bit, bit.x, bit.y);
        }
        if (joypad() & J_RIGHT){
            bit.x += 8;
            step = setbit_right(step);
            movegamecharacter_bit(&bit, bit.x, bit.y);
        }
        if (joypad() & J_UP){
            bit.y -= 8;
            step = setbit_backward(step);
            movegamecharacter_bit(&bit, bit.x, bit.y);
        }
        if (joypad() & J_DOWN){
            bit.y += 8;
            step = setbit_forward(step);
            movegamecharacter_bit(&bit, bit.x, bit.y);
        }
        if (joypad() & J_START){
            switch_background();
        }

        step = setfrog_bounce(step);
        performantdelay(5);
    }
}