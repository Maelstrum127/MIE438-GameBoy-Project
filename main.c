#include <gb/gb.h>
#include <gb/font.h>
#include <stdio.h>
#include "Face2.c"
#include "maze_tiles.c"
#include "maze.c"

const unsigned char blankmap[1] = {0x00};
UINT8 playerlocation[2];
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

UINT8 can_player_move(UINT8 newplayerx, UINT8 newplayery){
    UINT16 indexTLx;
    UINT16 indexTLy;
    UINT16 tileindexTL;
    UINT8 result;

    indexTLx = (newplayerx - 8)/8;
    indexTLy = (newplayery - 16)/8;

    tileindexTL = 20*indexTLy + indexTLx;

    result = special_tile(tileindexTL);
    if (maze[tileindexTL] == blankmap[0]){
        result = 1;
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

void move(UINT8 sprite_index, UINT8 *player_loc_x, UINT8 *player_loc_y){
    int tile = 8;
    switch (joypad())
    {
    case J_LEFT:
        if (can_player_move(*player_loc_x - tile, *player_loc_y)){
            animate_sprite(sprite_index, -1*tile, 0);
            *player_loc_x -= tile;
        }
        //scroll_bkg(-1*tile, 0);
        break;
    case J_RIGHT:
        if (can_player_move(*player_loc_x + tile, *player_loc_y)){
            animate_sprite(sprite_index, 1*tile, 0);
            *player_loc_x += tile;
        }
        //scroll_bkg(tile, 0);
        break;
    case J_UP:
        if (can_player_move(*player_loc_x, *player_loc_y - tile)){
            animate_sprite(sprite_index, 0, -1*tile);
            *player_loc_y -= tile;
        }
        //scroll_bkg(0, -1*tile);
        break;
    case J_DOWN:
        if (can_player_move(*player_loc_x, *player_loc_y + tile)){
            animate_sprite(sprite_index, 0, 1*tile);
            *player_loc_y += tile;
        }
        break;
    default:
        scroll_sprite(0, 0, 0);
        //scroll_bkg(0, 0);
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

    /*
    font_t min_font;
    font_init();
    min_font = font_load(font_min); //36 tiles
    font_set(min_font); 
    set_win_tiles(0, 0, 5, 1, windowmap);
    move_win(7, 120);   
    SHOW_WIN;
    */

    set_bkg_data(0, 4, maze_tiles); //start at 37 to avoid clash with font, shares same memory locations
    set_bkg_tiles(0, 0, 20, 19, maze);


    DISPLAY_ON;
    SHOW_BKG;
    
    UINT8 current_sprite_index = 0;
    game_running = 1;

    playerlocation[0] = 16;
    playerlocation[1] = 24;

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