#include <gb/gb.h>

//generical character structure: id, position, graphics
typedef struct enemyCharacter {
	UBYTE spritids[4]; // all characters use 4 sprites
	UINT8 x;
	UINT8 y;
	UINT8 xspeed;
	UINT8 xdirection;
	UINT8 yspeed;
	UINT8 ydirection;
	UINT8 width;
	UINT8 height;
} enemyCharacter;




