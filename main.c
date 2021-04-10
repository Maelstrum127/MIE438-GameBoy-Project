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
void setup_dialogues();

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
void load_sprite_data();
void movegamecharacter_frog(struct GameCharacter_square* character, UINT8 x, UINT8 y);
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
void main()
{
	ENABLE_RAM_MBC1;
    SWITCH_ROM_MBC1(0);
    setup_splashscreen();

    SWITCH_ROM_MBC1(3);
    //load_sprite_data();
    setupfrog();

	SWITCH_ROM_MBC1(2);
	do_game_play();

    SWITCH_ROM_MBC1(0);
    setup_dialogues();
}