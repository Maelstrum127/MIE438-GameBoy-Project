#include <gb/gb.h>
#include <stdio.h>
#include <stdbool.h>
#include <gb/console.h>
#include "Dialogues/letter2Data.c"
#include "Dialogues/Diag1.c"
#include "Dialogues/Diag2.c"
#include "Dialogues/Diag3.c"
#include "Dialogues/Diag4.c"

const unsigned char blankmap3[15] = {0x51, 0x52};


const UWORD blankbackground[] = {
    RGB_WHITE,RGB_WHITE,RGB_WHITE,RGB_WHITE,
    RGB_WHITE,RGB_WHITE,RGB_WHITE,RGB_WHITE,
    RGB_WHITE,RGB_WHITE,RGB_WHITE,RGB_WHITE,
    RGB_WHITE,RGB_WHITE,RGB_WHITE,RGB_WHITE,
};
// bank 0
void setup_windows(unsigned char *win_data, unsigned char *win_map, int data_size, unsigned int MapHeight, unsigned int MapWidth, unsigned int MapX, unsigned int MapY);
void setup_splashscreen();
void setup_dialogues();

// bank 2
void performantdelay(UINT8 numloops);
void movegamecharacter(struct GameCharacter* character, UINT8 x, UINT8 y);
void setupbit(INT8 init_x, INT8 init_y);
UINT8 setbit_forward(UINT8 step);
UINT8 setbit_backward(UINT8 step);
void walk_without_background_movement(INT8 move_x, INT8 move_y, UINT8 *step);
void walk_background_movement(INT8 move_x, INT8 move_y, UINT8 *step);
void move(UINT8 *step, UINT16 *player_loc_x, UINT16 *player_loc_y, unsigned char *bk_col, unsigned int MapHeight, unsigned int MapWidth);
void setup_map(UWORD *pallete, unsigned char *map_data, unsigned char *tiles_1, unsigned char *tiles_0, int data_size, unsigned int MapHeight, unsigned int MapWidth);
void pongJoypadDetection(UINT8 *step);
void combatHeatJoypadDetection(UINT8 *step);
struct GameCharacter* returnBitAddress();
void setupBitPong();
void do_game_play();
void setup_characters(int character_x, int character_y);

// bank 3 = combat level 1 pong
UBYTE bitLives;
UBYTE enemyLives;
UBYTE ballID;
void setupenemiesPongOne(UINT8 id);
void setupball(UINT8 id);
void pongOnePartOne(UINT8 i, UINT8 tileid);
void movePongCharacterFromCombatLevelsFile(UINT8 i);
void PongOnecheckcollisions(struct GameCharacter* bitAddress, UBYTE ballID);
UBYTE pongOneUpdate(UBYTE *bitLives, UBYTE *enemyLives, UBYTE ballID);

//bank 4
void transition();

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

void setup_dialogues(){
    setup_windows(Letter2Data, Diag1, 41, Diag1Height, Diag1Width, 7, 104);
    setup_windows(Letter2Data, Diag2, 41, Diag2Height, Diag2Width, 7, 104);
    setup_windows(Letter2Data, Diag3, 41, Diag3Height, Diag3Width, 7, 104);
    setup_windows(Letter2Data, Diag4, 41, Diag4Height, Diag4Width, 7, 104);
    HIDE_WIN;
}

//other stuff
_Bool levelPongOne(UINT8 *step){
    SWITCH_ROM_MBC1(2);
    struct GameCharacter* bitAddress = returnBitAddress();

    setupbit(80, 130);
    setupBitPong();
    printf(" ");

    UINT8 tileid = 0;
    UINT8 i;
    set_bkg_palette(0, 1, &blankbackground[0]);
    for (i=0; i<3; i++){   
        tileid = i*2 + 6;

        SWITCH_ROM_MBC1(4);
        set_sprite_tile(tileid, 42);
        set_sprite_prop(tileid, 3);
        set_sprite_tile(tileid+1, 43);
        set_sprite_prop(tileid+1, 3);

        SWITCH_ROM_MBC1(3);
        setupenemiesPongOne(i);
        pongOnePartOne(i, tileid);
        movePongCharacterFromCombatLevelsFile(i);
    }

    ballID = 3;
    setupball(ballID);

    SHOW_SPRITES;
    DISPLAY_ON;

    UBYTE timer = 0;
    UBYTE wastetest = 0;
    bitLives = 3;
    enemyLives = 3;

    while(bitLives != 0 && enemyLives != 0){
        for (timer = 0; timer<8; timer++){
            performantdelay(250); 
        }
        
        SWITCH_ROM_MBC1(2);
        if(joypad()){
            pongJoypadDetection(step);
        }
        else{
            wastetest = setbit_forward(*step);
        }

        SWITCH_ROM_MBC1(3);

        PongOnecheckcollisions(bitAddress, ballID);

        wastetest = pongOneUpdate(&bitLives, &enemyLives, ballID);

        if (wastetest == 0 && bitLives != 0 && enemyLives != 0){
            setupball(ballID);

            SHOW_SPRITES;
            DISPLAY_ON;

            performantdelay(100);        
            printf(" ");
            gotoxy(0, 7);
            printf("  Your lives: %d\n  Enemy lives: %d\n  Use A to continue", bitLives, enemyLives);
            while(!(joypad() & J_START)){
                performantdelay(5);
            }
            cls();
        }

    }

    if (bitLives == 0) {
        printf(" ");
        gotoxy(0, 7);
        printf("  === YOU LOSE ===\n   Please press B \n   to try again.");
        while(!(joypad() & J_START)){
            performantdelay(5); 
        }
        cls();
        return false;
    }
    else {
        printf(" ");
        gotoxy(0, 7);
        printf("  YOU WON THE BATTLE!\n    Mal has been \n     defeated! \n");
        while(!(joypad() & J_START)){
            performantdelay(5); 
        }
        cls();
        return true;
    }
}

void main()
{
	ENABLE_RAM_MBC1;
    //SWITCH_ROM_MBC1(4);
    printf(" ");
    gotoxy(0, 7);
    printf("    Where am I?\n   I'll ask over \n    there!");
	waitpad(J_START);
    waitpadup(); 
    cls();

	SWITCH_ROM_MBC1(2);
    setup_characters(48, 80);
	do_game_play();

    SWITCH_ROM_MBC1(0);
    setup_dialogues();

    SWITCH_ROM_MBC1(2);
	do_game_play();

    SWITCH_ROM_MBC1(2);
    transition();

    SWITCH_ROM_MBC1(0);
    performantdelay(5);

    //Combat Level 1 Pong
    UINT8 step = 0;
    _Bool test = false;
    while(test == false){
        test = levelPongOne(&step);
    }

}