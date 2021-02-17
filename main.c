#include <gb/gb.h>
#include <gb/font.h>
#include <stdio.h>
#include "Face2.c"
#include "simple_background_tiles.c"
#include "simple_background.c"
#include "windowmap.c"

void move(){
        int tile = 4;
        switch (joypad())
        {
        case J_LEFT:
            scroll_sprite(0, -1*tile, 0);
            scroll_bkg(-1*tile, 0);
            break;
        case J_RIGHT:
            scroll_sprite(0, tile, 0);
            scroll_bkg(tile, 0);
            break;
        case J_UP:
            scroll_sprite(0, 0, -1*tile);
            scroll_bkg(0, -1*tile);
            break;
        case J_DOWN:
            scroll_sprite(0, 0, tile);
            scroll_bkg(0, tile);
            break;
        default:
            scroll_sprite(0, 0, 0);
            scroll_bkg(0, 0);
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
    font_t min_font;
    font_init();
    min_font = font_load(font_min); //36 tiles
    font_set(min_font);

    set_bkg_data(37, 7, simple_background_tiles); //start at 37 to avoid clash with font, shares same memory locations
    set_bkg_tiles(0, 0, 40, 18, backgroundmap);

    set_win_tiles(0, 0, 5, 1, windowmap);
    move_win(7, 120);   

    SHOW_BKG;
    SHOW_WIN;
    DISPLAY_ON;
    
    UINT8 current_sprite_index = 0;
    int counter = 0;
    set_sprite_data(0, 4, Face2);
    set_sprite_tile(0, 0);
    move_sprite(0, 88, 78); // across, down
    SHOW_SPRITES;

    while(1){
        if (counter%10 == 0){
            animate(0, &current_sprite_index);
            counter = 0;
        }
        move();
        delay(100);
        counter++;
    }
}