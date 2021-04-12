#include<gb/gb.h>
#include<stdio.h>
#include "flags.h"
#include "Splashscreens/intro1.c"
#include "Splashscreens/intro2.c"
#include "Splashscreens/intro3.c"
#include "Dialogues/letter2Data.c"
#include "Dialogues/Diag1.c"
#include "Dialogues/Diag2.c"
#include "Dialogues/Diag3.c"
#include "Dialogues/Diag4.c"
#include "Backgrounds/Lvl1BackgroundMap.h"
#include "Backgrounds/Lvl1BackgroundData.h"
#include "Sprites/GameSprites.h"
#include "GameCharacter.c"

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

// bank 0
void setup_windows(unsigned char *win_data, unsigned char *win_map, int data_size, unsigned int MapHeight, unsigned int MapWidth, unsigned int MapX, unsigned int MapY);
void setup_splashscreen();
void setup_dialogues();

// bank 2
void performantdelay(UINT8 numloops);
void movegamecharacter(struct GameCharacter* character, UINT8 x, UINT8 y);
void setupbit(INT8 init_x, INT8 init_y);
void walk_without_background_movement(INT8 move_x, INT8 move_y, UINT8 *step);
void walk_background_movement(INT8 move_x, INT8 move_y, UINT8 *step);
void move(UINT8 *step, UINT16 *player_loc_x, UINT16 *player_loc_y, unsigned char *bk_col, unsigned int MapHeight, unsigned int MapWidth);
void do_game_play(unsigned char* bk_collision, unsigned int MapHeight, unsigned int MapWidth);

// bank 3
void load_sprite_data();
void movegamecharacter_frog(struct GameCharacter_square* character, UINT8 x, UINT8 y);
//void scroll_frog(int x, int y);
void setupfrog();

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

void setup_map(UWORD *pallete, unsigned char *map_data, unsigned char *tiles_1, unsigned char *tiles_0, int data_size, unsigned int MapHeight, unsigned int MapWidth){
    // setup background
    DISPLAY_OFF;
    set_bkg_palette(0, 8, pallete);
    set_bkg_data(0, data_size, map_data);
    VBK_REG = 1;
    set_bkg_tiles(0, 0, MapWidth, MapHeight, tiles_1);
    VBK_REG = 0;
    set_bkg_tiles(0, 0, MapWidth, MapHeight, tiles_0);
    SHOW_BKG;
    DISPLAY_ON;
   
    // // setup character sprite
    DISPLAY_ON;
}

void setup_characters(int character_x, int character_y){
    set_sprite_palette(0,8, &spritepalette[0]);
    set_sprite_data(0, 46, GameSprites);
    setupbit(character_x, character_y);
    player_location[0] = character_x;
    player_location[1] = character_y;
    SHOW_SPRITES;
}

extern struct GameCharacter_square frog;
void scroll_frog(int x, int y){
    scroll_sprite(frog.spriteids[0], x, y);
    scroll_sprite(frog.spriteids[1], x, y);
    scroll_sprite(frog.spriteids[2], x, y);
    scroll_sprite(frog.spriteids[3], x, y);
}

void main()
{
    unsigned char* bk_collision = Lvl1BackgroundMapPLN0;
    unsigned char* bk_tiles = Lvl1BackgroundMapPLN1;
    unsigned int MapHeight = Lvl1BackgroundMapHeight;
    unsigned int MapWidth = Lvl1BackgroundMapWidth;

	ENABLE_RAM_MBC1;
    SWITCH_ROM_MBC1(0);
    setup_splashscreen();

    SWITCH_ROM_MBC1(3);
    //load_sprite_data();
    setupfrog();

	SWITCH_ROM_MBC1(2);
    setup_map(backgroundpalette, Lvl1BackgroundData, bk_tiles, bk_collision, 127, MapHeight, MapWidth);
    setup_characters(88, 88);
	do_game_play(bk_collision, MapHeight, MapWidth);

    SWITCH_ROM_MBC1(0);
    setup_dialogues();

	SWITCH_ROM_MBC1(2);
	do_game_play(bk_collision, MapHeight, MapWidth);
}