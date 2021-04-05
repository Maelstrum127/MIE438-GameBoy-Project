<<<<<<< HEAD
#include<gb/gb.h>
#include<stdio.h>
#include "Splashscreens/intro1.c"
#include "Splashscreens/intro2.c"
#include "Splashscreens/intro3.c"
#include "Dialogues/letter2Data.c"
#include "Dialogues/Diag1.c"
#include "Dialogues/Diag2.c"
#include "Dialogues/Diag3.c"
#include "Dialogues/Diag4.c"

// bank 0
void setup_windows(unsigned char *win_data, unsigned char *win_map, int data_size, unsigned int MapHeight, unsigned int MapWidth, unsigned int MapX, unsigned int MapY);
void setup_splashscreen();

// bank 2
void performantdelay(UINT8 numloops);
void movegamecharacter(struct GameCharacter* character, UINT8 x, UINT8 y);
void setupbit(INT8 init_x, INT8 init_y);
void walk_without_background_movement(INT8 move_x, INT8 move_y, UINT8 *step);
void walk_background_movement(INT8 move_x, INT8 move_y, UINT8 *step);
void move(UINT8 *step, UINT16 *player_loc_x, UINT16 *player_loc_y, unsigned char *bk_col, unsigned int MapHeight, unsigned int MapWidth);
void setup_map(UWORD *pallete, unsigned char *map_data, unsigned char *tiles_1, unsigned char *tiles_0, int character_x, int character_y, int data_size, unsigned int MapHeight, unsigned int MapWidth);
void do_game_play();

// bank 3


