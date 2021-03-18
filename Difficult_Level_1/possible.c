#include <gb/gb.h>
#include <stdio.h>
#include "GameCharacter.c"
#include "GameSprites.c"

GameCharacter boy;
UINT8 numEnemies;
numEnemies = 2;
GameCharacter enemies[numEnemies];

void performantdelay(UINT8 numloops){
    UINT8 i;
    for(i = 0; i < numloops; i++){
        wait_vbl_done();
    }     
}

UBYTE checkcollisions(GameCharacter* one, GameCharacter* two){
    return (one->x >= two->x && one->x <= two->x + two->width) && (one->y >= two->y && one->y <= two->y + two->height) || (two->x >= one->x && two->x <= one->x + one->width) && (two->y >= one->y && two->y <= one->y + one->height);
}

void movegamecharacter(GameCharacter* character, UINT8 x, UINT8 y){
    move_sprite(character->spritids[0], x, y);
    move_sprite(character->spritids[1], x + spritesize, y);
    move_sprite(character->spritids[2], x, y + spritesize);
    move_sprite(character->spritids[3], x + spritesize, y + spritesize);
}

void setupship(){
    ship.x = 80;
    ship.y = 130;
    ship.width = 16;
    ship.height = 16;

    // load sprites for ship
    set_sprite_tile(0, 0);
    ship.spritids[0] = 0;
    set_sprite_tile(1, 1);
    ship.spritids[1] = 1;
    set_sprite_tile(2, 2);
    ship.spritids[2] = 2;
    set_sprite_tile(3, 3);
    ship.spritids[3] = 3;

    movegamecharacter(&ship, ship.x, ship.y);
}

void setupbug(GameCharacter* character, UINT8 enemyNum){
    character.x = 30;
    character.y = 0;
    character.width = 16;
    character.height = 16;    

    // load sprites for bug
    UINT8 tileid = enemyNum*4;
    set_sprite_tile(tileid, tileid);
    character.spritids[0] = tileid;

    set_sprite_tile(tileid+1, tileid+1);
    character.spritids[1] = tileid+1;

    set_sprite_tile(tileid+2, tileid+2);
    character.spritids[2] = tileid+2;

    set_sprite_tile(tileid+3, tileid+3);
    character.spritids[3] = tileid+3;

    movegamecharacter(&character, character.x, character.y);
}

void main(){
    set_sprite_data(0, 8, GameSprites);
    setupship();
    setupbug();

    SHOW_SPRITES;
    DISPLAY_ON;

    while(!checkcollisions(&ship, &bug)){
       if(joypad() & J_LEFT){
           ship.x -= 2;
           movegamecharacter(&ship, ship.x, ship.y);
       }
       if(joypad() & J_RIGHT){
           ship.x += 2;
           movegamecharacter(&ship, ship.x, ship.y);
       }

       for i
       
       bug.y += 5;

       if(bug.y >= 144){
           bug.y=0;
           bug.x = ship.x;
       }

       movegamecharacter(&bug,bug.x,bug.y);

       performantdelay(5);      
    }

    printf("\n \n \n \n \n \n \n === GAME  OVER ===");
}