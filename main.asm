;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.7 #12016 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _setup_map
	.globl _move
	.globl _walk_background_movement
	.globl _walk_without_background_movement
	.globl _can_player_move
	.globl _special_tile
	.globl _reset_bit
	.globl _setbit_left
	.globl _setbit_right
	.globl _setbit_backward
	.globl _setbit_forward
	.globl _setupbit
	.globl _movegamecharacter
	.globl _performantdelay
	.globl _printf
	.globl _set_sprite_data
	.globl _set_bkg_tiles
	.globl _set_bkg_data
	.globl _wait_vbl_done
	.globl _joypad
	.globl _delay
	.globl _set_sprite_palette
	.globl _set_bkg_palette
	.globl _game_running
	.globl _open_door
	.globl _has_key
	.globl _spritesize
	.globl _bit
	.globl _player_location
	.globl _spritepalette
	.globl _backgroundpalette
	.globl _blankmap
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_player_location::
	.ds 4
_bit::
	.ds 10
_spritesize::
	.ds 1
_has_key::
	.ds 1
_open_door::
	.ds 1
_game_running::
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;main.c:24: UBYTE spritesize = 8;
	ld	hl, #_spritesize
	ld	(hl), #0x08
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;main.c:70: void performantdelay(UINT8 numloops){
;	---------------------------------
; Function performantdelay
; ---------------------------------
_performantdelay::
;main.c:72: for(i=0;i<numloops;i++){
	ld	c, #0x00
00103$:
	ld	a, c
	ldhl	sp,	#2
	sub	a, (hl)
	ret	NC
;main.c:73: wait_vbl_done();
	call	_wait_vbl_done
;main.c:72: for(i=0;i<numloops;i++){
	inc	c
;main.c:75: }
	jr	00103$
_blankmap:
	.db #0x0c	; 12
_backgroundpalette:
	.dw #0x0adf
	.dw #0x22e7
	.dw #0x19c4
	.dw #0x14e0
	.dw #0x500b
	.dw #0x5294
	.dw #0x0000
	.dw #0x03df
	.dw #0x0400
	.dw #0x14a5
	.dw #0x3def
	.dw #0x6739
	.dw #0x2826
	.dw #0x342d
	.dw #0x4411
	.dw #0x7cd3
	.dw #0x767e
	.dw #0x7b54
	.dw #0x4fd3
	.dw #0x2f5f
	.dw #0x02c1
	.dw #0x1740
	.dw #0x0dc1
	.dw #0x0541
	.dw #0x17bc
	.dw #0x22e7
	.dw #0x19c4
	.dw #0x14e0
_spritepalette:
	.dw #0x17bc
	.dw #0x22e7
	.dw #0x19c4
	.dw #0x14e0
	.dw #0x7fff
	.dw #0x3def
	.dw #0x6739
	.dw #0x0000
	.dw #0x51f4
	.dw #0x5154
	.dw #0x3caf
	.dw #0x1405
	.dw #0x7fff
	.dw #0x672a
	.dw #0x5280
	.dw #0x3de0
	.dw #0x7fff
	.dw #0x3def
	.dw #0x001f
	.dw #0x0000
	.dw #0x7fff
	.dw #0x0151
	.dw #0x04cd
	.dw #0x0000
	.dw #0x7fff
	.dw #0x7a7c
	.dw #0x79db
	.dw #0x7cbf
	.dw #0x7fff
	.dw #0x001f
	.dw #0x000f
	.dw #0x0000
;main.c:77: void movegamecharacter(struct GameCharacter* character, UINT8 x, UINT8 y){
;	---------------------------------
; Function movegamecharacter
; ---------------------------------
_movegamecharacter::
	add	sp, #-4
;main.c:78: move_sprite(character->spriteids[0], x, y);
	ldhl	sp,	#9
	ld	a, (hl)
	ldhl	sp,	#0
	ld	(hl), a
	ldhl	sp,	#8
	ld	a, (hl)
	ldhl	sp,	#1
	ld	(hl), a
	ldhl	sp,#6
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
;c:/gbdk/include/gb/gb.h:1077: OAM_item_t * itm = &shadow_OAM[nb];
	xor	a, a
	ld	l, c
	ld	h, a
	add	hl, hl
	add	hl, hl
	ld	bc, #_shadow_OAM
	add	hl, bc
	ld	c, l
	ld	b, h
;c:/gbdk/include/gb/gb.h:1078: itm->y=y, itm->x=x;
	ldhl	sp,	#0
	ld	a, (hl+)
	ld	(bc), a
	inc	bc
	ld	a, (hl)
	ld	(bc), a
;main.c:79: move_sprite(character->spriteids[1], x + spritesize, y);
	ld	a, (hl)
	ld	hl, #_spritesize
	add	a, (hl)
	ld	l, e
	ld	h, d
	inc	hl
	ld	c, (hl)
	ldhl	sp,	#3
	ld	(hl), a
;c:/gbdk/include/gb/gb.h:1077: OAM_item_t * itm = &shadow_OAM[nb];
	ld	a, c
	ld	h, #0x00
	ld	l, a
	add	hl, hl
	add	hl, hl
	ld	bc, #_shadow_OAM
	add	hl, bc
	ld	c, l
	ld	b, h
;c:/gbdk/include/gb/gb.h:1078: itm->y=y, itm->x=x;
	ldhl	sp,	#0
	ld	a, (hl)
	ld	(bc), a
	inc	bc
	ldhl	sp,	#3
	ld	a, (hl)
	ld	(bc), a
;main.c:80: move_sprite(character->spriteids[2], x, y + spritesize);
	ldhl	sp,	#0
	ld	a, (hl)
	ld	hl, #_spritesize
	add	a, (hl)
	ldhl	sp,	#3
	ld	(hl), a
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
;c:/gbdk/include/gb/gb.h:1077: OAM_item_t * itm = &shadow_OAM[nb];
	ld	a, (hl)
	ld	h, #0x00
	ld	l, a
	add	hl, hl
	add	hl, hl
	ld	bc, #_shadow_OAM
	add	hl, bc
	ld	c, l
	ld	b, h
;c:/gbdk/include/gb/gb.h:1078: itm->y=y, itm->x=x;
	ldhl	sp,	#3
	ld	a, (hl)
	ld	(bc), a
	inc	bc
	dec	hl
	dec	hl
	ld	a, (hl)
	ld	(bc), a
;main.c:81: move_sprite(character->spriteids[3], x + spritesize, y + spritesize);
	dec	hl
	ld	a, (hl)
	ld	hl, #_spritesize
	add	a, (hl)
	ldhl	sp,	#2
	ld	(hl-), a
	ld	a, (hl)
	ld	hl, #_spritesize
	add	a, (hl)
	ld	b, a
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	inc	hl
	ld	c, (hl)
	ldhl	sp,	#3
	ld	(hl), b
;c:/gbdk/include/gb/gb.h:1077: OAM_item_t * itm = &shadow_OAM[nb];
	ld	a, c
	ld	h, #0x00
	ld	l, a
	add	hl, hl
	add	hl, hl
	ld	bc, #_shadow_OAM
	add	hl, bc
	ld	c, l
	ld	b, h
;c:/gbdk/include/gb/gb.h:1078: itm->y=y, itm->x=x;
	ldhl	sp,	#2
	ld	a, (hl+)
	ld	(bc), a
	inc	bc
	ld	a, (hl)
	ld	(bc), a
;main.c:82: move_sprite(character->spriteids[4], x, y + 2*spritesize);
	ld	a, (#_spritesize)
	add	a, a
	push	af
	ldhl	sp,	#2
	ld	a, (hl)
	ldhl	sp,	#5
	ld	(hl), a
	pop	af
	add	a, (hl)
	dec	hl
	ld	(hl), a
	ld	hl, #0x0004
	add	hl, de
;c:/gbdk/include/gb/gb.h:1077: OAM_item_t * itm = &shadow_OAM[nb];
	ld	a, (hl)
	ld	h, #0x00
	ld	l, a
	add	hl, hl
	add	hl, hl
	ld	bc, #_shadow_OAM
	add	hl, bc
	ld	c, l
	ld	b, h
;c:/gbdk/include/gb/gb.h:1078: itm->y=y, itm->x=x;
	ldhl	sp,	#2
	ld	a, (hl)
	ld	(bc), a
	inc	bc
	dec	hl
	ld	a, (hl)
	ld	(bc), a
;main.c:83: move_sprite(character->spriteids[5], x + spritesize, y + 2*spritesize);
	ld	a, (#_spritesize)
	add	a, a
	ldhl	sp,	#3
	add	a, (hl)
	ld	b, a
	dec	hl
	dec	hl
	ld	a, (hl)
	ld	hl, #_spritesize
	add	a, (hl)
	ld	c, a
	ld	hl, #0x0005
	add	hl, de
	ld	e, (hl)
;c:/gbdk/include/gb/gb.h:1077: OAM_item_t * itm = &shadow_OAM[nb];
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
;c:/gbdk/include/gb/gb.h:1078: itm->y=y, itm->x=x;
	ld	a, b
	ld	(hl+), a
	ld	(hl), c
;main.c:83: move_sprite(character->spriteids[5], x + spritesize, y + 2*spritesize);
;main.c:84: }
	add	sp, #4
	ret
;main.c:86: void setupbit(INT8 init_x, INT8 init_y){
;	---------------------------------
; Function setupbit
; ---------------------------------
_setupbit::
;main.c:87: bit.x = init_x;
	ld	bc, #_bit+0
	ld	de, #(_bit + 0x0006)
	ldhl	sp,	#2
	ld	a, (hl)
	ld	(de), a
;main.c:88: bit.y = init_y;
	ld	de, #(_bit + 0x0007)
	inc	hl
	ld	a, (hl)
	ld	(de), a
;main.c:89: bit.height = 32;
	ld	hl, #(_bit + 0x0009)
	ld	(hl), #0x20
;main.c:90: bit.width = 24;
	ld	hl, #(_bit + 0x0008)
	ld	(hl), #0x18
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0002)
	ld	(hl), #0x00
;main.c:94: bit.spriteids[0] = 0;
	xor	a, a
	ld	(bc), a
;c:/gbdk/include/gb/gb.h:1050: shadow_OAM[nb].prop=prop;
	ld	hl, #(_shadow_OAM + 0x0003)
	ld	(hl), #0x04
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0006)
	ld	(hl), #0x01
;main.c:97: bit.spriteids[1] = 1;
	ld	hl, #(_bit + 0x0001)
	ld	(hl), #0x01
;c:/gbdk/include/gb/gb.h:1050: shadow_OAM[nb].prop=prop;
	ld	hl, #(_shadow_OAM + 0x0007)
	ld	(hl), #0x04
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x000a)
	ld	(hl), #0x02
;main.c:100: bit.spriteids[2] = 2;
	ld	hl, #(_bit + 0x0002)
	ld	(hl), #0x02
;c:/gbdk/include/gb/gb.h:1050: shadow_OAM[nb].prop=prop;
	ld	hl, #(_shadow_OAM + 0x000b)
	ld	(hl), #0x01
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x000e)
	ld	(hl), #0x03
;main.c:103: bit.spriteids[3] = 3;
	ld	hl, #(_bit + 0x0003)
	ld	(hl), #0x03
;c:/gbdk/include/gb/gb.h:1050: shadow_OAM[nb].prop=prop;
	ld	hl, #(_shadow_OAM + 0x000f)
	ld	(hl), #0x01
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0012)
	ld	(hl), #0x04
