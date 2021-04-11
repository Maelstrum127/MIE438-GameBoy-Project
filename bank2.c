#include <gb/gb.h>
#include <gb/font.h>
#include <stdio.h>
#include <gb/cgb.h>
#include "flags.h"
#include "Backgrounds/Lvl1BackgroundMap.h"
#include "Backgrounds/Lvl1BackgroundData.h"
#include "GameCharacter.c"
#include "Sprites/GameSprites.h"

const unsigned char blankmap[15] = {0x51, 0x52};

struct GameCharacter bit;
UBYTE spritesize = 8;

UBYTE has_key, open_door, game_running;

void performantdelay(UINT8 numloops){
    UINT8 i;
    for(i=0;i<numloops;i++){
        wait_vbl_done();
    }
}


void movegamecharacter(struct GameCharacter* character, UINT8 x, UINT8 y){
    move_sprite(character->spriteids[0], x, y);
    move_sprite(character->spriteids[1], x + spritesize, y);
    move_sprite(character->spriteids[2], x, y + spritesize);
    move_sprite(character->spriteids[3], x + spritesize, y + spritesize);
    move_sprite(character->spriteids[4], x, y + 2*spritesize);
    move_sprite(character->spriteids[5], x + spritesize, y + 2*spritesize);
}

void setupbit(INT8 init_x, INT8 init_y){
    bit.x = init_x;
    bit.y = init_y;
    bit.height = 32;
    bit.width = 24;

    // load bit sprites
    set_sprite_tile(0,0);
    bit.spriteids[0] = 0;
    set_sprite_prop(0,4);
    set_sprite_tile(1,1);
    bit.spriteids[1] = 1;
    set_sprite_prop(1,4);
    set_sprite_tile(2,2);
    bit.spriteids[2] = 2;
    set_sprite_prop(2,1);    
    set_sprite_tile(3,3);
    bit.spriteids[3] = 3;
    set_sprite_prop(3,1);  
    set_sprite_tile(4,4);
    bit.spriteids[4] = 4; 
    set_sprite_prop(4,7);
    set_sprite_tile(5,5);
    bit.spriteids[5] = 5; 
    set_sprite_prop(5,7); 

    movegamecharacter(&bit, bit.x, bit.y); 

}

UINT8 setbit_forward(UINT8 step){
    if (step == 1){
    set_sprite_tile(0,0);
    bit.spriteids[0] = 0;
    set_sprite_tile(1,1);
    bit.spriteids[1] = 1;
    set_sprite_tile(2,2);
    bit.spriteids[2] = 2;    
    set_sprite_tile(3,3);
    bit.spriteids[3] = 3;  
    set_sprite_tile(4,6);
    bit.spriteids[4] = 4; 
    set_sprite_tile(5,7);
    bit.spriteids[5] = 5;
    }
    if (step == 0){
    set_sprite_tile(0,0);
    bit.spriteids[0] = 0;
    set_sprite_tile(1,1);
    bit.spriteids[1] = 1;
    set_sprite_tile(2,2);
    bit.spriteids[2] = 2;    
    set_sprite_tile(3,3);
    bit.spriteids[3] = 3;  
    set_sprite_tile(4,8);
    bit.spriteids[4] = 4; 
    set_sprite_tile(5,9);
    bit.spriteids[5] = 5;   
    }
return (step + 1)%2;
}

UINT8 setbit_backward(UINT8 step){
    if (step == 1){
    set_sprite_tile(0,10);
    bit.spriteids[0] = 0;
    set_sprite_tile(1,11);
    bit.spriteids[1] = 1;
    set_sprite_tile(2,12);
    bit.spriteids[2] = 2;    
    set_sprite_tile(3,13);
    bit.spriteids[3] = 3;  
    set_sprite_tile(4,14);
    bit.spriteids[4] = 4; 
    set_sprite_tile(5,15);
    bit.spriteids[5] = 5;
    }
    if (step == 0){
    set_sprite_tile(0,10);
    bit.spriteids[0] = 0;
    set_sprite_tile(1,11);
    bit.spriteids[1] = 1;
    set_sprite_tile(2,12);
    bit.spriteids[2] = 2;    
    set_sprite_tile(3,13);
    bit.spriteids[3] = 3;  
    set_sprite_tile(4,16);
    bit.spriteids[4] = 4; 
    set_sprite_tile(5,17);
    bit.spriteids[5] = 5;   
    }
return (step + 1)%2;
}

