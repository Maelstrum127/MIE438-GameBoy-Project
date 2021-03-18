#include <gb/gb.h>

GameCharacter ship;
GameCharacter enemies[8];
UBYTE numEnemies = 8;
UBYTE spritesize = 8;
UINT16 numPerformantDelays = 0;

void performantdelay(UINT8 numloops){
    UINT8 i;
    for(i = 0; i < numloops; i++){
        wait_vbl_done();
    }     
    numPerformantDelays += 1;
    if (numPerformantDelays == 255)
        numPerformantDelays = 0;
}

UBYTE checkcollisions(GameCharacter* one, GameCharacter* two){
    UBYTE result = (one->x >= two->x && one->x <= two->x + two->width) && (one->y >= two->y && one->y <= two->y + two->height) || (two->x >= one->x && two->x <= one->x + one->width) && (two->y >= one->y && two->y <= one->y + one->height);
    result = result || (one->x + one->width >= two->x && one->x + one->width <= two->x + two->width) && (one->y >= two->y && one->y <= two->y + two->height);
    result = result || (two->x + two->width >= one->x && two->x + two->width <= one->x + one->width) && (two->y >= one->y && two->y <= one->y + one->height);
    return result;
}

void movegamecharacter(GameCharacter* character, UINT8 x, UINT8 y){
    move_sprite(character->spritids[0], x, y);
    move_sprite(character->spritids[1], x + spritesize, y);
    move_sprite(character->spritids[2], x, y + spritesize);
    move_sprite(character->spritids[3], x + spritesize, y + spritesize);
}

void moveenemycharacter(GameCharacter* character, UINT8 x, UINT8 y){
    move_sprite(character->spritids[0], x, y);
    move_sprite(character->spritids[1], x, y + spritesize);
}

void setupship(){
    ship.x = 80;
    ship.y = 130;
    ship.width = 14;
    ship.height = 10;

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

void setupenemy(UINT8 id){
    if (id == 0) {
        enemies[id].x = 0;
        enemies[id].y = 0;
        enemies[id].xspeed = 4;
        enemies[id].xdirection = 1;
        enemies[id].yspeed = 4;
    }    
    else if (id == 1){
        enemies[id].x = 40;
        enemies[id].y = 0;
        enemies[id].xspeed = 3;
        enemies[id].xdirection = 1;
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
        enemies[id].xspeed = 3;
        enemies[id].xdirection = 0;
        enemies[id].yspeed = 0;
    }
    else if (id == 5){
        enemies[id].x = 100;
        enemies[id].y = 0;
        enemies[id].xspeed = 7;
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
        enemies[id].xspeed = 5;
        enemies[id].xdirection = 0;
        enemies[id].yspeed = 0;
    }
    else{
        printf("Error! Line 71");
    }


    enemies[id].width = 8;
    enemies[id].height = 16;

    // load sprites for enemies
    UINT8 tileid = id*2 + 4;
    set_sprite_tile(tileid, 4);
    enemies[id].spritids[0] = tileid;

    set_sprite_tile(tileid+1, 5);
    enemies[id].spritids[1] = tileid+1;

    moveenemycharacter(&enemies[id], enemies[id].x, enemies[id].y);
}

void levelOne(){
    set_sprite_data(0, 4, GameSprites);
    set_sprite_data(4, 6, HeatSprites);
    setupship();
    UINT8 i;
    for(i=0; i<numEnemies; i++){
        setupenemy(i);
    }

    set_bkg_data(0, 7, bkgcircletiles);
    set_bkg_tiles(0, 0, 25, 32, bkgcirclesmap);
    SHOW_BKG;
    SHOW_SPRITES;
    DISPLAY_ON;

    UBYTE breakcheck = 0;
    while(breakcheck != 1){
        scroll_bkg(0, 1);

        if (numPerformantDelays == 60){
            enemies[2].yspeed = 1;
        }
        if (numPerformantDelays == 120) {
            enemies[3].yspeed = 1;
            enemies[4].yspeed = 3;
        }
        if(numPerformantDelays == 180){
            enemies[5].yspeed = 2;
        }
        if (numPerformantDelays == 250) {
            enemies[6].yspeed = 2;
            enemies[7].yspeed = 5;
        }

        

       if(joypad() & J_LEFT){
           ship.x -= 4;
           movegamecharacter(&ship, ship.x, ship.y);
       }
       if(joypad() & J_RIGHT){
           ship.x += 4;
           movegamecharacter(&ship, ship.x, ship.y);
       }
       

        for (i = 0; i<numEnemies; i++) {
            
            if(checkcollisions(&ship, &enemies[i])){
                breakcheck = 1;
            }
            
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
        }

       performantdelay(5);   

    }

    printf("\n \n \n \n \n \n \n === GAME  OVER ===");
}