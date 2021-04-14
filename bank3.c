#include <gb/gb.h>
#include <gb/cgb.h>
#include <stdio.h>
#include <stdbool.h>
#include <gb/console.h>
#include "combatLevels.c"

#define BackWidth 1
#define BackHeight 1
#define BackBank 0


enemyCharacter enemies[8];

void setupenemiesPongOne(UINT8 id){
    if(id == 0){
        enemies[id].x = 30;
        enemies[id].y = 15;
        enemies[id].xspeed = 1;
        enemies[id].xdirection = false;
        enemies[id].yspeed = 0;
    }
    else if(id == 1){
        enemies[id].x = 50;
        enemies[id].y = 15;
        enemies[id].xspeed = 1;
        enemies[id].xdirection = true;
        enemies[id].yspeed = 0;
    }
    else if(id == 2){
        enemies[id].x = 100;
        enemies[id].y = 15;
        enemies[id].xspeed = 1;
        enemies[id].xdirection = false;
        enemies[id].yspeed = 0;
    }

    enemies[id].width = 16;
    enemies[id].height = 8;

    
}

void setupball(UINT8 id){

    enemies[id].x = 90;
    enemies[id].y = 30;
    enemies[id].xspeed = 1;
    enemies[id].xdirection = false;
    enemies[id].yspeed = 1;
    enemies[id].ydirection = true;

    enemies[id].width = 8;
    enemies[id].height = 8;

    // load sprites for enemies
    UINT8 tileid = id*2 + 6;
    set_sprite_tile(tileid, 44);
    set_sprite_prop(tileid, 3);
    enemies[id].spritids[0] = tileid;

    moveballcharacter(&enemies[id], enemies[id].x, enemies[id].y);
}

void pongOnePartOne(UINT8 i, UINT8 tileid){
    enemies[i].spritids[0] = tileid;
    enemies[i].spritids[1] = tileid+1;
}

void movePongCharacterFromCombatLevelsFile(UINT8 i){
    movepongcharacter(&enemies[i], enemies[i].x, enemies[i].y);
}

void PongOnecheckcollisions(struct GameCharacter* bitAddress, UBYTE ballID){
    if(checkcollisions(bitAddress, &enemies[ballID])){
        enemies[ballID].ydirection = false;
    }
}

UBYTE pongOneUpdate(UBYTE *bitLives, UBYTE *enemyLives, UBYTE ballID){

    UINT8 k;

    for (k = 0; k<ballID+1; k++) {
        if (enemies[k].xdirection == true){
            enemies[k].x += enemies[k].xspeed;
        }
        else{
            enemies[k].x -= enemies[k].xspeed;
        }

        if(enemies[k].x >= 168-enemies[k].width){
            enemies[k].xdirection = false;
        }
        else if(enemies[k].x <= 8){
            enemies[k].xdirection = true;
        }
        
        if (k != ballID){
            if(checkenemycollisions(&enemies[ballID], &enemies[k])){
                enemies[ballID].ydirection = true;
            }

            movepongcharacter(&enemies[k],enemies[k].x,enemies[k].y);
        }   
    }

    if(enemies[ballID].ydirection == true){
        enemies[ballID].y += enemies[ballID].yspeed;
    }
    else {
        enemies[ballID].y -= enemies[ballID].yspeed;
    }

    moveballcharacter(&enemies[ballID],enemies[ballID].x,enemies[ballID].y);

    if(enemies[ballID].y <= 8){
        *enemyLives = *enemyLives - 1;
        return 0;
    }
    else if(enemies[ballID].y >= 150){
        *bitLives = *bitLives - 1;
        return 0;
    }
    
    return 1;
    
}