UINT8 setbit_right(UINT8 step){
    if (step == 1){
    set_sprite_tile(0,18);
    bit.spriteids[0] = 0;
    set_sprite_tile(1,19);
    bit.spriteids[1] = 1;
    set_sprite_tile(2,20);
    bit.spriteids[2] = 2;    
    set_sprite_tile(3,21);
    bit.spriteids[3] = 3;  
    set_sprite_tile(4,22);
    bit.spriteids[4] = 4; 
    set_sprite_tile(5,23);
    bit.spriteids[5] = 5;
    }
    if (step == 0){
    set_sprite_tile(0,30);
    bit.spriteids[0] = 0;
    set_sprite_tile(1,31);
    bit.spriteids[1] = 1;
    set_sprite_tile(2,32);
    bit.spriteids[2] = 2;    
    set_sprite_tile(3,33);
    bit.spriteids[3] = 3;  
    set_sprite_tile(4,34);
    bit.spriteids[4] = 4; 
    set_sprite_tile(5,35);
    bit.spriteids[5] = 5;   
    }
return (step + 1)%2;
}

UINT8 setbit_left(UINT8 step){
    if (step == 1){
    set_sprite_tile(0,24);
    bit.spriteids[0] = 0;
    set_sprite_tile(1,25);
    bit.spriteids[1] = 1;
    set_sprite_tile(2,26);
    bit.spriteids[2] = 2;    
    set_sprite_tile(3,27);
    bit.spriteids[3] = 3;  
    set_sprite_tile(4,28);
    bit.spriteids[4] = 4; 
    set_sprite_tile(5,29);
    bit.spriteids[5] = 5;
    }
    if (step == 0){
    set_sprite_tile(0,36);
    bit.spriteids[0] = 0;
    set_sprite_tile(1,37);
    bit.spriteids[1] = 1;
    set_sprite_tile(2,38);
    bit.spriteids[2] = 2;    
    set_sprite_tile(3,39);
    bit.spriteids[3] = 3;  
    set_sprite_tile(4,40);
    bit.spriteids[4] = 4; 
    set_sprite_tile(5,41);
    bit.spriteids[5] = 5;   
    }
return (step + 1)%2;
}

void reset_bit(){
    set_sprite_tile(0,0);
    bit.spriteids[0] = 0;
    set_sprite_tile(1,1);
    bit.spriteids[1] = 1;
    set_sprite_tile(2,2);
    bit.spriteids[2] = 2;    
    set_sprite_tile(3,3);
    bit.spriteids[3] = 3;  
    set_sprite_tile(4,4);
    bit.spriteids[4] = 4; 
    set_sprite_tile(5,5);
    bit.spriteids[5] = 5;   
}

UINT8 special_tile(UINT16 player_loc){
    UINT8 rtn;
    rtn = 0;
    if (player_loc == 329){
        //key
        has_key = 1;
        set_bkg_tiles(player_loc%20, player_loc/20, 1, 1, blankmap);
        rtn = 1;
    }
    else if (player_loc == 168 && has_key){
        //door
        open_door = 1;
        set_bkg_tiles(player_loc%20, player_loc/20, 1, 1, blankmap);
        rtn = 1;
    }
    else if (player_loc == 358){
        //game over
        game_running = 0;
        HIDE_SPRITES;
        printf("\n \n \n \n \n \n \n \n \n      YOU WIN!!!!");
        rtn = 1;
    }
    return rtn;
}

UBYTE is_walkable(unsigned char tile){
    UBYTE rtn = 0;
    for (int i=0;i<2;i++){
        if (tile == blankmap[i]){
            rtn = 1;
        }
    }
    return rtn;
}

UINT8 can_player_move(UINT16 newplayerx, UINT16 newplayery, unsigned char *bk_col, unsigned int MapHeight, unsigned int MapWidth){
    UINT16 indexTLx, indexTLy, tileindexTL;
    UINT8 result;

    indexTLx = (newplayerx/8)%MapWidth;
    indexTLy = newplayery/8;

    tileindexTL = MapWidth*indexTLy + indexTLx; // x_width * y_index + x_index

    result = 0; //special_tile(tileindexTL);
    if (is_walkable(bk_col[tileindexTL]) && is_walkable(bk_col[tileindexTL - 1])){
        result = 1;
    }
    if (newplayery < 16 || newplayery > 8 + MapHeight*8){
        result = 0;
    }
    if (newplayerx < 8 || newplayerx > MapWidth*8){
        result = 0;
    }

    return result;
}

