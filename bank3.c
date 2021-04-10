
#include <gb/gb.h>
//#include "GameCharacter.c"
//#include "Sprites/GameSprites.h"

struct GameCharacter_square frog;
UBYTE spritesize2 = 8;

// const UWORD spritepalette[] = {
//     GameSpritesCGBPal0c0,
//     GameSpritesCGBPal0c1,
//     GameSpritesCGBPal0c2,
//     GameSpritesCGBPal0c3,

//     GameSpritesCGBPal1c0,
//     GameSpritesCGBPal1c1,
//     GameSpritesCGBPal1c2,
//     GameSpritesCGBPal1c3,


//     GameSpritesCGBPal2c0,
//     GameSpritesCGBPal2c1,
//     GameSpritesCGBPal2c2,
//     GameSpritesCGBPal2c3,

//     GameSpritesCGBPal3c0,
//     GameSpritesCGBPal3c1,
//     GameSpritesCGBPal3c2,
//     GameSpritesCGBPal3c3,

//     GameSpritesCGBPal4c0,
//     GameSpritesCGBPal4c1,
//     GameSpritesCGBPal4c2,
//     GameSpritesCGBPal4c3,

//     GameSpritesCGBPal5c0,
//     GameSpritesCGBPal5c1,
//     GameSpritesCGBPal5c2,
//     GameSpritesCGBPal5c3,

//     GameSpritesCGBPal6c0,
//     GameSpritesCGBPal6c1,
//     GameSpritesCGBPal6c2,
//     GameSpritesCGBPal6c3,

//     GameSpritesCGBPal7c0,
//     GameSpritesCGBPal7c1,
//     GameSpritesCGBPal7c2,
//     GameSpritesCGBPal7c3,
// };

struct GameCharacter_square {
    UBYTE spriteids[4];
    UINT8 x;
    UINT8 y;
    UINT8 width;
    UINT8 height;
};

void movegamecharacter_frog(struct GameCharacter_square* character, UINT8 x, UINT8 y){
    move_sprite(character->spriteids[0], x, y);
    move_sprite(character->spriteids[1], x + spritesize2, y);
    move_sprite(character->spriteids[2], x, y + spritesize2);
    move_sprite(character->spriteids[3], x + spritesize2, y + spritesize2);
}

// void load_sprite_data(){
//     // setup character sprite
//     set_sprite_palette(0,8, &spritepalette[0]);
//     set_sprite_data(0, 46, GameSprites);
// }

void setupfrog(){
    frog.x = 80;
    frog.y = 20;
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
    SHOW_SPRITES;
    DISPLAY_ON;
}