;main.c:106: bit.spriteids[4] = 4; 
	ld	hl, #(_bit + 0x0004)
	ld	(hl), #0x04
;c:/gbdk/include/gb/gb.h:1050: shadow_OAM[nb].prop=prop;
	ld	hl, #(_shadow_OAM + 0x0013)
	ld	(hl), #0x07
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0016)
	ld	(hl), #0x05
;main.c:109: bit.spriteids[5] = 5; 
	ld	hl, #(_bit + 0x0005)
	ld	(hl), #0x05
;c:/gbdk/include/gb/gb.h:1050: shadow_OAM[nb].prop=prop;
	ld	hl, #(_shadow_OAM + 0x0017)
	ld	(hl), #0x07
;main.c:112: movegamecharacter(&bit, bit.x, bit.y); 
	ld	a, (#(_bit + 0x0007) + 0)
	ld	hl, #(_bit + 0x0006)
	ld	h, (hl)
	push	af
	inc	sp
	push	hl
	inc	sp
	push	bc
	call	_movegamecharacter
	add	sp, #4
;main.c:114: }
	ret
;main.c:116: UINT8 setbit_forward(UINT8 step){
;	---------------------------------
; Function setbit_forward
; ---------------------------------
_setbit_forward::
;main.c:117: if (step == 1){
	ldhl	sp,	#2
	ld	a, (hl)
	dec	a
	jr	NZ, 00102$
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0002)
	ld	(hl), #0x00
;main.c:119: bit.spriteids[0] = 0;
	ld	hl, #_bit
	ld	(hl), #0x00
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0006)
	ld	(hl), #0x01
;main.c:121: bit.spriteids[1] = 1;
	ld	hl, #(_bit + 0x0001)
	ld	(hl), #0x01
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x000a)
	ld	(hl), #0x02
;main.c:123: bit.spriteids[2] = 2;    
	ld	hl, #(_bit + 0x0002)
	ld	(hl), #0x02
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x000e)
	ld	(hl), #0x03
;main.c:125: bit.spriteids[3] = 3;  
	ld	hl, #(_bit + 0x0003)
	ld	(hl), #0x03
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0012)
	ld	(hl), #0x06
;main.c:127: bit.spriteids[4] = 4; 
	ld	hl, #(_bit + 0x0004)
	ld	(hl), #0x04
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0016)
	ld	(hl), #0x07
;main.c:129: bit.spriteids[5] = 5;
	ld	hl, #(_bit + 0x0005)
	ld	(hl), #0x05
00102$:
;main.c:131: if (step == 0){
	ldhl	sp,	#2
	ld	a, (hl)
	or	a, a
	jr	NZ, 00104$
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0002)
	ld	(hl), #0x00
;main.c:133: bit.spriteids[0] = 0;
	ld	hl, #_bit
	ld	(hl), #0x00
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0006)
	ld	(hl), #0x01
;main.c:135: bit.spriteids[1] = 1;
	ld	hl, #(_bit + 0x0001)
	ld	(hl), #0x01
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x000a)
	ld	(hl), #0x02
;main.c:137: bit.spriteids[2] = 2;    
	ld	hl, #(_bit + 0x0002)
	ld	(hl), #0x02
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x000e)
	ld	(hl), #0x03
