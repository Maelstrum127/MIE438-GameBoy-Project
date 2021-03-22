#include <gb/gb.h>
#include <stdbool.h>

//generical character structure: id, position, graphics
typedef struct enemyCharacter {
	UBYTE spritids[4]; // all characters use 4 sprites
	UINT8 x;
	UINT8 y;
	UINT8 xspeed;
	_Bool xdirection;
	UINT8 yspeed;
	_Bool ydirection;
	UINT8 width;
	UINT8 height;
} enemyCharacter;




