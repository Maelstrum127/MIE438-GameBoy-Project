#include <gb/gb.h>
#include <gb/font.h>
#include <stdio.h>
#include "Face2.c"
#include <gb/cgb.h>
#include "BackgroundMap.h"
#include "BackgroundData.h"

const unsigned char blankmap[1] = {0x0C};
UINT16 playerlocation[2];

const UWORD backgroundpalette[] = {   
    BackgroundDataCGBPal0c0, BackgroundDataCGBPal0c1, BackgroundDataCGBPal0c2, BackgroundDataCGBPal0c3,
    BackgroundDataCGBPal1c0, BackgroundDataCGBPal1c1, BackgroundDataCGBPal1c2, BackgroundDataCGBPal1c3,
    BackgroundDataCGBPal2c0, BackgroundDataCGBPal2c1, BackgroundDataCGBPal2c2, BackgroundDataCGBPal2c3,
    BackgroundDataCGBPal3c0, BackgroundDataCGBPal3c1, BackgroundDataCGBPal3c2, BackgroundDataCGBPal3c3,
    BackgroundDataCGBPal4c0, BackgroundDataCGBPal4c1, BackgroundDataCGBPal4c2, BackgroundDataCGBPal4c3,
    BackgroundDataCGBPal5c0, BackgroundDataCGBPal5c1, BackgroundDataCGBPal5c2, BackgroundDataCGBPal5c3,
    BackgroundDataCGBPal6c0, BackgroundDataCGBPal6c1, BackgroundDataCGBPal6c2, BackgroundDataCGBPal6c3,
};

UBYTE has_key, open_door, game_running;

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

UINT8 can_player_move(UINT16 newplayerx, UINT16 newplayery){
    UINT16 indexTLx;
    UINT16 indexTLy;
    UINT16 tileindexTL;
    UINT8 result;

    indexTLx = (newplayerx - 8)/8;
    indexTLy = (newplayery - 16)/8;

    tileindexTL = 40*indexTLy + indexTLx;

    result = 0; //special_tile(tileindexTL);
    if (BackgroundMapPLN0[tileindexTL] == blankmap[0]){
        result = 1;
    }
    if (newplayery < 16 || newplayery > 168){
        result = 0;
    }

    return result;
}

void animate_sprite(UINT8 sprite_index, INT8 move_x, INT8 move_y){
    while(move_x != 0){
        scroll_sprite(sprite_index, move_x < 0 ? -1 : 1, 0);
        move_x += (move_x > 0 ? -1 : 1);
        wait_vbl_done();
    }
    while (move_y != 0){
        scroll_sprite(sprite_index, 0, move_y < 0 ? -1 : 1);
        move_y += (move_y > 0 ? -1 : 1);
        wait_vbl_done();
    }
}

void move_background_with_animation(INT8 move_x, INT8 move_y){
    while(move_x != 0){
        scroll_bkg(move_x < 0 ? -1 : 1, 0);
        move_x += (move_x > 0 ? -1 : 1);
        wait_vbl_done();
    }
    while (move_y != 0){
        scroll_bkg(0, move_y < 0 ? -1 : 1);
        move_y += (move_y > 0 ? -1 : 1);
        wait_vbl_done();
    }
}

void move(UINT8 sprite_index, UINT16 *player_loc_x, UINT16 *player_loc_y){
    UINT16 tile = 8;
    switch (joypad())
    {
    case J_LEFT:
        if (can_player_move(*player_loc_x - tile, *player_loc_y)){
            //animate_sprite(sprite_index, -1*tile, 0);
            move_background_with_animation(-1*tile, 0);
            *player_loc_x -= tile;
        }
        break;
    case J_RIGHT:
        if (can_player_move(*player_loc_x + tile, *player_loc_y)){
            //animate_sprite(sprite_index, 1*tile, 0);
            move_background_with_animation(tile, 0);
            *player_loc_x += tile;
        }
        break;
    case J_UP:
        if (can_player_move(*player_loc_x, *player_loc_y - tile)){
            if (*player_loc_y < 96 || *player_loc_y > 104){
                animate_sprite(sprite_index, 0, -1*tile);
            }
            else{
                move_background_with_animation(0, -1*tile);
            }
            *player_loc_y -= tile;
        }
        break;
    case J_DOWN:
        if (can_player_move(*player_loc_x, *player_loc_y + tile)){
            if (*player_loc_y < 88 || *player_loc_y > 96){
                animate_sprite(sprite_index, 0, tile);
            }
            else{
                move_background_with_animation(0, tile);
            }
            *player_loc_y += tile;
        }
        break;
    default:
        scroll_sprite(0, 0, 0);
        break;
    }
}

void animate(int sprite_location, int *csi){
    if (*csi == 0){
        *csi = 1;
    }
    else if (*csi == 1){
        *csi = 2;
    }
    else if (*csi == 2){
        *csi = 3;
    }
    else{
        *csi = 0;
    }
    set_sprite_tile(sprite_location, *csi);
}

void main(){
    set_bkg_palette(0, 7, &backgroundpalette[0]);
    set_bkg_data(0, 14, BackgroundData);
    VBK_REG = 1;
    set_bkg_tiles(0, 0, BackgroundMapWidth, BackgroundMapHeight, BackgroundMapPLN1);
    VBK_REG = 0;
    set_bkg_tiles(0, 0, BackgroundMapWidth, BackgroundMapHeight, BackgroundMapPLN0);
    DISPLAY_ON;
    SHOW_BKG;
   
    UINT8 current_sprite_index = 0;
    game_running = 1;

    playerlocation[0] = 88;
    playerlocation[1] = 88;

    int counter = 0;
    set_sprite_data(0, 4, Face2);
    set_sprite_tile(0, 0);
    move_sprite(0, playerlocation[0], playerlocation[1]); // across, down
    SHOW_SPRITES;

    while(game_running){
        if (counter%10 == 0){
            animate(0, &current_sprite_index);
            counter = 0;
        }
        move(0, &playerlocation[0], &playerlocation[1]);
        delay(100);
        counter++;
    }
}