#include <gb/gb.h>
#include <gb/cgb.h>
#include <stdio.h>
#include "EnemyCharacter.c"
#include "GameCharacter.c"

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
    move_sprite(character->spritids[1], x, y + 8);
}

void movepongcharacter(enemyCharacter* character, UINT8 x, UINT8 y){
    move_sprite(character->spritids[0], x, y);
    move_sprite(character->spritids[1], x + 8, y);
}

void moveballcharacter(enemyCharacter* character, UINT8 x, UINT8 y){
    move_sprite(character->spritids[0], x, y);
}

