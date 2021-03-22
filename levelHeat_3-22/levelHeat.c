#include <gb/gb.h>
#include <gb/cgb.h>
#include <stdio.h>

UBYTE heatSpriteID1 = 43;
UBYTE heatSpriteID2 = 44;

void setupenemiesHeatOne(UINT8 id){
    if (id == 0) {
        enemies[id].x = 0;
        enemies[id].y = 16;
        enemies[id].xspeed = 2;
        enemies[id].xdirection = true;
        enemies[id].yspeed = 3;
    }    
    else if (id == 1){
        enemies[id].x = 40;
        enemies[id].y = 30;
        enemies[id].xspeed = 4;
        enemies[id].xdirection = false;
        enemies[id].yspeed = 2;
    }
    else if (id == 2){
        enemies[id].x = 110;
        enemies[id].y = 40;
        enemies[id].xspeed = 1;
        enemies[id].xdirection = false;
        enemies[id].yspeed = 4;
    }
    else if (id == 3){
        enemies[id].x = 150;
        enemies[id].y = 30;
        enemies[id].xspeed = 3;
        enemies[id].xdirection = true;
        enemies[id].yspeed = 1;
    }
    else if (id == 4){
        enemies[id].x = 60;
        enemies[id].y = 0;
        enemies[id].xspeed = 2;
        enemies[id].xdirection = false;
        enemies[id].yspeed = 3;
    }
    else if (id == 5){
        enemies[id].x = 100;
        enemies[id].y = 80;
        enemies[id].xspeed = 4;
        enemies[id].xdirection = false;
        enemies[id].yspeed = 2;
    }
    else if (id == 6){
        enemies[id].x = 135;
        enemies[id].y = 16;
        enemies[id].xspeed = 3;
        enemies[id].xdirection = true;
        enemies[id].yspeed = 2;
    }
    else if (id == 7){
        enemies[id].x = 150;
        enemies[id].y = 25;
        enemies[id].xspeed = 2;
        enemies[id].xdirection = false;
        enemies[id].yspeed = 2;
    }
    else{
        printf("Error! Line 91");
    }


    enemies[id].width = 8;
    enemies[id].height = 16;

    // load sprites for enemies
    UINT8 tileid = id*2 + 6;
    set_sprite_tile(tileid, heatSpriteID1);
    enemies[id].spritids[0] = tileid;

    set_sprite_tile(tileid+1, heatSpriteID1 + 1);
    enemies[id].spritids[1] = tileid+1;

    moveheatcharacter(&enemies[id], enemies[id].x, enemies[id].y);
}

void levelHeat(){
    timer = 0;
    numEnemies = 8;
    
    //main character "Bit" setup:
    set_sprite_palette(0,8, &spritepalette[0]);
    set_sprite_data(0, 43, GameSprites);
    setupbit();

    //heat enemies setup:
    set_sprite_data(heatSpriteID1, heatSpriteID1+2, HeatSprites);
    UINT8 i;
    for(i=0; i<numEnemies; i++){
        setupenemiesHeatOne(i);
    }

    SHOW_SPRITES;
    DISPLAY_ON;

    UBYTE breakcheck = 0;
    while(breakcheck == 0){
        performantdelay(5); 

        combatHeatJoypadDetection(Bitstep);

        for (i = 0; i<numEnemies; i++) {
            
            if(enemies[i].y >= 150){
                enemies[i].y=0;
            }
            if(enemies[i].x >= 168-enemies[i].width){
                enemies[i].xdirection = false;
            }
            else if(enemies[i].x <= 8){
                enemies[i].xdirection = true;
            }

            enemies[i].y += enemies[i].yspeed;
            if(enemies[i].xdirection == true){
                enemies[i].x += enemies[i].xspeed;
            }
            else if (enemies[i].xdirection == false){
                enemies[i].x -= enemies[i].xspeed;
            }

            moveheatcharacter(&enemies[i],enemies[i].x,enemies[i].y);

            if(checkcollisions(&bit, &enemies[i])){
                breakcheck = 1;
            }
        }

        if(bit.y <= 4){
            breakcheck = 2;
        }

    }

    if (breakcheck == 1)
        //FIX FIX FIX LATER AND DELETE
        //INTRODUCE INTERRUPTS!
        printf("\n \n \n \n \n \n \n === GAME  OVER ===");
    else
        //FIX FIX FIX LATER AND DELETE
        //INTRODUCE INTERRUPTS!
        printf("\n \n \n \n \n \n \n === YOU WON! === \n (Press A to continue.)");
}