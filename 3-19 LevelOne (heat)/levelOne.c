#include <gb/gb.h>
#include <gb/cgb.h>
#include <stdio.h>

enemyCharacter enemies[8];
UBYTE numEnemies = 8;
 
UINT16 timer = 0;
UBYTE heatSpriteID1 = 43;
UBYTE heatSpriteID2 = 44;

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

void moveenemycharacter(enemyCharacter* character, UINT8 x, UINT8 y){
    move_sprite(character->spritids[0], x, y);
    move_sprite(character->spritids[1], x, y + spritesize);
}

void setupenemy(UINT8 id){
    if (id == 0) {
        enemies[id].x = 0;
        enemies[id].y = 0;
        enemies[id].xspeed = 1;
        enemies[id].xdirection = 1;
        enemies[id].yspeed = 1;
    }    
    else if (id == 1){
        enemies[id].x = 40;
        enemies[id].y = 0;
        enemies[id].xspeed = 2;
        enemies[id].xdirection = 0;
        enemies[id].yspeed = 2;
    }
    else if (id == 2){
        enemies[id].x = 110;
        enemies[id].y = 0;
        enemies[id].xspeed = 1;
        enemies[id].xdirection = 0;
        enemies[id].yspeed = 0;
    }
    else if (id == 3){
        enemies[id].x = 150;
        enemies[id].y = 0;
        enemies[id].xspeed = 2;
        enemies[id].xdirection = 1;
        enemies[id].yspeed = 0;
    }
    else if (id == 4){
        enemies[id].x = 60;
        enemies[id].y = 0;
        enemies[id].xspeed = 2;
        enemies[id].xdirection = 0;
        enemies[id].yspeed = 0;
    }
    else if (id == 5){
        enemies[id].x = 100;
        enemies[id].y = 0;
        enemies[id].xspeed = 4;
        enemies[id].xdirection = 0;
        enemies[id].yspeed = 0;
    }
    else if (id == 6){
        enemies[id].x = 135;
        enemies[id].y = 0;
        enemies[id].xspeed = 3;
        enemies[id].xdirection = 1;
        enemies[id].yspeed = 0;
    }
    else if (id == 7){
        enemies[id].x = 150;
        enemies[id].y = 0;
        enemies[id].xspeed = 3;
        enemies[id].xdirection = 0;
        enemies[id].yspeed = 0;
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

    moveenemycharacter(&enemies[id], enemies[id].x, enemies[id].y);
}

void levelOne(){
    //main character "Bit" setup:
    UINT8 step = 0;
    set_sprite_palette(0,8, &spritepalette[0]);
    set_sprite_data(0, 43, GameSprites);
    setupbit();

    //heat enemies setup:
    set_sprite_data(heatSpriteID1, heatSpriteID1+2, HeatSprites);
    UINT8 i;
    for(i=0; i<numEnemies; i++){
        setupenemy(i);
    }

    SHOW_SPRITES;
    DISPLAY_ON;

    UBYTE breakcheck = 0;
    while(breakcheck == 0){
        performantdelay(5); 

        if (timer == 60){
            enemies[2].yspeed = 1;
        }
        if (timer == 120) {
            enemies[3].yspeed = 1;
            enemies[4].yspeed = 3;
        }
        if(timer == 180){
            enemies[5].yspeed = 2;
        }
        if (timer == 250) {
            enemies[6].yspeed = 2;
            enemies[7].yspeed = 1;
        }

       heatJoypadDetection(step);

        for (i = 0; i<numEnemies; i++) {
            
            if(enemies[i].y >= 150){
                enemies[i].y=0;
            }
            if(enemies[i].x >= 168-enemies[i].width){
                enemies[i].xdirection = 0;
            }
            else if(enemies[i].x <= 8){
                enemies[i].xdirection = 1;
            }

            enemies[i].y += enemies[i].yspeed;
            if(enemies[i].xdirection == 1){
                enemies[i].x += enemies[i].xspeed;
            }
            else if (enemies[i].xdirection == 0){
                enemies[i].x -= enemies[i].xspeed;
            }

            moveenemycharacter(&enemies[i],enemies[i].x,enemies[i].y);

            if(checkcollisions(&bit, &enemies[i])){
                breakcheck = 1;
            }
        }

        if(timer >= 300){
            breakcheck = 2;
        }

    }

    if (breakcheck == 1)
        printf("\n \n \n \n \n \n \n === GAME  OVER ===");
    else
        printf("\n \n \n \n \n \n \n === YOU WON! === \n (Press A to continue.)");
}