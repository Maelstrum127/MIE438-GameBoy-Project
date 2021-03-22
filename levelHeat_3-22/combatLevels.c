#include <gb/gb.h>
#include <gb/cgb.h>
#include <stdio.h>

enemyCharacter enemies[8];
UBYTE numEnemies;
UINT16 timer = 0;
UBYTE ballID;
UBYTE Bitstep = 0;

void performantdelay(UINT8 numloops){
    UINT8 i;
    for(i = 0; i < numloops; i++){
        wait_vbl_done();
    }     
    timer += 1;
    if (timer == 255)
        timer = 0;
}

UBYTE checkcollisions(struct GameCharacter* one, enemyCharacter* two){
    UBYTE result = (one->x >= two->x && one->x <= two->x + two->width) && (one->y >= two->y && one->y <= two->y + two->height) || (two->x >= one->x && two->x <= one->x + one->width) && (two->y >= one->y && two->y <= one->y + one->height);
    result = result || (one->x + one->width >= two->x && one->x + one->width <= two->x + two->width) && (one->y >= two->y && one->y <= two->y + two->height);
    result = result || (two->x + two->width >= one->x && two->x + two->width <= one->x + one->width) && (two->y >= one->y && two->y <= one->y + one->height);
    return result;
}

UBYTE checkenemycollisions(enemyCharacter* one, enemyCharacter* two){
    UBYTE result = (one->x >= two->x && one->x <= two->x + two->width) && (one->y >= two->y && one->y <= two->y + two->height) || (two->x >= one->x && two->x <= one->x + one->width) && (two->y >= one->y && two->y <= one->y + one->height);
    result = result || (one->x + one->width >= two->x && one->x + one->width <= two->x + two->width) && (one->y >= two->y && one->y <= two->y + two->height);
    result = result || (two->x + two->width >= one->x && two->x + two->width <= one->x + one->width) && (two->y >= one->y && two->y <= one->y + one->height);
    return result;
}

void moveheatcharacter(enemyCharacter* character, UINT8 x, UINT8 y){
    move_sprite(character->spritids[0], x, y);
    move_sprite(character->spritids[1], x, y + spritesize);
}

void movepongcharacter(enemyCharacter* character, UINT8 x, UINT8 y){
    move_sprite(character->spritids[0], x, y);
    move_sprite(character->spritids[1], x + spritesize, y);
}

void moveballcharacter(enemyCharacter* character, UINT8 x, UINT8 y){
    move_sprite(character->spritids[0], x, y);
}

void pongJoypadDetection(){
    if (joypad() & J_LEFT){
        bit.x -=8;
        Bitstep = setbit_left(Bitstep);
    }
    if (joypad() & J_RIGHT){
        bit.x += 8;
        Bitstep = setbit_right(Bitstep);
    }
    movegamecharacter(&bit, bit.x, bit.y);
}

void combatHeatJoypadDetection(UINT8 step){

    if (joypad() & J_LEFT){
        bit.x -= 4;
        step = setbit_left(step);
        movegamecharacter(&bit, bit.x, bit.y);
    }
    if (joypad() & J_RIGHT){
        bit.x += 4;
        step = setbit_right(step);
        movegamecharacter(&bit, bit.x, bit.y);
    }

    if (joypad() & J_UP){
        bit.y -= 4;
        step = setbit_backward(step);
        movegamecharacter(&bit, bit.x, bit.y);
    }
    if (joypad() & J_DOWN){
        bit.y += 4;
        step = setbit_forward(step);
        movegamecharacter(&bit, bit.x, bit.y);
    }

    Bitstep = step;
}