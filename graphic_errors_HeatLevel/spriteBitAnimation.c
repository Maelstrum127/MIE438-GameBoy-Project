#include <gb/gb.h>
#include <gb/cgb.h>
#include <stdio.h>

struct GameCharacter_rec bit;
UBYTE spritesize = 8;


const UWORD spritepalette[] = {
    GameSpritesCGBPal0c0,
    GameSpritesCGBPal0c1,
    GameSpritesCGBPal0c2,
    GameSpritesCGBPal0c3,

    GameSpritesCGBPal1c0,
    GameSpritesCGBPal1c1,
    GameSpritesCGBPal1c2,
    GameSpritesCGBPal1c3,


    GameSpritesCGBPal2c0,
    GameSpritesCGBPal2c1,
    GameSpritesCGBPal2c2,
    GameSpritesCGBPal2c3,

    GameSpritesCGBPal3c0,
    GameSpritesCGBPal3c1,
    GameSpritesCGBPal3c2,
    GameSpritesCGBPal3c3,

    GameSpritesCGBPal4c0,
    GameSpritesCGBPal4c1,
    GameSpritesCGBPal4c2,
    GameSpritesCGBPal4c3,

    GameSpritesCGBPal5c0,
    GameSpritesCGBPal5c1,
    GameSpritesCGBPal5c2,
    GameSpritesCGBPal5c3,

    GameSpritesCGBPal6c0,
    GameSpritesCGBPal6c1,
    GameSpritesCGBPal6c2,
    GameSpritesCGBPal6c3,

    GameSpritesCGBPal7c0,
    GameSpritesCGBPal7c1,
    GameSpritesCGBPal7c2,
    GameSpritesCGBPal7c3,
};

void movegamecharacter(struct GameCharacter_rec* character, UINT8 x, UINT8 y){
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
    bit.width = 8;

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
    set_sprite_prop(3,4);  
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
    set_sprite_tile(1,1);
    set_sprite_tile(2,2);   
    set_sprite_tile(3,3); 
    set_sprite_tile(4,6);
    set_sprite_tile(5,7);
    }
    if (step == 0){
    set_sprite_tile(0,0);
    set_sprite_tile(1,1);
    set_sprite_tile(2,2); 
    set_sprite_tile(3,3);
    set_sprite_tile(4,8);
    set_sprite_tile(5,9); 
    }
return (step + 1)%2;
}

UINT8 setbit_backward(UINT8 step){
    if (step == 1){
    set_sprite_tile(0,10);
    set_sprite_tile(1,11);
    set_sprite_tile(2,12);  
    set_sprite_tile(3,13);
    set_sprite_tile(4,14);
    set_sprite_tile(5,15);
    }
    if (step == 0){
    set_sprite_tile(0,10);
    set_sprite_tile(1,11);
    set_sprite_tile(2,12);   
    set_sprite_tile(3,13); 
    set_sprite_tile(4,16);
    set_sprite_tile(5,17);  
    }
return (step + 1)%2;
}

UINT8 setbit_right(UINT8 step){
    if (step == 1){
    set_sprite_tile(0,18);
    set_sprite_tile(1,19);
    set_sprite_tile(2,20);  
    set_sprite_tile(3,21);
    set_sprite_tile(4,22);
    set_sprite_tile(5,23);
    }
    if (step == 0){
    set_sprite_tile(0,30);
    set_sprite_tile(1,31);
    set_sprite_tile(2,32);   
    set_sprite_tile(3,33); 
    set_sprite_tile(4,34);
    set_sprite_tile(5,35); 
    }
return (step + 1)%2;
}
UINT8 setbit_left(UINT8 step){
    if (step == 1){
    set_sprite_tile(0,24);
    set_sprite_tile(1,25);
    set_sprite_tile(2,26);  
    set_sprite_tile(3,27);
    set_sprite_tile(4,28);
    set_sprite_tile(5,29);
    }
    if (step == 0){
    set_sprite_tile(0,37);
    set_sprite_tile(1,38);
    set_sprite_tile(2,39);   
    set_sprite_tile(3,40); 
    set_sprite_tile(4,41);
    set_sprite_tile(5,42); 
    }
return (step + 1)%2;
}

void reset_bit(){
    set_sprite_tile(0,0);
    set_sprite_tile(1,1);
    set_sprite_tile(2,2); 
    set_sprite_tile(3,3);
    set_sprite_tile(4,4);
    set_sprite_tile(5,5); 
}

void joypadDetection(UINT8 step){

    if (joypad() & J_LEFT){
        bit.x -=8;
        step = setbit_left(step);
        movegamecharacter(&bit, bit.x, bit.y);
    }
    if (joypad() & J_RIGHT){
        bit.x += 8;
        step = setbit_right(step);
        movegamecharacter(&bit, bit.x, bit.y);
    }

    if (joypad() & J_UP){
        bit.y -=8;
        step = setbit_backward(step);
        movegamecharacter(&bit, bit.x, bit.y);
    }
    if (joypad() & J_DOWN){
        bit.y += 8;
        step = setbit_forward(step);
        movegamecharacter(&bit, bit.x, bit.y);
    }
}

void heatJoypadDetection(UINT8 step){

    if (joypad() & J_LEFT){
        bit.x -=8;
        step = setbit_forward(step);
        movegamecharacter(&bit, bit.x, bit.y);
    }
    if (joypad() & J_RIGHT){
        bit.x += 8;
        step = setbit_forward(step);
        movegamecharacter(&bit, bit.x, bit.y);
    }
}