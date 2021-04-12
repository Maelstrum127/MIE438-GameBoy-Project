#include <gb/gb.h>

struct GameCharacter {
    UBYTE spriteids[6];
    UINT8 x;
    UINT8 y;
    UINT8 width;
    UINT8 height;
};

struct GameCharacter_square {
    UBYTE spriteids[4];
    UINT8 x;
    UINT8 y;
    UINT8 width;
    UINT8 height;
};