;main.c:139: bit.spriteids[3] = 3;  
	ld	hl, #(_bit + 0x0003)
	ld	(hl), #0x03
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0012)
	ld	(hl), #0x08
;main.c:141: bit.spriteids[4] = 4; 
	ld	hl, #(_bit + 0x0004)
	ld	(hl), #0x04
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0016)
	ld	(hl), #0x09
;main.c:143: bit.spriteids[5] = 5;   
	ld	hl, #(_bit + 0x0005)
	ld	(hl), #0x05
00104$:
;main.c:145: return (step + 1)%2;
	ldhl	sp,	#2
	ld	c, (hl)
	ld	b, #0x00
	inc	bc
	ld	hl, #0x0002
	push	hl
	push	bc
	call	__modsint
	add	sp, #4
;main.c:146: }
	ret
;main.c:148: UINT8 setbit_backward(UINT8 step){
;	---------------------------------
; Function setbit_backward
; ---------------------------------
_setbit_backward::
;main.c:149: if (step == 1){
	ldhl	sp,	#2
	ld	a, (hl)
	dec	a
	jr	NZ, 00102$
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0002)
	ld	(hl), #0x0a
;main.c:151: bit.spriteids[0] = 0;
	ld	hl, #_bit
	ld	(hl), #0x00
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0006)
	ld	(hl), #0x0b
;main.c:153: bit.spriteids[1] = 1;
	ld	hl, #(_bit + 0x0001)
	ld	(hl), #0x01
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x000a)
	ld	(hl), #0x0c
;main.c:155: bit.spriteids[2] = 2;    
	ld	hl, #(_bit + 0x0002)
	ld	(hl), #0x02
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x000e)
	ld	(hl), #0x0d
;main.c:157: bit.spriteids[3] = 3;  
	ld	hl, #(_bit + 0x0003)
	ld	(hl), #0x03
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0012)
	ld	(hl), #0x0e
;main.c:159: bit.spriteids[4] = 4; 
	ld	hl, #(_bit + 0x0004)
	ld	(hl), #0x04
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0016)
	ld	(hl), #0x0f
;main.c:161: bit.spriteids[5] = 5;
	ld	hl, #(_bit + 0x0005)
	ld	(hl), #0x05
00102$:
;main.c:163: if (step == 0){
	ldhl	sp,	#2
	ld	a, (hl)
	or	a, a
	jr	NZ, 00104$
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0002)
	ld	(hl), #0x0a
;main.c:165: bit.spriteids[0] = 0;
	ld	hl, #_bit
	ld	(hl), #0x00
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0006)
	ld	(hl), #0x0b
;main.c:167: bit.spriteids[1] = 1;
	ld	hl, #(_bit + 0x0001)
	ld	(hl), #0x01
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x000a)
	ld	(hl), #0x0c
;main.c:169: bit.spriteids[2] = 2;    
	ld	hl, #(_bit + 0x0002)
	ld	(hl), #0x02
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x000e)
	ld	(hl), #0x0d
;main.c:171: bit.spriteids[3] = 3;  
	ld	hl, #(_bit + 0x0003)
	ld	(hl), #0x03
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0012)
	ld	(hl), #0x10
;main.c:173: bit.spriteids[4] = 4; 
	ld	hl, #(_bit + 0x0004)
	ld	(hl), #0x04
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0016)
	ld	(hl), #0x11
;main.c:175: bit.spriteids[5] = 5;   
	ld	hl, #(_bit + 0x0005)
	ld	(hl), #0x05
00104$:
;main.c:177: return (step + 1)%2;
	ldhl	sp,	#2
	ld	c, (hl)
	ld	b, #0x00
	inc	bc
	ld	hl, #0x0002
	push	hl
	push	bc
	call	__modsint
	add	sp, #4
;main.c:178: }
	ret
;main.c:180: UINT8 setbit_right(UINT8 step){
;	---------------------------------
; Function setbit_right
; ---------------------------------
_setbit_right::
;main.c:181: if (step == 1){
	ldhl	sp,	#2
	ld	a, (hl)
	dec	a
	jr	NZ, 00102$
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0002)
	ld	(hl), #0x12
;main.c:183: bit.spriteids[0] = 0;
	ld	hl, #_bit
	ld	(hl), #0x00
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0006)
	ld	(hl), #0x13
;main.c:185: bit.spriteids[1] = 1;
	ld	hl, #(_bit + 0x0001)
	ld	(hl), #0x01
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x000a)
	ld	(hl), #0x14
;main.c:187: bit.spriteids[2] = 2;    
	ld	hl, #(_bit + 0x0002)
	ld	(hl), #0x02
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x000e)
	ld	(hl), #0x15
;main.c:189: bit.spriteids[3] = 3;  
	ld	hl, #(_bit + 0x0003)
	ld	(hl), #0x03
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0012)
	ld	(hl), #0x16
;main.c:191: bit.spriteids[4] = 4; 
	ld	hl, #(_bit + 0x0004)
	ld	(hl), #0x04
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0016)
	ld	(hl), #0x17
;main.c:193: bit.spriteids[5] = 5;
	ld	hl, #(_bit + 0x0005)
	ld	(hl), #0x05
00102$:
;main.c:195: if (step == 0){
	ldhl	sp,	#2
	ld	a, (hl)
	or	a, a
	jr	NZ, 00104$
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0002)
	ld	(hl), #0x1e
;main.c:197: bit.spriteids[0] = 0;
	ld	hl, #_bit
	ld	(hl), #0x00
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0006)
	ld	(hl), #0x1f
;main.c:199: bit.spriteids[1] = 1;
	ld	hl, #(_bit + 0x0001)
	ld	(hl), #0x01
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x000a)
	ld	(hl), #0x20
;main.c:201: bit.spriteids[2] = 2;    
	ld	hl, #(_bit + 0x0002)
	ld	(hl), #0x02
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x000e)
	ld	(hl), #0x21
;main.c:203: bit.spriteids[3] = 3;  
	ld	hl, #(_bit + 0x0003)
	ld	(hl), #0x03
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0012)
	ld	(hl), #0x22
;main.c:205: bit.spriteids[4] = 4; 
	ld	hl, #(_bit + 0x0004)
	ld	(hl), #0x04
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0016)
	ld	(hl), #0x23
;main.c:207: bit.spriteids[5] = 5;   
	ld	hl, #(_bit + 0x0005)
	ld	(hl), #0x05
00104$:
;main.c:209: return (step + 1)%2;
	ldhl	sp,	#2
	ld	c, (hl)
	ld	b, #0x00
	inc	bc
	ld	hl, #0x0002
	push	hl
	push	bc
	call	__modsint
	add	sp, #4
;main.c:210: }
	ret
;main.c:212: UINT8 setbit_left(UINT8 step){
;	---------------------------------
; Function setbit_left
; ---------------------------------
_setbit_left::
;main.c:213: if (step == 1){
	ldhl	sp,	#2
	ld	a, (hl)
	dec	a
	jr	NZ, 00102$
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0002)
	ld	(hl), #0x18
;main.c:215: bit.spriteids[0] = 0;
	ld	hl, #_bit
	ld	(hl), #0x00
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0006)
	ld	(hl), #0x19
;main.c:217: bit.spriteids[1] = 1;
	ld	hl, #(_bit + 0x0001)
	ld	(hl), #0x01
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x000a)
	ld	(hl), #0x1a
