#include <gb/gb.h>
#include <stdio.h>
#include "flags.h"
#include "GameCharacter.c"
//#include "Sprites/GameSprites.h"

UBYTE spritesize2 = 8;

struct GameCharacter_square frog;

void movegamecharacter_frog(struct GameCharacter_square* character, UINT8 x, UINT8 y){ 
    move_sprite(character->spriteids[0], x, y);
    move_sprite(character->spriteids[1], x + spritesize2, y);
    move_sprite(character->spriteids[2], x, y + spritesize2);
    move_sprite(character->spriteids[3], x + spritesize2, y + spritesize2);
}


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

