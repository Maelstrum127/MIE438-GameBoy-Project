#include <gb/gb.h>
#include <stdio.h>
#include "Face2.c"

void main(){
    UINT8 current_sprite_index = 0;

    set_sprite_data(0, 4, Face2);
    set_sprite_tile(0, 0);
    move_sprite(0, 88, 78); // across, down
    SHOW_SPRITES;

    while(1){
        if (current_sprite_index == 0){
            current_sprite_index = 1;
        }
        else if (current_sprite_index == 1){
            current_sprite_index = 2;
        }
        else if (current_sprite_index == 2){
            current_sprite_index = 3;
        }
        else{
            current_sprite_index = 0;
        }
        set_sprite_tile(0, current_sprite_index);
        delay(1000);

        scroll_sprite(0, 10, 0);
    }
}