;main.c:219: bit.spriteids[2] = 2;    
	ld	hl, #(_bit + 0x0002)
	ld	(hl), #0x02
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x000e)
	ld	(hl), #0x1b
;main.c:221: bit.spriteids[3] = 3;  
	ld	hl, #(_bit + 0x0003)
	ld	(hl), #0x03
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0012)
	ld	(hl), #0x1c
;main.c:223: bit.spriteids[4] = 4; 
	ld	hl, #(_bit + 0x0004)
	ld	(hl), #0x04
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0016)
	ld	(hl), #0x1d
;main.c:225: bit.spriteids[5] = 5;
	ld	hl, #(_bit + 0x0005)
	ld	(hl), #0x05
00102$:
;main.c:227: if (step == 0){
	ldhl	sp,	#2
	ld	a, (hl)
	or	a, a
	jr	NZ, 00104$
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0002)
	ld	(hl), #0x24
;main.c:229: bit.spriteids[0] = 0;
	ld	hl, #_bit
	ld	(hl), #0x00
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0006)
	ld	(hl), #0x25
;main.c:231: bit.spriteids[1] = 1;
	ld	hl, #(_bit + 0x0001)
	ld	(hl), #0x01
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x000a)
	ld	(hl), #0x26
;main.c:233: bit.spriteids[2] = 2;    
	ld	hl, #(_bit + 0x0002)
	ld	(hl), #0x02
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x000e)
	ld	(hl), #0x27
;main.c:235: bit.spriteids[3] = 3;  
	ld	hl, #(_bit + 0x0003)
	ld	(hl), #0x03
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0012)
	ld	(hl), #0x28
;main.c:237: bit.spriteids[4] = 4; 
	ld	hl, #(_bit + 0x0004)
	ld	(hl), #0x04
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0016)
	ld	(hl), #0x29
;main.c:239: bit.spriteids[5] = 5;   
	ld	hl, #(_bit + 0x0005)
	ld	(hl), #0x05
00104$:
;main.c:241: return (step + 1)%2;
	ldhl	sp,	#2
	ld	c, (hl)
	ld	b, #0x00
	inc	bc
	ld	hl, #0x0002
	push	hl
	push	bc
	call	__modsint
	add	sp, #4
;main.c:242: }
	ret
;main.c:244: void reset_bit(){
;	---------------------------------
; Function reset_bit
; ---------------------------------
_reset_bit::
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0002)
	ld	(hl), #0x00
;main.c:246: bit.spriteids[0] = 0;
	ld	hl, #_bit
	ld	(hl), #0x00
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0006)
	ld	(hl), #0x01
;main.c:248: bit.spriteids[1] = 1;
	ld	hl, #(_bit + 0x0001)
	ld	(hl), #0x01
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x000a)
	ld	(hl), #0x02
;main.c:250: bit.spriteids[2] = 2;    
	ld	hl, #(_bit + 0x0002)
	ld	(hl), #0x02
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x000e)
	ld	(hl), #0x03
;main.c:252: bit.spriteids[3] = 3;  
	ld	hl, #(_bit + 0x0003)
	ld	(hl), #0x03
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0012)
	ld	(hl), #0x04
;main.c:254: bit.spriteids[4] = 4; 
	ld	hl, #(_bit + 0x0004)
	ld	(hl), #0x04
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0016)
	ld	(hl), #0x05
;main.c:256: bit.spriteids[5] = 5;   
	ld	hl, #(_bit + 0x0005)
	ld	(hl), #0x05
;main.c:257: }
	ret