void walk_without_background_movement(INT8 move_x, INT8 move_y, UINT8 *step){
    while(move_x != 0){
        bit.x += (move_x > 0 ? 2 : -2);
        if (move_x % 4 == 0 && move_x != 0){
            *step = (move_x > 0 ? setbit_right(*step) : setbit_left(*step));
        }
        move_x += (move_x > 0 ? -2 : 2);
        movegamecharacter(&bit, bit.x, bit.y);
        performantdelay(2);
    }
    while (move_y != 0){
        bit.y += (move_y > 0 ? 2 : -2);
        if (move_y % 4 == 0 && move_y != 0){
            *step = (move_y >  0 ? setbit_forward(*step) : setbit_backward(*step));
        }
        move_y += (move_y > 0 ? -2 : 2);
        movegamecharacter(&bit, bit.x, bit.y);
        performantdelay(2);
    }
}

void walk_background_movement(INT8 move_x, INT8 move_y, UINT8 *step){
    while(move_x != 0){
        scroll_bkg(move_x < 0 ? -2 : 2, 0);
        if (move_x % 4 == 0 && move_x != 0){
            *step = (move_x > 0 ? setbit_right(*step) : setbit_left(*step));
        }
        move_x += (move_x > 0 ? -2 : 2);
        performantdelay(2);
    }
    while (move_y != 0){
        scroll_bkg(0, move_y < 0 ? -2 : 2);
        if (move_y % 4 == 0 && move_y != 0){
            *step = (move_y >  0 ? setbit_forward(*step) : setbit_backward(*step));
        }
        move_y += (move_y > 0 ? -2 : 2);
        performantdelay(2);
    }
}

void move(UINT8 *step, UINT16 *player_loc_x, UINT16 *player_loc_y, unsigned char *bk_col, unsigned int MapHeight, unsigned int MapWidth){
    INT8 tile = 8;
    switch (joypad())
    {
    case (J_LEFT):
        if (can_player_move(*player_loc_x - tile, *player_loc_y, bk_col, MapHeight, MapWidth)){
            if (*player_loc_x < 96 || *player_loc_x > MapWidth*8 - 80){
                walk_without_background_movement(-1*tile, 0, step);
            }
            else{
                walk_background_movement(-1*tile, 0, step);
            }
            *player_loc_x -= tile;
        }
        else{
            *step = setbit_left(*step);
        }
        break;
    
    case (J_RIGHT):
        if (can_player_move(*player_loc_x + tile, *player_loc_y, bk_col, MapHeight, MapWidth)){
            if (*player_loc_x < 88 || *player_loc_x > MapWidth*8 - 88){
                walk_without_background_movement(tile, 0, step);
            }
            else{
                walk_background_movement(tile, 0, step);
            }
            *player_loc_x += tile;
        }
        else{
            *step = setbit_right(*step);
        }
        break;
    
    case (J_UP):
        if (can_player_move(*player_loc_x, *player_loc_y - tile, bk_col, MapHeight, MapWidth)){
            if (*player_loc_y < 96 || *player_loc_y > MapHeight*8 - 56){
                walk_without_background_movement(0, -1*tile, step);
            }
            else{
                walk_background_movement(0, -1*tile, step);
            }
            *player_loc_y -= 8;
        }
        *step = setbit_backward(*step);
        break;
    
    case (J_DOWN):
        if (can_player_move(*player_loc_x, *player_loc_y + tile, bk_col, MapHeight, MapWidth)){
            if (*player_loc_y < 88 || *player_loc_y > MapHeight*8 - 64){
                walk_without_background_movement(0, tile, step);
            }
            else{
                walk_background_movement(0, tile, step);
            }
            *player_loc_y += 8;
        }
        reset_bit();
        break;

    default:
        break;
    }
}

void do_game_play(unsigned char* bk_collision, unsigned int MapHeight, unsigned int MapWidth){
    //set_win_data(0,40,Letter2Data);
    game_running = 1;
    UINT8 step = 0;

    while(game_running){
        move(&step, &player_location[0], &player_location[1], bk_collision, MapHeight, MapWidth);
        if (frog_talk){
            if ((player_location[0] < 104 && player_location[0] > 88) && (player_location[1] < 40 && player_location[1] > 24)){
                frog_talk = 0;
                break;
            } 
        }
        performantdelay(10);
    }
}