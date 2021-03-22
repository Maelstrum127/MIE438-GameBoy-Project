#include <gb/gb.h>
#include <gb/cgb.h>
#include <stdio.h>

UBYTE pongOneSpriteID1 = 43;
UBYTE pongOneSpriteID2 = 44;

void setupenemiesPongOne(UINT8 id){
    if(id == 0){
        enemies[id].x = 30;
        enemies[id].y = 15;
        enemies[id].xspeed = 2;
        enemies[id].xdirection = 1;
        enemies[id].yspeed = 0;
    }
    else if(id == 1){
        enemies[id].x = 50;
        enemies[id].y = 15;
        enemies[id].xspeed = 2;
        enemies[id].xdirection = 0;
        enemies[id].yspeed = 0;
    }
    else if(id == 2){
        enemies[id].x = 100;
        enemies[id].y = 15;
        enemies[id].xspeed = 2;
        enemies[id].xdirection = 1;
        enemies[id].yspeed = 0;
    }

    enemies[id].width = 16;
    enemies[id].height = 8;

    // load sprites for enemies
    UINT8 tileid = id*2 + 6;
    set_sprite_tile(tileid, pongOneSpriteID1);
    enemies[id].spritids[0] = tileid;

    set_sprite_tile(tileid+1, pongOneSpriteID1 + 1);
    enemies[id].spritids[1] = tileid+1;

    movepongcharacter(&enemies[id], enemies[id].x, enemies[id].y);
}

void setupball(UINT8 id){

    enemies[id].x = 90;
    enemies[id].y = 15;
    enemies[id].xspeed = 1;
    enemies[id].xdirection = 1;
    enemies[id].yspeed = 4;
    enemies[id].ydirection = 1;

    enemies[id].width = 8;
    enemies[id].height = 8;

    // load sprites for enemies
    UINT8 tileid = id*2 + 6;
    set_sprite_tile(tileid, pongOneSpriteID1);
    enemies[id].spritids[0] = tileid;

    moveballcharacter(&enemies[id], enemies[id].x, enemies[id].y);
}

void levelPongOne(){
    timer = 0;
    numEnemies = 3;
    
    //main character "Bit" setup:
    set_sprite_palette(0,8, &spritepalette[0]);
    set_sprite_data(0, 43, GameSprites);
    setupbit();

    //heat enemies setup:
    set_sprite_data(pongOneSpriteID1, pongOneSpriteID1+2, HeatSprites);
    UINT8 i;
    for (i=0; i<numEnemies; i++){
        setupenemiesPongOne(i);
    }

    ballID = numEnemies;
    setupball(ballID);

    SHOW_SPRITES;
    DISPLAY_ON;

    UBYTE breakcheck = 0;
    while(breakcheck == 0){
        performantdelay(5); 

        if(joypad()){
            pongJoypadDetection();
        }
        else{
            setbit_forward(Bitstep);
        }

        if(checkcollisions(&bit, &enemies[ballID])){
            enemies[ballID].ydirection = 0;
        }

        for (i = 0; i<ballID+1; i++) {
            if (enemies[i].xdirection == 1){
                enemies[i].x += enemies[i].xspeed;
            }
            else{
                enemies[i].x -= enemies[i].xspeed;
            }

            if(enemies[i].x >= 168-enemies[i].width){
                enemies[i].xdirection = 0;
            }
            else if(enemies[i].x <= 8){
                enemies[i].xdirection = 1;
            }
            
            if (i != ballID){
                if(checkenemycollisions(&enemies[ballID], &enemies[i])){
                    enemies[ballID].ydirection = 1;
                }

                movepongcharacter(&enemies[i],enemies[i].x,enemies[i].y);
            }   
        }

        if(enemies[ballID].ydirection == 1){
            enemies[ballID].y += enemies[ballID].yspeed;
        }
        else {
            enemies[ballID].y -= enemies[ballID].yspeed;
        }

        moveballcharacter(&enemies[ballID],enemies[ballID].x,enemies[ballID].y);

        if(enemies[ballID].y <= 8){
            breakcheck = 2;
        }
        else if(enemies[ballID].y >= 150){
            breakcheck = 1;
        }
    }

    if (breakcheck == 1)
        //FIX FIX FIX LATER AND DELETE
        printf("\n \n \n \n \n \n \n === GAME  OVER ===");
    else
        //FIX FIX FIX LATER AND DELETE
        printf("\n \n \n \n \n \n \n === YOU WON! === \n (Press A to continue.)");
}