;main.c:259: UINT8 special_tile(UINT16 player_loc){
;	---------------------------------
; Function special_tile
; ---------------------------------
_special_tile::
	dec	sp
;main.c:261: rtn = 0;
	xor	a, a
	ldhl	sp,	#0
	ld	(hl), a
;main.c:265: set_bkg_tiles(player_loc%20, player_loc/20, 1, 1, blankmap);
	ld	hl, #0x0014
	push	hl
	ldhl	sp,	#5
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	push	hl
	call	__divuint
	add	sp, #4
	ld	b, e
	ld	c, d
	push	bc
	ld	hl, #0x0014
	push	hl
	ldhl	sp,	#7
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	push	hl
	call	__moduint
	add	sp, #4
	pop	bc
;main.c:262: if (player_loc == 329){
	ldhl	sp,	#3
	ld	a, (hl)
	sub	a, #0x49
	jr	NZ, 00108$
	inc	hl
	ld	a, (hl)
	dec	a
	jr	NZ, 00108$
;main.c:264: has_key = 1;
	ld	hl, #_has_key
	ld	(hl), #0x01
;main.c:265: set_bkg_tiles(player_loc%20, player_loc/20, 1, 1, blankmap);
	ld	hl, #_blankmap
	push	hl
	ld	hl, #0x0101
	push	hl
	ld	c, e
	push	bc
	call	_set_bkg_tiles
	add	sp, #6
;main.c:266: rtn = 1;
	ldhl	sp,	#0
	ld	(hl), #0x01
	jr	00109$
00108$:
;main.c:268: else if (player_loc == 168 && has_key){
	ldhl	sp,	#3
	ld	a, (hl)
	sub	a, #0xa8
	inc	hl
	or	a, (hl)
	jr	NZ, 00104$
	ld	a, (#_has_key)
	or	a, a
	jr	Z, 00104$
;main.c:270: open_door = 1;
	ld	hl, #_open_door
	ld	(hl), #0x01
;main.c:271: set_bkg_tiles(player_loc%20, player_loc/20, 1, 1, blankmap);
	ld	hl, #_blankmap
	push	hl
	ld	hl, #0x0101
	push	hl
	ld	c, e
	push	bc
	call	_set_bkg_tiles
	add	sp, #6
;main.c:272: rtn = 1;
	ldhl	sp,	#0
	ld	(hl), #0x01
	jr	00109$
00104$:
;main.c:274: else if (player_loc == 358){
	ldhl	sp,	#3
	ld	a, (hl)
	sub	a, #0x66
	jr	NZ, 00109$
	inc	hl
	ld	a, (hl)
	dec	a
	jr	NZ, 00109$
;main.c:276: game_running = 0;
	ld	hl, #_game_running
	ld	(hl), #0x00
;main.c:277: HIDE_SPRITES;
	ldh	a, (_LCDC_REG+0)
	and	a, #0xfd
	ldh	(_LCDC_REG+0),a
;main.c:278: printf("\n \n \n \n \n \n \n \n \n      YOU WIN!!!!");
	ld	hl, #___str_0
	push	hl
	call	_printf
	add	sp, #2
;main.c:279: rtn = 1;
	ldhl	sp,	#0
	ld	(hl), #0x01
00109$:
;main.c:281: return rtn;
	ldhl	sp,	#0
	ld	e, (hl)
;main.c:282: }
	inc	sp
	ret
___str_0:
	.db 0x0a
	.ascii " "
	.db 0x0a
	.ascii " "
	.db 0x0a
	.ascii " "
	.db 0x0a
	.ascii " "
	.db 0x0a
	.ascii " "
	.db 0x0a
	.ascii " "
	.db 0x0a
	.ascii " "
	.db 0x0a
	.ascii " "
	.db 0x0a
	.ascii "      YOU WIN!!!!"
	.db 0x00
;main.c:284: UINT8 can_player_move(UINT16 newplayerx, UINT16 newplayery, unsigned char *bk_col){
;	---------------------------------
; Function can_player_move
; ---------------------------------
_can_player_move::
	add	sp, #-5
;main.c:288: indexTLx = (newplayerx/8)%BackgroundMapWidth;
	ldhl	sp,#7
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	srl	d
	rr	e
	srl	d
	rr	e
	srl	d
	rr	e
	ld	hl, #0x0028
	push	hl
	push	de
	call	__moduint
	add	sp, #4
	ldhl	sp,	#3
	ld	a, e
	ld	(hl+), a
	ld	(hl), d
;main.c:289: indexTLy = newplayery/8;
	ldhl	sp,#9
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	srl	b
	rr	c
	srl	b
	rr	c
	srl	b
	rr	c
;main.c:291: tileindexTL = BackgroundMapWidth*indexTLy + indexTLx; // x_width * y_index + x_index
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	c, l
	ld	b, h
	ldhl	sp,	#3
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, bc
	ld	c, l
	ld	b, h
	inc	sp
	inc	sp
	push	bc
;main.c:293: result = 0; //special_tile(tileindexTL);
	ld	c, #0x00
;main.c:294: if (bk_col[tileindexTL] == blankmap[0] && bk_col[tileindexTL - 1] == blankmap[0]){
;c
	ldhl	sp,#11
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	pop	hl
	push	hl
	add	hl, de
	ld	b, (hl)
	ld	a, (#_blankmap + 0)
	ldhl	sp,	#2
	ld	(hl), a
	ldhl	sp,	#2
	ld	a, (hl)
	sub	a, b
	jr	NZ, 00102$
	pop	de
	push	de
	ld	hl, #0x0001
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ldhl	sp,	#4
	ld	(hl-), a
;c
	ld	a, e
	ld	(hl+), a
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ldhl	sp,	#11
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
	ld	e, l
	ld	d, h
	ld	a, (de)
	ld	e, a
	ldhl	sp,	#2
	ld	a, (hl)
	sub	a, e
	jr	NZ, 00102$
;main.c:295: result = 1;
	ld	c, #0x01
00102$:
;main.c:297: if (newplayery < 16 || newplayery > 8 + BackgroundMapHeight*8){
	ldhl	sp,	#9
	ld	a, (hl)
	sub	a, #0x10
	inc	hl
	ld	a, (hl)
	sbc	a, #0x00
	jr	C, 00104$
	ldhl	sp,	#9
	ld	a, #0xa8
	sub	a, (hl)
	inc	hl
	ld	a, #0x00
	sbc	a, (hl)
	jr	NC, 00105$
00104$:
;main.c:298: result = 0;
	ld	c, #0x00
00105$:
;main.c:301: return result;
	ld	e, c
;main.c:302: }
	add	sp, #5
	ret
;main.c:304: void walk_without_background_movement(INT8 move_x, INT8 move_y, UINT8 *step){
;	---------------------------------
; Function walk_without_background_movement
; ---------------------------------
_walk_without_background_movement::
	add	sp, #-3
;main.c:305: while(move_x != 0){
00104$:
;main.c:306: bit.x += (move_x > 0 ? 2 : -2);
;main.c:308: *step = (move_x > 0 ? setbit_right(*step) : setbit_left(*step));
	ldhl	sp,	#7
	ld	a, (hl+)
	ld	e, (hl)
	ldhl	sp,	#0
	ld	(hl+), a
	ld	(hl), e
;main.c:305: while(move_x != 0){
	ldhl	sp,	#5
	ld	a, (hl)
	or	a, a
	jp	Z, 00140$
;main.c:306: bit.x += (move_x > 0 ? 2 : -2);
	ld	hl, #(_bit + 0x0006)
	ld	c, (hl)
	ldhl	sp,	#5
	ld	e, (hl)
	ld	d, #0x00
	xor	a, a
	sub	a, (hl)
	bit	7, e
	jr	Z, 00197$
	bit	7, d
	jr	NZ, 00198$
	cp	a, a
	jr	00198$
00197$:
	bit	7, d
	jr	Z, 00198$
	scf
00198$:
	ld	a, #0x00
	rla
	ldhl	sp,	#2
	ld	(hl), a
	or	a, a
	jr	Z, 00115$
	ld	de, #0x0002
	jr	00116$
00115$:
	ld	de, #0xfffe
00116$:
	ld	a, e
	add	a, c
	ld	(#(_bit + 0x0006)),a
;main.c:307: if (move_x % 4 == 0 && move_x != 0){
	ldhl	sp,	#5
	ld	a, (hl)
	ld	c, a
	rla
	sbc	a, a
	ld	b, a
	ld	hl, #0x0004
	push	hl
	push	bc
	call	__modsint
	add	sp, #4
	ld	a, d
	or	a, e
	jr	NZ, 00102$
	ldhl	sp,	#5
	ld	a, (hl)
	or	a, a
	jr	Z, 00102$
;main.c:308: *step = (move_x > 0 ? setbit_right(*step) : setbit_left(*step));
	pop	de
	push	de
	ld	a, (de)
	ld	b, a
	ldhl	sp,	#2
	ld	a, (hl)
	or	a, a
	jr	Z, 00117$
	push	bc
	inc	sp
	call	_setbit_right
	inc	sp
	ld	a, e
	jr	00118$
00117$:
	push	bc
	inc	sp
	call	_setbit_left
	inc	sp
	ld	a, e
00118$:
	pop	hl
	push	hl
	ld	(hl), a
00102$:
;main.c:310: move_x += (move_x > 0 ? -2 : 2);
	ldhl	sp,	#2
	ld	a, (hl)
	or	a, a
	jr	Z, 00119$
	ld	bc, #0xfffe
	jr	00120$
00119$:
	ld	bc, #0x0002
00120$:
	ld	a, c
	ldhl	sp,	#5
	add	a, (hl)
	ld	(hl), a
;main.c:311: movegamecharacter(&bit, bit.x, bit.y);
	ld	hl, #(_bit + 0x0007)
	ld	b, (hl)
	ld	a, (#(_bit + 0x0006) + 0)
	push	bc
	inc	sp
	push	af
	inc	sp
	ld	hl, #_bit
	push	hl
	call	_movegamecharacter
	add	sp, #4
;main.c:312: performantdelay(2);
	ld	a, #0x02
	push	af
	inc	sp
	call	_performantdelay
	inc	sp
	jp	00104$
;main.c:314: while (move_y != 0){
00140$:
00110$:
	ldhl	sp,	#6
	ld	a, (hl)
	or	a, a
	jp	Z, 00113$
;main.c:315: bit.y += (move_y > 0 ? 2 : -2);
	ld	hl, #(_bit + 0x0007)
	ld	b, (hl)
	ldhl	sp,	#6
	ld	e, (hl)
	ld	d, #0x00
	xor	a, a
	sub	a, (hl)
	bit	7, e
	jr	Z, 00199$
	bit	7, d
	jr	NZ, 00200$
	cp	a, a
	jr	00200$
00199$:
	bit	7, d
	jr	Z, 00200$
	scf
00200$:
	ld	a, #0x00
	rla
	ld	c, a
	or	a, a
	jr	Z, 00121$
	ld	de, #0x0002
	jr	00122$
00121$:
	ld	de, #0xfffe
00122$:
	ld	a, b
	add	a, e
	ld	(#(_bit + 0x0007)),a
;main.c:316: if (move_y % 4 == 0 && move_y != 0){
	ldhl	sp,	#6
	ld	a, (hl)
	ld	e, a
	rla
	sbc	a, a
	ld	d, a
	push	bc
	ld	hl, #0x0004
	push	hl
	push	de
	call	__modsint
	add	sp, #4
	pop	bc
	ld	a, d
	or	a, e
	jr	NZ, 00108$
	ldhl	sp,	#6
	ld	a, (hl)
	or	a, a
	jr	Z, 00108$
;main.c:308: *step = (move_x > 0 ? setbit_right(*step) : setbit_left(*step));
	pop	de
	push	de
	ld	a, (de)
	ld	b, a
;main.c:317: *step = (move_y >  0 ? setbit_forward(*step) : setbit_backward(*step));
	ld	a, c
	or	a, a
	jr	Z, 00123$
	push	bc
	push	bc
	inc	sp
	call	_setbit_forward
	inc	sp
	ld	a, e
	pop	bc
	jr	00124$
00123$:
	push	bc
	push	bc
	inc	sp
	call	_setbit_backward
	inc	sp
	ld	a, e
	pop	bc
00124$:
	pop	hl
	push	hl
	ld	(hl), a
00108$:
;main.c:319: move_y += (move_y > 0 ? -2 : 2);
	ld	a, c
	or	a, a
	jr	Z, 00125$
	ld	de, #0xfffe
	jr	00126$
00125$:
	ld	de, #0x0002
00126$:
	ld	a, e
	ldhl	sp,	#6
	add	a, (hl)
	ld	(hl), a
;main.c:320: movegamecharacter(&bit, bit.x, bit.y);
	ld	a, (#(_bit + 0x0007) + 0)
	ld	hl, #(_bit + 0x0006)
	ld	b, (hl)
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	hl, #_bit
	push	hl
	call	_movegamecharacter
	add	sp, #4
;main.c:321: performantdelay(2);
	ld	a, #0x02
	push	af
	inc	sp
	call	_performantdelay
	inc	sp
	jp	00110$
00113$:
;main.c:323: }
	add	sp, #3
	ret
;main.c:325: void walk_background_movement(INT8 move_x, INT8 move_y, UINT8 *step){
;	---------------------------------
; Function walk_background_movement
; ---------------------------------
_walk_background_movement::
	dec	sp
;main.c:326: while(move_x != 0){
00104$:
	ldhl	sp,	#3
	ld	a, (hl)
	or	a, a
	jp	Z, 00110$
;main.c:327: scroll_bkg(move_x < 0 ? -2 : 2, 0);
	bit	7, (hl)
	jr	Z, 00117$
	ld	bc, #0xfffe
	jr	00118$
00117$:
	ld	bc, #0x0002
00118$:
;c:/gbdk/include/gb/gb.h:775: SCX_REG+=x, SCY_REG+=y;
	ldh	a, (_SCX_REG+0)
	add	a, c
	ldh	(_SCX_REG+0),a
;main.c:328: if (move_x % 4 == 0 && move_x != 0){
	ldhl	sp,	#3
	ld	a, (hl)
	ld	c, a
	rla
	sbc	a, a
	ld	b, a
	ld	hl, #0x0004
	push	hl
	push	bc
;main.c:329: *step = (move_x > 0 ? setbit_right(*step) : setbit_left(*step));
	call	__modsint
	add	sp, #4
	ld	c, e
	ld	b, d
	ldhl	sp,	#3
	ld	e, (hl)
	ld	d, #0x00
	xor	a, a
	sub	a, (hl)
	bit	7, e
	jr	Z, 00199$
	bit	7, d
	jr	NZ, 00200$
	cp	a, a
	jr	00200$
00199$:
	bit	7, d
	jr	Z, 00200$
	scf
00200$:
	ld	a, #0x00
	rla
	ldhl	sp,	#0
	ld	(hl), a
;main.c:328: if (move_x % 4 == 0 && move_x != 0){
	ld	a, b
	or	a, c
	jr	NZ, 00102$
	ldhl	sp,	#3
	ld	a, (hl)
	or	a, a
	jr	Z, 00102$
;main.c:329: *step = (move_x > 0 ? setbit_right(*step) : setbit_left(*step));
	ldhl	sp,#5
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	a, (bc)
	ld	d, a
	ldhl	sp,	#0
	ld	a, (hl)
	or	a, a
	jr	Z, 00119$
	push	bc
	push	de
	inc	sp
	call	_setbit_right
	inc	sp
	pop	bc
	jr	00120$
00119$:
	push	bc
	push	de
	inc	sp
	call	_setbit_left
	inc	sp
	pop	bc
00120$:
	ld	a, e
	ld	(bc), a
00102$:
;main.c:331: move_x += (move_x > 0 ? -2 : 2);
	ldhl	sp,	#0
	ld	a, (hl)
	or	a, a
	jr	Z, 00121$
	ld	bc, #0xfffe
	jr	00122$
00121$:
	ld	bc, #0x0002
00122$:
	ld	a, c
	ldhl	sp,	#3
	add	a, (hl)
	ld	(hl), a
;main.c:332: performantdelay(2);
	ld	a, #0x02
	push	af
	inc	sp
	call	_performantdelay
	inc	sp
	jp	00104$
;main.c:334: while (move_y != 0){
00110$:
	ldhl	sp,	#4
	ld	a, (hl)
	or	a, a
	jp	Z, 00115$
;main.c:335: scroll_bkg(0, move_y < 0 ? -2 : 2);
	bit	7, (hl)
	jr	Z, 00123$
	ld	bc, #0xfffe
	jr	00124$
00123$:
	ld	bc, #0x0002
00124$:
;c:/gbdk/include/gb/gb.h:775: SCX_REG+=x, SCY_REG+=y;
	ldh	a, (_SCY_REG+0)
	add	a, c
	ldh	(_SCY_REG+0),a
;main.c:336: if (move_y % 4 == 0 && move_y != 0){
	ldhl	sp,	#4
	ld	a, (hl)
	ld	c, a
	rla
	sbc	a, a
	ld	b, a
	ld	hl, #0x0004
	push	hl
	push	bc
;main.c:337: *step = (move_y >  0 ? setbit_forward(*step) : setbit_backward(*step));
	call	__modsint
	add	sp, #4
	ld	c, e
	ld	b, d
	ldhl	sp,	#4
	ld	e, (hl)
	ld	d, #0x00
	xor	a, a
	sub	a, (hl)
	bit	7, e
	jr	Z, 00201$
	bit	7, d
	jr	NZ, 00202$
	cp	a, a
	jr	00202$
00201$:
	bit	7, d
	jr	Z, 00202$
	scf
00202$:
	ld	a, #0x00
	rla
	ldhl	sp,	#0
	ld	(hl), a
;main.c:336: if (move_y % 4 == 0 && move_y != 0){
	ld	a, b
	or	a, c
	jr	NZ, 00108$
	ldhl	sp,	#4
	ld	a, (hl)
	or	a, a
	jr	Z, 00108$
;main.c:337: *step = (move_y >  0 ? setbit_forward(*step) : setbit_backward(*step));
	inc	hl
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	a, (bc)
	ld	d, a
	ldhl	sp,	#0
	ld	a, (hl)
	or	a, a
	jr	Z, 00125$
	push	bc
	push	de
	inc	sp
	call	_setbit_forward
	inc	sp
	pop	bc
	jr	00126$
00125$:
	push	bc
	push	de
	inc	sp
	call	_setbit_backward
	inc	sp
	pop	bc
00126$:
	ld	a, e
	ld	(bc), a
00108$:
;main.c:339: move_y += (move_y > 0 ? -2 : 2);
	ldhl	sp,	#0
	ld	a, (hl)
	or	a, a
	jr	Z, 00127$
	ld	bc, #0xfffe
	jr	00128$
00127$:
	ld	bc, #0x0002
00128$:
	ld	a, c
	ldhl	sp,	#4
	add	a, (hl)
	ld	(hl), a
;main.c:340: performantdelay(2);
	ld	a, #0x02
	push	af
	inc	sp
	call	_performantdelay
	inc	sp
	jp	00110$
00115$:
;main.c:342: }
	inc	sp
	ret
;main.c:344: void move(UINT8 *step, UINT16 *player_loc_x, UINT16 *player_loc_y, unsigned char *bk_col){
;	---------------------------------
; Function move
; ---------------------------------
_move::
	add	sp, #-6
;main.c:346: switch (joypad())
	call	_joypad
	ld	c, e
;main.c:349: if (can_player_move(*player_loc_x - tile, *player_loc_y, bk_col)){
	ldhl	sp,	#12
	ld	a, (hl+)
	ld	e, (hl)
	ldhl	sp,	#0
	ld	(hl+), a
	ld	(hl), e
	ldhl	sp,	#10
	ld	a, (hl+)
	ld	e, (hl)
	ldhl	sp,	#4
	ld	(hl+), a
	ld	(hl), e
;main.c:354: *step = setbit_left(*step);
	ldhl	sp,	#8
	ld	a, (hl+)
	ld	e, (hl)
	ldhl	sp,	#2
	ld	(hl+), a
	ld	(hl), e
;main.c:346: switch (joypad())
	ld	a, c
	dec	a
	jr	Z, 00105$
	ld	a,c
	cp	a,#0x02
	jr	Z, 00101$
	cp	a,#0x04
	jp	Z,00109$
	sub	a, #0x08
	jp	Z,00116$
	jp	00125$
;main.c:348: case (J_LEFT):
00101$:
;main.c:349: if (can_player_move(*player_loc_x - tile, *player_loc_y, bk_col)){
	pop	de
	push	de
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
	ld	b, a
	ldhl	sp,#4
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	l, a
	inc	de
	ld	a, (de)
	ld	h, a
	ld	de, #0xfff8
	add	hl, de
	ld	e, l
	ld	d, h
	ldhl	sp,	#14
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	push	hl
	push	bc
	push	de
	call	_can_player_move
	add	sp, #6
	ld	a, e
	or	a, a
	jr	Z, 00103$
;main.c:350: walk_background_movement(-1*tile, 0, step);
	ldhl	sp,	#8
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	push	hl
	xor	a, a
	ld	d,a
	ld	e,#0xf8
	push	de
	call	_walk_background_movement
	add	sp, #4
;main.c:351: *player_loc_x -= tile;
	ldhl	sp,#4
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
	ld	b, a
	ld	a, c
	add	a, #0xf8
	ld	c, a
	ld	a, b
	adc	a, #0xff
	ld	b, a
	dec	hl
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
	jp	00125$
00103$:
;main.c:354: *step = setbit_left(*step);
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	push	af
	inc	sp
	call	_setbit_left
	inc	sp
	ld	c, e
	ldhl	sp,	#2
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), c
;main.c:356: break;
	jp	00125$
;main.c:358: case (J_RIGHT):
00105$:
;main.c:359: if (can_player_move(*player_loc_x + tile, *player_loc_y, bk_col)){
	pop	de
	push	de
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
	ld	b, a
	ldhl	sp,#4
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	l, a
	inc	de
	ld	a, (de)
	ld	h, a
	ld	de, #0x0008
	add	hl, de
	ld	e, l
	ld	d, h
	ldhl	sp,	#14
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	push	hl
	push	bc
	push	de
	call	_can_player_move
	add	sp, #6
	ld	a, e
	or	a, a
	jr	Z, 00107$
;main.c:360: walk_background_movement(tile, 0, step);
	ldhl	sp,	#8
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	push	hl
	xor	a, a
	ld	d,a
	ld	e,#0x08
	push	de
	call	_walk_background_movement
	add	sp, #4
;main.c:361: *player_loc_x += tile;
	ldhl	sp,#4
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	b, a
	inc	de
	ld	a, (de)
	ld	c, a
	ld	a, b
	add	a, #0x08
	ld	b, a
	jr	NC, 00181$
	inc	c
00181$:
	dec	hl
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, b
	ld	(hl+), a
	ld	(hl), c
	jp	00125$
00107$:
;main.c:364: *step = setbit_right(*step);
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	push	af
	inc	sp
	call	_setbit_right
	inc	sp
	ld	c, e
	ldhl	sp,	#2
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), c
;main.c:366: break;
	jp	00125$
;main.c:368: case (J_UP):
00109$:
;main.c:369: if (can_player_move(*player_loc_x, *player_loc_y - tile, bk_col)){
	pop	de
	push	de
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
	ld	b, a
	ld	a, c
	add	a, #0xf8
	ld	c, a
	ld	a, b
	adc	a, #0xff
	ld	b, a
	ldhl	sp,#4
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	dec	hl
	ld	(hl+), a
	inc	de
	ld	a, (de)
	ld	(hl), a
	ldhl	sp,	#14
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	push	hl
	push	bc
	ldhl	sp,	#8
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	push	hl
	call	_can_player_move
	add	sp, #6
	ld	a, e
	or	a, a
	jr	Z, 00115$
;main.c:370: if (*player_loc_y < 96 || *player_loc_y > BackgroundMapHeight*8 - 56){
	pop	de
	push	de
	ld	a, (de)
	ldhl	sp,	#4
	ld	(hl+), a
	inc	de
	ld	a, (de)
	ld	(hl-), a
	ld	a, (hl)
	sub	a, #0x60
	inc	hl
	ld	a, (hl)
	sbc	a, #0x00
	jr	C, 00110$
	ldhl	sp,	#4
	ld	a, #0x68
	sub	a, (hl)
	inc	hl
	ld	a, #0x00
	sbc	a, (hl)
	jr	NC, 00111$
00110$:
;main.c:371: walk_without_background_movement(0, -1*tile, step);
	ldhl	sp,	#8
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	push	hl
	ld	a, #0xf8
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_walk_without_background_movement
	add	sp, #4
;main.c:372: *player_loc_y -= 8;
	pop	de
	push	de
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
	ld	b, a
	ld	a, c
	add	a, #0xf8
	ld	c, a
	ld	a, b
	adc	a, #0xff
	ld	b, a
	pop	hl
	push	hl
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
	jr	00115$
00111$:
;main.c:375: walk_background_movement(0, -1*tile, step);
	ldhl	sp,	#8
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	push	hl
	ld	a, #0xf8
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_walk_background_movement
	add	sp, #4
;main.c:376: *player_loc_y -= 8;
	pop	de
	push	de
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
	ld	b, a
	ld	a, c
	add	a, #0xf8
	ld	c, a
	ld	a, b
	adc	a, #0xff
	ld	b, a
	pop	hl
	push	hl
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
00115$:
;main.c:379: *step = setbit_backward(*step);
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	push	af
	inc	sp
	call	_setbit_backward
	inc	sp
	ld	c, e
	ldhl	sp,	#2
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), c
;main.c:380: break;
	jp	00125$
;main.c:382: case (J_DOWN):
00116$:
;main.c:383: if (can_player_move(*player_loc_x, *player_loc_y + tile, bk_col)){
	pop	de
	push	de
	ld	a, (de)
	ld	l, a
	inc	de
	ld	a, (de)
	ld	b, a
	ld	a, l
	add	a, #0x08
	ld	c, a
	jr	NC, 00182$
	inc	b
00182$:
	ldhl	sp,#4
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	dec	hl
	ld	(hl+), a
	inc	de
	ld	a, (de)
	ld	(hl), a
	ldhl	sp,	#14
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	push	hl
	push	bc
	ldhl	sp,	#8
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	push	hl
	call	_can_player_move
	add	sp, #6
	ld	a, e
	or	a, a
	jr	Z, 00122$
;main.c:384: if (*player_loc_y < 88 || *player_loc_y > BackgroundMapHeight*8 - 64){
	pop	de
	push	de
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
	ld	b, a
	ld	a, c
	sub	a, #0x58
	ld	a, b
	sbc	a, #0x00
	jr	C, 00117$
	ld	a, #0x60
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	NC, 00118$
00117$:
;main.c:385: walk_without_background_movement(0, tile, step);
	ldhl	sp,	#8
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	push	hl
	ld	a, #0x08
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_walk_without_background_movement
	add	sp, #4
;main.c:386: *player_loc_y += 8;
	pop	de
	push	de
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
	ld	b, a
	ld	hl, #0x0008
	add	hl, bc
	ld	c, l
	ld	b, h
	pop	hl
	push	hl
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
	jr	00122$
00118$:
;main.c:389: walk_background_movement(0, tile, step);
	ldhl	sp,	#8
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	push	hl
	ld	a, #0x08
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_walk_background_movement
	add	sp, #4
;main.c:390: *player_loc_y += 8;
	pop	de
	push	de
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
	ld	b, a
	ld	hl, #0x0008
	add	hl, bc
	ld	c, l
	ld	b, h
	pop	hl
	push	hl
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
00122$:
;main.c:393: reset_bit();
	call	_reset_bit
;main.c:398: }
00125$:
;main.c:399: }
	add	sp, #6
	ret
;main.c:401: void setup_map(UWORD *pallete, unsigned char *map_data, unsigned char *tiles_1, unsigned char *tiles_0, int character_x, int character_y, int data_size){
;	---------------------------------
; Function setup_map
; ---------------------------------
_setup_map::
;main.c:403: set_bkg_palette(0, 8, pallete);
	pop	bc
	pop	hl
	push	hl
	push	bc
	push	hl
	ld	a, #0x08
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_set_bkg_palette
	add	sp, #4
;main.c:404: set_bkg_data(0, data_size, map_data);
	ldhl	sp,	#14
	ld	b, (hl)
	ldhl	sp,	#4
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	push	hl
	push	bc
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_set_bkg_data
	add	sp, #4
;main.c:405: VBK_REG = 1;
	ld	a, #0x01
	ldh	(_VBK_REG+0),a
;main.c:406: set_bkg_tiles(0, 0, BackgroundMapWidth, BackgroundMapHeight, tiles_1);
	ldhl	sp,	#6
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	push	hl
	ld	de, #0x1428
	push	de
	xor	a, a
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_set_bkg_tiles
	add	sp, #6
;main.c:407: VBK_REG = 0;
	ld	a, #0x00
	ldh	(_VBK_REG+0),a
;main.c:408: set_bkg_tiles(0, 0, BackgroundMapWidth, BackgroundMapHeight, tiles_0);
	ldhl	sp,	#8
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	push	hl
	ld	de, #0x1428
	push	de
	xor	a, a
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_set_bkg_tiles
	add	sp, #6
;main.c:409: SHOW_BKG;
	ldh	a, (_LCDC_REG+0)
	or	a, #0x01
	ldh	(_LCDC_REG+0),a
;main.c:412: set_sprite_palette(0,8, &spritepalette[0]);
	ld	hl, #_spritepalette
	push	hl
	ld	a, #0x08
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_set_sprite_palette
	add	sp, #4
;main.c:413: set_sprite_data(0, 43, GameSprites);
	ld	hl, #_GameSprites
	push	hl
	ld	a, #0x2b
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_set_sprite_data
	add	sp, #4
;main.c:414: setupbit(character_x, character_y);
	ldhl	sp,	#12
	ld	a, (hl-)
	ld	b, a
	dec	hl
	ld	a, (hl)
	push	bc
	inc	sp
	push	af
	inc	sp
	call	_setupbit
	add	sp, #2
;main.c:415: player_location[0] = character_x;
	ld	de, #_player_location
	ldhl	sp,	#10
	ld	a, (hl)
	ld	(de), a
	inc	de
	inc	hl
	ld	a, (hl)
	ld	(de), a
;main.c:416: player_location[1] = character_y;
	ld	de, #(_player_location + 0x0002)
	inc	hl
	ld	a, (hl)
	ld	(de), a
	inc	de
	inc	hl
	ld	a, (hl)
	ld	(de), a
;main.c:417: SHOW_SPRITES;
	ldh	a, (_LCDC_REG+0)
	or	a, #0x02
	ldh	(_LCDC_REG+0),a
;main.c:418: DISPLAY_ON;
	ldh	a, (_LCDC_REG+0)
	or	a, #0x80
	ldh	(_LCDC_REG+0),a
;main.c:419: }
	ret
;main.c:421: void main(){
;	---------------------------------
; Function main
; ---------------------------------
_main::
	dec	sp
;main.c:422: unsigned char* bk_collision = BackgroundMapPLN0;
;main.c:423: unsigned char* bk_tiles = BackgroundMapPLN1;
;main.c:424: setup_map(backgroundpalette, BackgroundData, bk_tiles, bk_collision, 88, 88, 14);
	ld	hl, #0x000e
	push	hl
	ld	l, #0x58
	push	hl
	ld	l, #0x58
	push	hl
	ld	hl, #_BackgroundMapPLN0
	push	hl
	ld	hl, #_BackgroundMapPLN1
	push	hl
	ld	hl, #_BackgroundData
	push	hl
	ld	hl, #_backgroundpalette
	push	hl
	call	_setup_map
	add	sp, #14
;main.c:426: game_running = 1;
	ld	hl, #_game_running
	ld	(hl), #0x01
;main.c:427: UINT8 step = 0;
	xor	a, a
	ldhl	sp,	#0
	ld	(hl), a
;main.c:429: while(game_running){
00101$:
	ld	a, (#_game_running)
	or	a, a
	jr	Z, 00104$
;main.c:430: move(&step, &player_location[0], &player_location[1], bk_collision);
	ldhl	sp,	#0
	ld	c, l
	ld	b, h
	ld	hl, #_BackgroundMapPLN0
	push	hl
	ld	hl, #(_player_location + 0x0002)
	push	hl
	ld	hl, #_player_location
	push	hl
	push	bc
	call	_move
	add	sp, #8
;main.c:431: delay(100);
	ld	hl, #0x0064
	push	hl
	call	_delay
	add	sp, #2
	jr	00101$
00104$:
;main.c:435: }
	inc	sp
	ret
	.area _CODE
	.area _CABS (ABS)
