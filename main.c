#include <gb/gb.h>
#include <stdio.h>
#include "arrow_sprite.c"
#include "menudata.c"
#include "menu.c"
#include "arrow.c"

struct Arrow arrow; 
UBYTE keydown; 
void performantdelay(UINT8 numloops){
    UINT8 ii;
    for(ii=0; ii<numloops; ii++){
        wait_vbl_done();
    }
}

void main(){
    UINT8 currentspriteindex = 0;

    set_sprite_data(0, 1, ArrowSprite);
    set_sprite_tile(0, 0);
    
    arrow.x = 120;
    arrow.y = 32;
    arrow.col = 0;
    arrow.row = 0;
    move_sprite(0, arrow.x, arrow.y);

    set_bkg_data(0,19,MenuTiles);
    set_bkg_tiles(12,0,8,10, Menu);
    ///scroll_bkg(-4,0);

    SHOW_BKG;
    SHOW_SPRITES;
    DISPLAY_ON; 

    while(1){
        if(keydown){
            waitpadup();
            keydown = 0;
        }
        switch(joypad()){
            case J_UP:
                arrow.y -= 8;
                arrow.row--;
                scroll_sprite(0,0,-8); 
                keydown = 1;
                break;
            case J_DOWN:
                arrow.y += 8;
                arrow.row++;
                scroll_sprite(0,0,+8); 
                keydown = 1;
                break;
        }
        performantdelay(2);
    }


}