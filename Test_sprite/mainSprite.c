#include <gb/gb.h>
#include <gb/cgb.h>
#include <stdio.h>
#include "BackgroundMap.h"
#include "BackgroundData.h"
#include "GameCharacter.c"
#include "GameSprites.c"

struct GameCharacter bit;
UBYTE spritesize = 8;

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

void setupbit(){
    bit.x = 80;
    bit.y = 130;
    bit.height = 32;
    bit.width = 24;

    // load bit sprites
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
    set_sprite_tile(0,37);
    bit.spriteids[0] = 0;
    set_sprite_tile(1,38);
    bit.spriteids[1] = 1;
    set_sprite_tile(2,39);
    bit.spriteids[2] = 2;    
    set_sprite_tile(3,40);
    bit.spriteids[3] = 3;  
    set_sprite_tile(4,41);
    bit.spriteids[4] = 4; 
    set_sprite_tile(5,42);
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

void main(){
    UINT8 step = 0;
    set_sprite_data(0, 43, GameSprites);
    setupbit();

    SHOW_SPRITES;
    DISPLAY_ON;

    while(1){
        if (joypad() & J_LEFT){
            bit.x -=2;
            step = setbit_left(step);
            movegamecharacter(&bit, bit.x, bit.y);

        }
        if (joypad() & J_RIGHT){
            bit.x += 2;
            step = setbit_right(step);
            movegamecharacter(&bit, bit.x, bit.y);
        }

        if (joypad() & J_UP){
            bit.y -= 2;
            step = setbit_backward(step);
            movegamecharacter(&bit, bit.x, bit.y);
        }
        if (joypad() & J_DOWN){
            bit.y += 2;
            step = setbit_forward(step);
            movegamecharacter(&bit, bit.x, bit.y);

        }

        //reset_bit();

        performantdelay(5);
    }
}