void setup_windows(unsigned char *win_data, unsigned char *win_map, int data_size, unsigned int MapHeight, unsigned int MapWidth, unsigned int MapX, unsigned int MapY){
    DISPLAY_OFF;
	set_win_data(0,data_size,win_data);
	set_win_tiles(0,0,MapWidth,MapHeight,win_map);
    move_win(MapX, MapY);
	wait_vbl_done();
    SHOW_WIN;
	DISPLAY_ON;
	waitpad(J_START);
    waitpadup(); 
=======
#include <gb/gb.h>
#include <gb/font.h>
#include <stdio.h>
#include <gb/cgb.h>
#include "Final_Backgrounds/Lvl1BackgroundMap.h"
#include "Final_Backgrounds/Lvl1BackgroundData.h"
#include "GameCharacter.c"
#include "GameSprites.h"

const unsigned char blankmap[15] = {0x51, 0x52};
UINT16 player_location[2];

const UWORD backgroundpalette[] = {
    Lvl1BackgroundDataCGBPal0c0, Lvl1BackgroundDataCGBPal0c1, Lvl1BackgroundDataCGBPal0c2, Lvl1BackgroundDataCGBPal0c3,
    Lvl1BackgroundDataCGBPal1c0, Lvl1BackgroundDataCGBPal1c1, Lvl1BackgroundDataCGBPal1c2, Lvl1BackgroundDataCGBPal1c3,
    Lvl1BackgroundDataCGBPal2c0, Lvl1BackgroundDataCGBPal2c1, Lvl1BackgroundDataCGBPal2c2, Lvl1BackgroundDataCGBPal2c3,
    Lvl1BackgroundDataCGBPal3c0, Lvl1BackgroundDataCGBPal3c1, Lvl1BackgroundDataCGBPal3c2, Lvl1BackgroundDataCGBPal3c3,
    Lvl1BackgroundDataCGBPal4c0, Lvl1BackgroundDataCGBPal4c1, Lvl1BackgroundDataCGBPal4c2, Lvl1BackgroundDataCGBPal4c3,
    Lvl1BackgroundDataCGBPal5c0, Lvl1BackgroundDataCGBPal5c1, Lvl1BackgroundDataCGBPal5c2, Lvl1BackgroundDataCGBPal5c3,
    Lvl1BackgroundDataCGBPal6c0, Lvl1BackgroundDataCGBPal6c1, Lvl1BackgroundDataCGBPal6c2, Lvl1BackgroundDataCGBPal6c3,
    Lvl1BackgroundDataCGBPal7c0, Lvl1BackgroundDataCGBPal7c1, Lvl1BackgroundDataCGBPal7c2, Lvl1BackgroundDataCGBPal7c3,
};

struct GameCharacter bit;
UBYTE spritesize = 8;

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
UBYTE has_key, open_door, game_running;

void performantdelay(UINT8 numloops){
    UINT8 i;
    for(i=0;i<numloops;i++){
        wait_vbl_done();
    }
}

void movegamecharacter(struct GameCharacter* character, UINT8 x, UINT8 y){
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

void setupbit(INT8 init_x, INT8 init_y){
    bit.x = init_x;
    bit.y = init_y;
    bit.height = 32;
    bit.width = 24;

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

    movegamecharacter(&bit, bit.x, bit.y); 

}

UINT8 setbit_forward(UINT8 step){
    if (step == 1){
    set_sprite_tile(0,0);
    bit.spriteids[0] = 0;
    set_sprite_tile(1,1);
    bit.spriteids[1] = 1;
    set_sprite_tile(2,2);
    bit.spriteids[2] = 2;    
    set_sprite_tile(3,3);
    bit.spriteids[3] = 3;  
    set_sprite_tile(4,6);
    bit.spriteids[4] = 4; 
    set_sprite_tile(5,7);
    bit.spriteids[5] = 5;
    }
    if (step == 0){
    set_sprite_tile(0,0);
    bit.spriteids[0] = 0;
    set_sprite_tile(1,1);
    bit.spriteids[1] = 1;
    set_sprite_tile(2,2);
    bit.spriteids[2] = 2;    
    set_sprite_tile(3,3);
    bit.spriteids[3] = 3;  
    set_sprite_tile(4,8);
    bit.spriteids[4] = 4; 
    set_sprite_tile(5,9);
    bit.spriteids[5] = 5;   
    }
return (step + 1)%2;
}

UINT8 setbit_backward(UINT8 step){
    if (step == 1){
    set_sprite_tile(0,10);
    bit.spriteids[0] = 0;
    set_sprite_tile(1,11);
    bit.spriteids[1] = 1;
    set_sprite_tile(2,12);
    bit.spriteids[2] = 2;    
    set_sprite_tile(3,13);
    bit.spriteids[3] = 3;  
    set_sprite_tile(4,14);
    bit.spriteids[4] = 4; 
    set_sprite_tile(5,15);
    bit.spriteids[5] = 5;
    }
    if (step == 0){
    set_sprite_tile(0,10);
    bit.spriteids[0] = 0;
    set_sprite_tile(1,11);
    bit.spriteids[1] = 1;
    set_sprite_tile(2,12);
    bit.spriteids[2] = 2;    
    set_sprite_tile(3,13);
    bit.spriteids[3] = 3;  
    set_sprite_tile(4,16);
    bit.spriteids[4] = 4; 
    set_sprite_tile(5,17);
    bit.spriteids[5] = 5;   
    }
return (step + 1)%2;
>>>>>>> 98f176c5cbbcf2b4b24f1184df5130933b6875ba
}

void setup_splashscreen(){
	setup_windows(Letter2Data, Intro1Map, 40, Intro1MapHeight, Intro1MapWidth, 7, 7);
    setup_windows(Letter2Data, Intro2Map, 40, Intro2MapHeight, Intro2MapWidth, 7, 7);
    setup_windows(Letter2Data, Intro3Map, 40, Intro3MapHeight, Intro3MapWidth, 7, 7);
    HIDE_WIN;
}

void setup_dialogues(){
    setup_windows(Letter2Data, Diag1, 41, Diag1Height, Diag1Width, 7, 104);
    setup_windows(Letter2Data, Diag2, 41, Diag2Height, Diag2Width, 7, 104);
    setup_windows(Letter2Data, Diag3, 41, Diag3Height, Diag3Width, 7, 104);
    setup_windows(Letter2Data, Diag4, 41, Diag4Height, Diag4Width, 7, 104);
    HIDE_WIN;
}
void main()
{
	ENABLE_RAM_MBC1;
    SWITCH_ROM_MBC1(0);
    setup_splashscreen();

<<<<<<< HEAD
	SWITCH_ROM_MBC1(2);
	do_game_play();

    SWITCH_ROM_MBC1(0);
    setup_dialogues();
=======
void reset_bit(){
    set_sprite_tile(0,0);
    bit.spriteids[0] = 0;
    set_sprite_tile(1,1);
    bit.spriteids[1] = 1;
    set_sprite_tile(2,2);
    bit.spriteids[2] = 2;    
    set_sprite_tile(3,3);
    bit.spriteids[3] = 3;  
    set_sprite_tile(4,4);
    bit.spriteids[4] = 4; 
    set_sprite_tile(5,5);
    bit.spriteids[5] = 5;   
}

UINT8 special_tile(UINT16 player_loc){
    UINT8 rtn;
    rtn = 0;
    if (player_loc == 329){
        //key
        has_key = 1;
        set_bkg_tiles(player_loc%20, player_loc/20, 1, 1, blankmap);
        rtn = 1;
    }
    else if (player_loc == 168 && has_key){
        //door
        open_door = 1;
        set_bkg_tiles(player_loc%20, player_loc/20, 1, 1, blankmap);
        rtn = 1;
    }
    else if (player_loc == 358){
        //game over
        game_running = 0;
        HIDE_SPRITES;
        printf("\n \n \n \n \n \n \n \n \n      YOU WIN!!!!");
        rtn = 1;
    }
    return rtn;
}

UBYTE is_walkable(unsigned char tile){
    UBYTE rtn = 0;
    for (int i=0;i<2;i++){
        if (tile == blankmap[i]){
            rtn = 1;
        }
    }
    return rtn;
}

UINT8 can_player_move(UINT16 newplayerx, UINT16 newplayery, unsigned char *bk_col, unsigned int MapHeight, unsigned int MapWidth){
    UINT16 indexTLx, indexTLy, tileindexTL;
    UINT8 result;

    indexTLx = (newplayerx/8)%MapWidth;
    indexTLy = newplayery/8;

    tileindexTL = MapWidth*indexTLy + indexTLx; // x_width * y_index + x_index

    result = 0; //special_tile(tileindexTL);
    if (is_walkable(bk_col[tileindexTL]) && is_walkable(bk_col[tileindexTL - 1])){
        result = 1;
    }
    if (newplayery < 16 || newplayery > 8 + MapHeight*8){
        result = 0;
    }
    if (newplayerx < 8 || newplayerx > MapWidth*8){
        result = 0;
    }

    return result;
}

void walk_without_background_movement(INT8 move_x, INT8 move_y, UINT8 *step){
    while(move_x != 0){
        bit.x += (move_x > 0 ? 2 : -2);
        if (move_x % 4 == 0 && move_x != 0){
            *step = (move_x > 0 ? setbit_right(*step) : setbit_left(*step));
        }
        move_x += (move_x > 0 ? -2 : 2);
        movegamecharacter(&bit, bit.x, bit.y);
        performantdelay(2);
    }
    while (move_y != 0){
        bit.y += (move_y > 0 ? 2 : -2);
        if (move_y % 4 == 0 && move_y != 0){
            *step = (move_y >  0 ? setbit_forward(*step) : setbit_backward(*step));
        }
        move_y += (move_y > 0 ? -2 : 2);
        movegamecharacter(&bit, bit.x, bit.y);
        performantdelay(2);
    }
}

void walk_background_movement(INT8 move_x, INT8 move_y, UINT8 *step){
    while(move_x != 0){
        scroll_bkg(move_x < 0 ? -2 : 2, 0);
        if (move_x % 4 == 0 && move_x != 0){
            *step = (move_x > 0 ? setbit_right(*step) : setbit_left(*step));
        }
        move_x += (move_x > 0 ? -2 : 2);
        performantdelay(2);
    }
    while (move_y != 0){
        scroll_bkg(0, move_y < 0 ? -2 : 2);
        if (move_y % 4 == 0 && move_y != 0){
            *step = (move_y >  0 ? setbit_forward(*step) : setbit_backward(*step));
        }
        move_y += (move_y > 0 ? -2 : 2);
        performantdelay(2);
    }
}

void move(UINT8 *step, UINT16 *player_loc_x, UINT16 *player_loc_y, unsigned char *bk_col, unsigned int MapHeight, unsigned int MapWidth){
    INT8 tile = 8;
    switch (joypad())
    {
    case (J_LEFT):
        if (can_player_move(*player_loc_x - tile, *player_loc_y, bk_col, MapHeight, MapWidth)){
            if (*player_loc_x < 96 || *player_loc_x > MapWidth*8 - 80){
                walk_without_background_movement(-1*tile, 0, step);
            }
            else{
                walk_background_movement(-1*tile, 0, step);
            }
            *player_loc_x -= tile;
        }
        else{
            *step = setbit_left(*step);
        }
        break;
    
    case (J_RIGHT):
        if (can_player_move(*player_loc_x + tile, *player_loc_y, bk_col, MapHeight, MapWidth)){
            if (*player_loc_x < 88 || *player_loc_x > MapWidth*8 - 88){
                walk_without_background_movement(tile, 0, step);
            }
            else{
                walk_background_movement(tile, 0, step);
            }
            *player_loc_x += tile;
        }
        else{
            *step = setbit_right(*step);
        }
        break;
    
    case (J_UP):
        if (can_player_move(*player_loc_x, *player_loc_y - tile, bk_col, MapHeight, MapWidth)){
            if (*player_loc_y < 96 || *player_loc_y > MapHeight*8 - 56){
                walk_without_background_movement(0, -1*tile, step);
            }
            else{
                walk_background_movement(0, -1*tile, step);
            }
            *player_loc_y -= 8;
        }
        *step = setbit_backward(*step);
        break;
    
    case (J_DOWN):
        if (can_player_move(*player_loc_x, *player_loc_y + tile, bk_col, MapHeight, MapWidth)){
            if (*player_loc_y < 88 || *player_loc_y > MapHeight*8 - 64){
                walk_without_background_movement(0, tile, step);
            }
            else{
                walk_background_movement(0, tile, step);
            }
            *player_loc_y += 8;
        }
        reset_bit();
        break;

    default:
        break;
    }
}

void setup_map(UWORD *pallete, unsigned char *map_data, unsigned char *tiles_1, unsigned char *tiles_0, int character_x, int character_y, int data_size, unsigned int MapHeight, unsigned int MapWidth){
    // setup background
    set_bkg_palette(0, 8, pallete);
    set_bkg_data(0, data_size, map_data);
    VBK_REG = 1;
    set_bkg_tiles(0, 0, MapWidth, MapHeight, tiles_1);
    VBK_REG = 0;
    set_bkg_tiles(0, 0, MapWidth, MapHeight, tiles_0);
    SHOW_BKG;
   
    // setup character sprite
    set_sprite_palette(0,8, &spritepalette[0]);
    set_sprite_data(0, 43, GameSprites);
    setupbit(character_x, character_y);
    setupfrog();
    player_location[0] = character_x;
    player_location[1] = character_y;
    SHOW_SPRITES;
    DISPLAY_ON;
}

void main(){
    unsigned char* bk_collision = Lvl1BackgroundMapPLN0;
    unsigned char* bk_tiles = Lvl1BackgroundMapPLN1;
    unsigned int MapHeight = Lvl1BackgroundMapHeight;
    unsigned int MapWidth = Lvl1BackgroundMapWidth;
    setup_map(backgroundpalette, Lvl1BackgroundData, bk_tiles, bk_collision, 88, 88, 127, MapHeight, MapWidth);

    game_running = 1;
    UINT8 step = 0;

    while(game_running){
        move(&step, &player_location[0], &player_location[1], bk_collision, MapHeight, MapWidth);
        step = setfrog_bounce(step);
        delay(100);
    }
>>>>>>> 98f176c5cbbcf2b4b24f1184df5130933b6875ba
}