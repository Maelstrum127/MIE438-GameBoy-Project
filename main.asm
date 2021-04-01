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
	.globl _is_walkable
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
;main.c:25: UBYTE spritesize = 8;
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
;main.c:71: void performantdelay(UINT8 numloops){
;	---------------------------------
; Function performantdelay
; ---------------------------------
_performantdelay::
;main.c:73: for(i=0;i<numloops;i++){
	ld	c, #0x00
00103$:
	ld	a, c
	ldhl	sp,	#2
	sub	a, (hl)
	ret	NC
;main.c:74: wait_vbl_done();
	call	_wait_vbl_done
;main.c:73: for(i=0;i<numloops;i++){
	inc	c
;main.c:76: }
	jr	00103$
_blankmap:
	.db #0x51	; 81	'Q'
	.db #0x52	; 82	'R'
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
_backgroundpalette:
	.dw #0x17bc
	.dw #0x22e7
	.dw #0x19c4
	.dw #0x14e0
	.dw #0x7fff
	.dw #0x5294
	.dw #0x294a
	.dw #0x0000
	.dw #0x2b2f
	.dw #0x054b
	.dw #0x15e5
	.dw #0x01e0
	.dw #0x2b2f
	.dw #0x22ef
	.dw #0x2b2a
	.dw #0x2aef
	.dw #0x6f7b
	.dw #0x5294
	.dw #0x3def
	.dw #0x294a
	.dw #0x5294
	.dw #0x7d17
	.dw #0x5811
	.dw #0x3825
	.dw #0x17bc
	.dw #0x22e7
	.dw #0x19c4
	.dw #0x14e0
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
;main.c:78: void movegamecharacter(struct GameCharacter* character, UINT8 x, UINT8 y){
;	---------------------------------
; Function movegamecharacter
; ---------------------------------
_movegamecharacter::
	add	sp, #-4
;main.c:79: move_sprite(character->spriteids[0], x, y);
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
;main.c:80: move_sprite(character->spriteids[1], x + spritesize, y);
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
;main.c:81: move_sprite(character->spriteids[2], x, y + spritesize);
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
;main.c:82: move_sprite(character->spriteids[3], x + spritesize, y + spritesize);
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
;main.c:83: move_sprite(character->spriteids[4], x, y + 2*spritesize);
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
;main.c:84: move_sprite(character->spriteids[5], x + spritesize, y + 2*spritesize);
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
;main.c:84: move_sprite(character->spriteids[5], x + spritesize, y + 2*spritesize);
;main.c:85: }
	add	sp, #4
	ret
;main.c:87: void setupbit(INT8 init_x, INT8 init_y){
;	---------------------------------
; Function setupbit
; ---------------------------------
_setupbit::
;main.c:88: bit.x = init_x;
	ld	bc, #_bit+0
	ld	de, #(_bit + 0x0006)
	ldhl	sp,	#2
	ld	a, (hl)
	ld	(de), a
;main.c:89: bit.y = init_y;
	ld	de, #(_bit + 0x0007)
	inc	hl
	ld	a, (hl)
	ld	(de), a
;main.c:90: bit.height = 32;
	ld	hl, #(_bit + 0x0009)
	ld	(hl), #0x20
;main.c:91: bit.width = 24;
	ld	hl, #(_bit + 0x0008)
	ld	(hl), #0x18
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0002)
	ld	(hl), #0x00
;main.c:95: bit.spriteids[0] = 0;
	xor	a, a
	ld	(bc), a
;c:/gbdk/include/gb/gb.h:1050: shadow_OAM[nb].prop=prop;
	ld	hl, #(_shadow_OAM + 0x0003)
	ld	(hl), #0x04
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0006)
	ld	(hl), #0x01
;main.c:98: bit.spriteids[1] = 1;
	ld	hl, #(_bit + 0x0001)
	ld	(hl), #0x01
;c:/gbdk/include/gb/gb.h:1050: shadow_OAM[nb].prop=prop;
	ld	hl, #(_shadow_OAM + 0x0007)
	ld	(hl), #0x04
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x000a)
	ld	(hl), #0x02
;main.c:101: bit.spriteids[2] = 2;
	ld	hl, #(_bit + 0x0002)
	ld	(hl), #0x02
;c:/gbdk/include/gb/gb.h:1050: shadow_OAM[nb].prop=prop;
	ld	hl, #(_shadow_OAM + 0x000b)
	ld	(hl), #0x01
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x000e)
	ld	(hl), #0x03
;main.c:104: bit.spriteids[3] = 3;
	ld	hl, #(_bit + 0x0003)
	ld	(hl), #0x03
;c:/gbdk/include/gb/gb.h:1050: shadow_OAM[nb].prop=prop;
	ld	hl, #(_shadow_OAM + 0x000f)
	ld	(hl), #0x01
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0012)
	ld	(hl), #0x04
;main.c:107: bit.spriteids[4] = 4; 
	ld	hl, #(_bit + 0x0004)
	ld	(hl), #0x04
;c:/gbdk/include/gb/gb.h:1050: shadow_OAM[nb].prop=prop;
	ld	hl, #(_shadow_OAM + 0x0013)
	ld	(hl), #0x07
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0016)
	ld	(hl), #0x05
;main.c:110: bit.spriteids[5] = 5; 
	ld	hl, #(_bit + 0x0005)
	ld	(hl), #0x05
;c:/gbdk/include/gb/gb.h:1050: shadow_OAM[nb].prop=prop;
	ld	hl, #(_shadow_OAM + 0x0017)
	ld	(hl), #0x07
;main.c:113: movegamecharacter(&bit, bit.x, bit.y); 
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
;main.c:115: }
	ret
;main.c:117: UINT8 setbit_forward(UINT8 step){
;	---------------------------------
; Function setbit_forward
; ---------------------------------
_setbit_forward::
;main.c:118: if (step == 1){
	ldhl	sp,	#2
	ld	a, (hl)
	dec	a
	jr	NZ, 00102$
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0002)
	ld	(hl), #0x00
;main.c:120: bit.spriteids[0] = 0;
	ld	hl, #_bit
	ld	(hl), #0x00
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0006)
	ld	(hl), #0x01
;main.c:122: bit.spriteids[1] = 1;
	ld	hl, #(_bit + 0x0001)
	ld	(hl), #0x01
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x000a)
	ld	(hl), #0x02
;main.c:124: bit.spriteids[2] = 2;    
	ld	hl, #(_bit + 0x0002)
	ld	(hl), #0x02
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x000e)
	ld	(hl), #0x03
;main.c:126: bit.spriteids[3] = 3;  
	ld	hl, #(_bit + 0x0003)
	ld	(hl), #0x03
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0012)
	ld	(hl), #0x06
;main.c:128: bit.spriteids[4] = 4; 
	ld	hl, #(_bit + 0x0004)
	ld	(hl), #0x04
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0016)
	ld	(hl), #0x07
;main.c:130: bit.spriteids[5] = 5;
	ld	hl, #(_bit + 0x0005)
	ld	(hl), #0x05
00102$:
;main.c:132: if (step == 0){
	ldhl	sp,	#2
	ld	a, (hl)
	or	a, a
	jr	NZ, 00104$
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0002)
	ld	(hl), #0x00
;main.c:134: bit.spriteids[0] = 0;
	ld	hl, #_bit
	ld	(hl), #0x00
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0006)
	ld	(hl), #0x01
;main.c:136: bit.spriteids[1] = 1;
	ld	hl, #(_bit + 0x0001)
	ld	(hl), #0x01
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x000a)
	ld	(hl), #0x02
;main.c:138: bit.spriteids[2] = 2;    
	ld	hl, #(_bit + 0x0002)
	ld	(hl), #0x02
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x000e)
	ld	(hl), #0x03
;main.c:140: bit.spriteids[3] = 3;  
	ld	hl, #(_bit + 0x0003)
	ld	(hl), #0x03
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0012)
	ld	(hl), #0x08
;main.c:142: bit.spriteids[4] = 4; 
	ld	hl, #(_bit + 0x0004)
	ld	(hl), #0x04
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0016)
	ld	(hl), #0x09
;main.c:144: bit.spriteids[5] = 5;   
	ld	hl, #(_bit + 0x0005)
	ld	(hl), #0x05
00104$:
;main.c:146: return (step + 1)%2;
	ldhl	sp,	#2
	ld	c, (hl)
	ld	b, #0x00
	inc	bc
	ld	hl, #0x0002
	push	hl
	push	bc
	call	__modsint
	add	sp, #4
;main.c:147: }
	ret
;main.c:149: UINT8 setbit_backward(UINT8 step){
;	---------------------------------
; Function setbit_backward
; ---------------------------------
_setbit_backward::
;main.c:150: if (step == 1){
	ldhl	sp,	#2
	ld	a, (hl)
	dec	a
	jr	NZ, 00102$
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0002)
	ld	(hl), #0x0a
;main.c:152: bit.spriteids[0] = 0;
	ld	hl, #_bit
	ld	(hl), #0x00
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0006)
	ld	(hl), #0x0b
;main.c:154: bit.spriteids[1] = 1;
	ld	hl, #(_bit + 0x0001)
	ld	(hl), #0x01
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x000a)
	ld	(hl), #0x0c
;main.c:156: bit.spriteids[2] = 2;    
	ld	hl, #(_bit + 0x0002)
	ld	(hl), #0x02
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x000e)
	ld	(hl), #0x0d
;main.c:158: bit.spriteids[3] = 3;  
	ld	hl, #(_bit + 0x0003)
	ld	(hl), #0x03
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0012)
	ld	(hl), #0x0e
;main.c:160: bit.spriteids[4] = 4; 
	ld	hl, #(_bit + 0x0004)
	ld	(hl), #0x04
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0016)
	ld	(hl), #0x0f
;main.c:162: bit.spriteids[5] = 5;
	ld	hl, #(_bit + 0x0005)
	ld	(hl), #0x05
00102$:
;main.c:164: if (step == 0){
	ldhl	sp,	#2
	ld	a, (hl)
	or	a, a
	jr	NZ, 00104$
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0002)
	ld	(hl), #0x0a
;main.c:166: bit.spriteids[0] = 0;
	ld	hl, #_bit
	ld	(hl), #0x00
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0006)
	ld	(hl), #0x0b
;main.c:168: bit.spriteids[1] = 1;
	ld	hl, #(_bit + 0x0001)
	ld	(hl), #0x01
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x000a)
	ld	(hl), #0x0c
;main.c:170: bit.spriteids[2] = 2;    
	ld	hl, #(_bit + 0x0002)
	ld	(hl), #0x02
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x000e)
	ld	(hl), #0x0d
;main.c:172: bit.spriteids[3] = 3;  
	ld	hl, #(_bit + 0x0003)
	ld	(hl), #0x03
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0012)
	ld	(hl), #0x10
;main.c:174: bit.spriteids[4] = 4; 
	ld	hl, #(_bit + 0x0004)
	ld	(hl), #0x04
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0016)
	ld	(hl), #0x11
;main.c:176: bit.spriteids[5] = 5;   
	ld	hl, #(_bit + 0x0005)
	ld	(hl), #0x05
00104$:
;main.c:178: return (step + 1)%2;
	ldhl	sp,	#2
	ld	c, (hl)
	ld	b, #0x00
	inc	bc
	ld	hl, #0x0002
	push	hl
	push	bc
	call	__modsint
	add	sp, #4
;main.c:179: }
	ret
;main.c:181: UINT8 setbit_right(UINT8 step){
;	---------------------------------
; Function setbit_right
; ---------------------------------
_setbit_right::
;main.c:182: if (step == 1){
	ldhl	sp,	#2
	ld	a, (hl)
	dec	a
	jr	NZ, 00102$
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0002)
	ld	(hl), #0x12
;main.c:184: bit.spriteids[0] = 0;
	ld	hl, #_bit
	ld	(hl), #0x00
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0006)
	ld	(hl), #0x13
;main.c:186: bit.spriteids[1] = 1;
	ld	hl, #(_bit + 0x0001)
	ld	(hl), #0x01
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x000a)
	ld	(hl), #0x14
;main.c:188: bit.spriteids[2] = 2;    
	ld	hl, #(_bit + 0x0002)
	ld	(hl), #0x02
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x000e)
	ld	(hl), #0x15
;main.c:190: bit.spriteids[3] = 3;  
	ld	hl, #(_bit + 0x0003)
	ld	(hl), #0x03
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0012)
	ld	(hl), #0x16
;main.c:192: bit.spriteids[4] = 4; 
	ld	hl, #(_bit + 0x0004)
	ld	(hl), #0x04
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0016)
	ld	(hl), #0x17
;main.c:194: bit.spriteids[5] = 5;
	ld	hl, #(_bit + 0x0005)
	ld	(hl), #0x05
00102$:
;main.c:196: if (step == 0){
	ldhl	sp,	#2
	ld	a, (hl)
	or	a, a
	jr	NZ, 00104$
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0002)
	ld	(hl), #0x1e
;main.c:198: bit.spriteids[0] = 0;
	ld	hl, #_bit
	ld	(hl), #0x00
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0006)
	ld	(hl), #0x1f
;main.c:200: bit.spriteids[1] = 1;
	ld	hl, #(_bit + 0x0001)
	ld	(hl), #0x01
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x000a)
	ld	(hl), #0x20
;main.c:202: bit.spriteids[2] = 2;    
	ld	hl, #(_bit + 0x0002)
	ld	(hl), #0x02
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x000e)
	ld	(hl), #0x21
;main.c:204: bit.spriteids[3] = 3;  
	ld	hl, #(_bit + 0x0003)
	ld	(hl), #0x03
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0012)
	ld	(hl), #0x22
;main.c:206: bit.spriteids[4] = 4; 
	ld	hl, #(_bit + 0x0004)
	ld	(hl), #0x04
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0016)
	ld	(hl), #0x23
;main.c:208: bit.spriteids[5] = 5;   
	ld	hl, #(_bit + 0x0005)
	ld	(hl), #0x05
00104$:
;main.c:210: return (step + 1)%2;
	ldhl	sp,	#2
	ld	c, (hl)
	ld	b, #0x00
	inc	bc
	ld	hl, #0x0002
	push	hl
	push	bc
	call	__modsint
	add	sp, #4
;main.c:211: }
	ret
;main.c:213: UINT8 setbit_left(UINT8 step){
;	---------------------------------
; Function setbit_left
; ---------------------------------
_setbit_left::
;main.c:214: if (step == 1){
	ldhl	sp,	#2
	ld	a, (hl)
	dec	a
	jr	NZ, 00102$
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0002)
	ld	(hl), #0x18
;main.c:216: bit.spriteids[0] = 0;
	ld	hl, #_bit
	ld	(hl), #0x00
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0006)
	ld	(hl), #0x19
;main.c:218: bit.spriteids[1] = 1;
	ld	hl, #(_bit + 0x0001)
	ld	(hl), #0x01
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x000a)
	ld	(hl), #0x1a
;main.c:220: bit.spriteids[2] = 2;    
	ld	hl, #(_bit + 0x0002)
	ld	(hl), #0x02
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x000e)
	ld	(hl), #0x1b
;main.c:222: bit.spriteids[3] = 3;  
	ld	hl, #(_bit + 0x0003)
	ld	(hl), #0x03
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0012)
	ld	(hl), #0x1c
;main.c:224: bit.spriteids[4] = 4; 
	ld	hl, #(_bit + 0x0004)
	ld	(hl), #0x04
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0016)
	ld	(hl), #0x1d
;main.c:226: bit.spriteids[5] = 5;
	ld	hl, #(_bit + 0x0005)
	ld	(hl), #0x05
00102$:
;main.c:228: if (step == 0){
	ldhl	sp,	#2
	ld	a, (hl)
	or	a, a
	jr	NZ, 00104$
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0002)
	ld	(hl), #0x24
;main.c:230: bit.spriteids[0] = 0;
	ld	hl, #_bit
	ld	(hl), #0x00
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0006)
	ld	(hl), #0x25
;main.c:232: bit.spriteids[1] = 1;
	ld	hl, #(_bit + 0x0001)
	ld	(hl), #0x01
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x000a)
	ld	(hl), #0x26
;main.c:234: bit.spriteids[2] = 2;    
	ld	hl, #(_bit + 0x0002)
	ld	(hl), #0x02
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x000e)
	ld	(hl), #0x27
;main.c:236: bit.spriteids[3] = 3;  
	ld	hl, #(_bit + 0x0003)
	ld	(hl), #0x03
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0012)
	ld	(hl), #0x28
;main.c:238: bit.spriteids[4] = 4; 
	ld	hl, #(_bit + 0x0004)
	ld	(hl), #0x04
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0016)
	ld	(hl), #0x29
;main.c:240: bit.spriteids[5] = 5;   
	ld	hl, #(_bit + 0x0005)
	ld	(hl), #0x05
00104$:
;main.c:242: return (step + 1)%2;
	ldhl	sp,	#2
	ld	c, (hl)
	ld	b, #0x00
	inc	bc
	ld	hl, #0x0002
	push	hl
	push	bc
	call	__modsint
	add	sp, #4
;main.c:243: }
	ret
;main.c:245: void reset_bit(){
;	---------------------------------
; Function reset_bit
; ---------------------------------
_reset_bit::
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0002)
	ld	(hl), #0x00
;main.c:247: bit.spriteids[0] = 0;
	ld	hl, #_bit
	ld	(hl), #0x00
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0006)
	ld	(hl), #0x01
;main.c:249: bit.spriteids[1] = 1;
	ld	hl, #(_bit + 0x0001)
	ld	(hl), #0x01
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x000a)
	ld	(hl), #0x02
;main.c:251: bit.spriteids[2] = 2;    
	ld	hl, #(_bit + 0x0002)
	ld	(hl), #0x02
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x000e)
	ld	(hl), #0x03
;main.c:253: bit.spriteids[3] = 3;  
	ld	hl, #(_bit + 0x0003)
	ld	(hl), #0x03
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0012)
	ld	(hl), #0x04
;main.c:255: bit.spriteids[4] = 4; 
	ld	hl, #(_bit + 0x0004)
	ld	(hl), #0x04
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0016)
	ld	(hl), #0x05
;main.c:257: bit.spriteids[5] = 5;   
	ld	hl, #(_bit + 0x0005)
	ld	(hl), #0x05
;main.c:258: }
	ret
;main.c:260: UINT8 special_tile(UINT16 player_loc){
;	---------------------------------
; Function special_tile
; ---------------------------------
_special_tile::
	dec	sp
;main.c:262: rtn = 0;
	xor	a, a
	ldhl	sp,	#0
	ld	(hl), a
;main.c:266: set_bkg_tiles(player_loc%20, player_loc/20, 1, 1, blankmap);
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
;main.c:263: if (player_loc == 329){
	ldhl	sp,	#3
	ld	a, (hl)
	sub	a, #0x49
	jr	NZ, 00108$
	inc	hl
	ld	a, (hl)
	dec	a
	jr	NZ, 00108$
;main.c:265: has_key = 1;
	ld	hl, #_has_key
	ld	(hl), #0x01
;main.c:266: set_bkg_tiles(player_loc%20, player_loc/20, 1, 1, blankmap);
	ld	hl, #_blankmap
	push	hl
	ld	hl, #0x0101
	push	hl
	ld	c, e
	push	bc
	call	_set_bkg_tiles
	add	sp, #6
;main.c:267: rtn = 1;
	ldhl	sp,	#0
	ld	(hl), #0x01
	jr	00109$
00108$:
;main.c:269: else if (player_loc == 168 && has_key){
	ldhl	sp,	#3
	ld	a, (hl)
	sub	a, #0xa8
	inc	hl
	or	a, (hl)
	jr	NZ, 00104$
	ld	a, (#_has_key)
	or	a, a
	jr	Z, 00104$
;main.c:271: open_door = 1;
	ld	hl, #_open_door
	ld	(hl), #0x01
;main.c:272: set_bkg_tiles(player_loc%20, player_loc/20, 1, 1, blankmap);
	ld	hl, #_blankmap
	push	hl
	ld	hl, #0x0101
	push	hl
	ld	c, e
	push	bc
	call	_set_bkg_tiles
	add	sp, #6
;main.c:273: rtn = 1;
	ldhl	sp,	#0
	ld	(hl), #0x01
	jr	00109$
00104$:
;main.c:275: else if (player_loc == 358){
	ldhl	sp,	#3
	ld	a, (hl)
	sub	a, #0x66
	jr	NZ, 00109$
	inc	hl
	ld	a, (hl)
	dec	a
	jr	NZ, 00109$
;main.c:277: game_running = 0;
	ld	hl, #_game_running
	ld	(hl), #0x00
;main.c:278: HIDE_SPRITES;
	ldh	a, (_LCDC_REG+0)
	and	a, #0xfd
	ldh	(_LCDC_REG+0),a
;main.c:279: printf("\n \n \n \n \n \n \n \n \n      YOU WIN!!!!");
	ld	hl, #___str_0
	push	hl
	call	_printf
	add	sp, #2
;main.c:280: rtn = 1;
	ldhl	sp,	#0
	ld	(hl), #0x01
00109$:
;main.c:282: return rtn;
	ldhl	sp,	#0
	ld	e, (hl)
;main.c:283: }
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
;main.c:285: UBYTE is_walkable(unsigned char tile){
;	---------------------------------
; Function is_walkable
; ---------------------------------
_is_walkable::
	dec	sp
;main.c:286: UBYTE rtn = 0;
	xor	a, a
	ldhl	sp,	#0
	ld	(hl), a
;main.c:287: for (int i=0;i<2;i++){
	ld	bc, #0x0000
00105$:
	ld	a, c
	sub	a, #0x02
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00103$
;main.c:288: if (tile == blankmap[i]){
	ld	hl, #_blankmap
	add	hl, bc
	ld	e, (hl)
	ldhl	sp,	#3
	ld	a, (hl)
	sub	a, e
	jr	NZ, 00106$
;main.c:289: rtn = 1;
	ldhl	sp,	#0
	ld	(hl), #0x01
00106$:
;main.c:287: for (int i=0;i<2;i++){
	inc	bc
	jr	00105$
00103$:
;main.c:292: return rtn;
	ldhl	sp,	#0
	ld	e, (hl)
;main.c:293: }
	inc	sp
	ret
;main.c:295: UINT8 can_player_move(UINT16 newplayerx, UINT16 newplayery, unsigned char *bk_col, unsigned int MapHeight, unsigned int MapWidth){
;	---------------------------------
; Function can_player_move
; ---------------------------------
_can_player_move::
	add	sp, #-4
;main.c:299: indexTLx = (newplayerx/8)%MapWidth;
	ldhl	sp,#6
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	srl	d
	rr	e
	srl	d
	rr	e
	srl	d
	rr	e
	ldhl	sp,	#14
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	push	hl
	push	de
	call	__moduint
	add	sp, #4
	ld	c, e
	ld	b, d
;main.c:300: indexTLy = newplayery/8;
	ldhl	sp,#8
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	srl	d
	rr	e
	srl	d
	rr	e
	srl	d
	rr	e
;main.c:302: tileindexTL = MapWidth*indexTLy + indexTLx; // x_width * y_index + x_index
	push	bc
	push	de
	ldhl	sp,	#18
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	push	hl
	call	__mulint
	add	sp, #4
	pop	bc
	ld	a, e
	add	a, c
	ld	c, a
	ld	a, d
	adc	a, b
	ld	b, a
	inc	sp
	inc	sp
	push	bc
;main.c:304: result = 0; //special_tile(tileindexTL);
	ld	c, #0x00
;main.c:305: if (is_walkable(bk_col[tileindexTL]) && is_walkable(bk_col[tileindexTL - 1])){
;c
	ldhl	sp,#10
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	pop	hl
	push	hl
	add	hl, de
	ld	e, l
	ld	d, h
	ld	a, (de)
	push	bc
	push	af
	inc	sp
	call	_is_walkable
	inc	sp
	ld	a, e
	pop	bc
	or	a, a
	jr	Z, 00102$
	pop	de
	push	de
	ld	hl, #0x0001
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ldhl	sp,	#3
	ld	(hl-), a
;c
	ld	a, e
	ld	(hl+), a
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ldhl	sp,	#10
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
	ld	e, l
	ld	d, h
	ld	a, (de)
	push	bc
	push	af
	inc	sp
	call	_is_walkable
	inc	sp
	ld	a, e
	pop	bc
	or	a, a
	jr	Z, 00102$
;main.c:306: result = 1;
	ld	c, #0x01
00102$:
;main.c:308: if (newplayery < 16 || newplayery > 8 + MapHeight*8){
	ldhl	sp,	#8
	ld	a, (hl)
	sub	a, #0x10
	inc	hl
	ld	a, (hl)
	sbc	a, #0x00
	jr	C, 00104$
	ldhl	sp,	#12
	ld	a, (hl+)
	ld	b, (hl)
	add	a, a
	rl	b
	add	a, a
	rl	b
	add	a, a
	rl	b
	add	a, #0x08
	ld	e, a
	jr	NC, 00133$
	inc	b
00133$:
	ldhl	sp,	#8
	ld	a, e
	sub	a, (hl)
	inc	hl
	ld	a, b
	sbc	a, (hl)
	jr	NC, 00105$
00104$:
;main.c:309: result = 0;
	ld	c, #0x00
00105$:
;main.c:311: if (newplayerx < 8 || newplayerx > MapWidth*8){
	ldhl	sp,	#6
	ld	a, (hl)
	sub	a, #0x08
	inc	hl
	ld	a, (hl)
	sbc	a, #0x00
	jr	C, 00107$
	ldhl	sp,	#14
	ld	a, (hl+)
	ld	b, a
	ld	e, (hl)
	sla	b
	rl	e
	sla	b
	rl	e
	sla	b
	rl	e
	ldhl	sp,	#6
	ld	a, b
	sub	a, (hl)
	inc	hl
	ld	a, e
	sbc	a, (hl)
	jr	NC, 00108$
00107$:
;main.c:312: result = 0;
	ld	c, #0x00
00108$:
;main.c:315: return result;
	ld	e, c
;main.c:316: }
	add	sp, #4
	ret
;main.c:318: void walk_without_background_movement(INT8 move_x, INT8 move_y, UINT8 *step){
;	---------------------------------
; Function walk_without_background_movement
; ---------------------------------
_walk_without_background_movement::
	add	sp, #-3
;main.c:319: while(move_x != 0){
00104$:
;main.c:320: bit.x += (move_x > 0 ? 2 : -2);
;main.c:322: *step = (move_x > 0 ? setbit_right(*step) : setbit_left(*step));
	ldhl	sp,	#7
	ld	a, (hl+)
	ld	e, (hl)
	ldhl	sp,	#0
	ld	(hl+), a
	ld	(hl), e
;main.c:319: while(move_x != 0){
	ldhl	sp,	#5
	ld	a, (hl)
	or	a, a
	jp	Z, 00140$
;main.c:320: bit.x += (move_x > 0 ? 2 : -2);
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
;main.c:321: if (move_x % 4 == 0 && move_x != 0){
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
;main.c:322: *step = (move_x > 0 ? setbit_right(*step) : setbit_left(*step));
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
;main.c:324: move_x += (move_x > 0 ? -2 : 2);
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
;main.c:325: movegamecharacter(&bit, bit.x, bit.y);
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
;main.c:326: performantdelay(2);
	ld	a, #0x02
	push	af
	inc	sp
	call	_performantdelay
	inc	sp
	jp	00104$
;main.c:328: while (move_y != 0){
00140$:
00110$:
	ldhl	sp,	#6
	ld	a, (hl)
	or	a, a
	jp	Z, 00113$
;main.c:329: bit.y += (move_y > 0 ? 2 : -2);
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
;main.c:330: if (move_y % 4 == 0 && move_y != 0){
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
;main.c:322: *step = (move_x > 0 ? setbit_right(*step) : setbit_left(*step));
	pop	de
	push	de
	ld	a, (de)
	ld	b, a
;main.c:331: *step = (move_y >  0 ? setbit_forward(*step) : setbit_backward(*step));
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
;main.c:333: move_y += (move_y > 0 ? -2 : 2);
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
;main.c:334: movegamecharacter(&bit, bit.x, bit.y);
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
;main.c:335: performantdelay(2);
	ld	a, #0x02
	push	af
	inc	sp
	call	_performantdelay
	inc	sp
	jp	00110$
00113$:
;main.c:337: }
	add	sp, #3
	ret
;main.c:339: void walk_background_movement(INT8 move_x, INT8 move_y, UINT8 *step){
;	---------------------------------
; Function walk_background_movement
; ---------------------------------
_walk_background_movement::
	dec	sp
;main.c:340: while(move_x != 0){
00104$:
	ldhl	sp,	#3
	ld	a, (hl)
	or	a, a
	jp	Z, 00110$
;main.c:341: scroll_bkg(move_x < 0 ? -2 : 2, 0);
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
;main.c:342: if (move_x % 4 == 0 && move_x != 0){
	ldhl	sp,	#3
	ld	a, (hl)
	ld	c, a
	rla
	sbc	a, a
	ld	b, a
	ld	hl, #0x0004
	push	hl
	push	bc
;main.c:343: *step = (move_x > 0 ? setbit_right(*step) : setbit_left(*step));
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
;main.c:342: if (move_x % 4 == 0 && move_x != 0){
	ld	a, b
	or	a, c
	jr	NZ, 00102$
	ldhl	sp,	#3
	ld	a, (hl)
	or	a, a
	jr	Z, 00102$
;main.c:343: *step = (move_x > 0 ? setbit_right(*step) : setbit_left(*step));
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
;main.c:345: move_x += (move_x > 0 ? -2 : 2);
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
;main.c:346: performantdelay(2);
	ld	a, #0x02
	push	af
	inc	sp
	call	_performantdelay
	inc	sp
	jp	00104$
;main.c:348: while (move_y != 0){
00110$:
	ldhl	sp,	#4
	ld	a, (hl)
	or	a, a
	jp	Z, 00115$
;main.c:349: scroll_bkg(0, move_y < 0 ? -2 : 2);
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
;main.c:350: if (move_y % 4 == 0 && move_y != 0){
	ldhl	sp,	#4
	ld	a, (hl)
	ld	c, a
	rla
	sbc	a, a
	ld	b, a
	ld	hl, #0x0004
	push	hl
	push	bc
;main.c:351: *step = (move_y >  0 ? setbit_forward(*step) : setbit_backward(*step));
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
;main.c:350: if (move_y % 4 == 0 && move_y != 0){
	ld	a, b
	or	a, c
	jr	NZ, 00108$
	ldhl	sp,	#4
	ld	a, (hl)
	or	a, a
	jr	Z, 00108$
;main.c:351: *step = (move_y >  0 ? setbit_forward(*step) : setbit_backward(*step));
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
;main.c:353: move_y += (move_y > 0 ? -2 : 2);
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
;main.c:354: performantdelay(2);
	ld	a, #0x02
	push	af
	inc	sp
	call	_performantdelay
	inc	sp
	jp	00110$
00115$:
;main.c:356: }
	inc	sp
	ret
;main.c:358: void move(UINT8 *step, UINT16 *player_loc_x, UINT16 *player_loc_y, unsigned char *bk_col, unsigned int MapHeight, unsigned int MapWidth){
;	---------------------------------
; Function move
; ---------------------------------
_move::
	add	sp, #-10
;main.c:360: switch (joypad())
	call	_joypad
	push	hl
	ldhl	sp,	#3
	ld	(hl), e
	pop	hl
;main.c:363: if (can_player_move(*player_loc_x - tile, *player_loc_y, bk_col, MapHeight, MapWidth)){
	ldhl	sp,	#16
	ld	a, (hl+)
	ld	e, (hl)
	ldhl	sp,	#2
	ld	(hl+), a
	ld	(hl), e
	ldhl	sp,	#14
	ld	a, (hl+)
	ld	e, (hl)
	ldhl	sp,	#8
	ld	(hl+), a
	ld	(hl), e
;main.c:364: if (*player_loc_x < 96 || *player_loc_x > MapWidth*8 - 80){
	ldhl	sp,	#22
	ld	a, (hl)
	ldhl	sp,	#6
	ld	(hl), a
	ldhl	sp,	#23
	ld	a, (hl)
	ldhl	sp,	#7
	ld	(hl), a
	ld	a, #0x03
00195$:
	ldhl	sp,	#6
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ, 00195$
;main.c:373: *step = setbit_left(*step);
	ldhl	sp,	#12
	ld	a, (hl+)
	ld	e, (hl)
	ldhl	sp,	#4
	ld	(hl+), a
	ld	(hl), e
;main.c:360: switch (joypad())
	ldhl	sp,	#1
	ld	a, (hl)
	dec	a
	jp	Z,00109$
	ldhl	sp,	#1
	ld	a, (hl)
	sub	a, #0x02
	jr	Z, 00101$
;main.c:394: if (*player_loc_y < 96 || *player_loc_y > MapHeight*8 - 56){
	ldhl	sp,#20
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	sla	c
	rl	b
	sla	c
	rl	b
	sla	c
	rl	b
;main.c:360: switch (joypad())
	ldhl	sp,	#1
	ld	a, (hl)
	sub	a, #0x04
	jp	Z,00117$
	ldhl	sp,	#1
	ld	a, (hl)
	sub	a, #0x08
	jp	Z,00124$
	jp	00133$
;main.c:362: case (J_LEFT):
00101$:
;main.c:363: if (can_player_move(*player_loc_x - tile, *player_loc_y, bk_col, MapHeight, MapWidth)){
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
	ld	b, a
	ldhl	sp,#8
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
	ldhl	sp,	#22
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	push	hl
	ldhl	sp,	#22
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	push	hl
	ldhl	sp,	#22
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	push	hl
	push	bc
	push	de
	call	_can_player_move
	add	sp, #10
	ld	a, e
	or	a, a
	jr	Z, 00107$
;main.c:364: if (*player_loc_x < 96 || *player_loc_x > MapWidth*8 - 80){
	ldhl	sp,#8
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
	ld	b, a
	ld	a, c
	sub	a, #0x60
	ld	a, b
	sbc	a, #0x00
	jr	C, 00102$
	dec	hl
	dec	hl
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0050
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ldhl	sp,	#5
	ld	(hl-), a
	ld	(hl), e
	ld	a, (hl)
	sub	a, c
	inc	hl
	ld	a, (hl)
	sbc	a, b
	jr	NC, 00103$
00102$:
;main.c:365: walk_without_background_movement(-1*tile, 0, step);
	ldhl	sp,	#12
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	push	hl
	xor	a, a
	ld	d,a
	ld	e,#0xf8
	push	de
	call	_walk_without_background_movement
	add	sp, #4
	jr	00104$
00103$:
;main.c:368: walk_background_movement(-1*tile, 0, step);
	ldhl	sp,	#12
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
00104$:
;main.c:370: *player_loc_x -= tile;
	ldhl	sp,#8
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
	jp	00133$
00107$:
;main.c:373: *step = setbit_left(*step);
	ldhl	sp,#4
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	push	af
	inc	sp
	call	_setbit_left
	inc	sp
	ld	c, e
	ldhl	sp,	#4
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), c
;main.c:375: break;
	jp	00133$
;main.c:377: case (J_RIGHT):
00109$:
;main.c:378: if (can_player_move(*player_loc_x + tile, *player_loc_y, bk_col, MapHeight, MapWidth)){
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
	ld	b, a
	ldhl	sp,#8
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
	ldhl	sp,	#22
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	push	hl
	ldhl	sp,	#22
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	push	hl
	ldhl	sp,	#22
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	push	hl
	push	bc
	push	de
	call	_can_player_move
	add	sp, #10
	ld	a, e
	or	a, a
	jr	Z, 00115$
;main.c:379: if (*player_loc_x < 88 || *player_loc_x > MapWidth*8 - 88){
	ldhl	sp,#8
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
	ld	b, a
	ld	a, c
	sub	a, #0x58
	ld	a, b
	sbc	a, #0x00
	jr	C, 00110$
	dec	hl
	dec	hl
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0058
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ldhl	sp,	#5
	ld	(hl-), a
	ld	(hl), e
	ld	a, (hl)
	sub	a, c
	inc	hl
	ld	a, (hl)
	sbc	a, b
	jr	NC, 00111$
00110$:
;main.c:380: walk_without_background_movement(tile, 0, step);
	ldhl	sp,	#12
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	push	hl
	xor	a, a
	ld	d,a
	ld	e,#0x08
	push	de
	call	_walk_without_background_movement
	add	sp, #4
	jr	00112$
00111$:
;main.c:383: walk_background_movement(tile, 0, step);
	ldhl	sp,	#12
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
00112$:
;main.c:385: *player_loc_x += tile;
	ldhl	sp,#8
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
	jr	NC, 00201$
	inc	c
00201$:
	dec	hl
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, b
	ld	(hl+), a
	ld	(hl), c
	jp	00133$
00115$:
;main.c:388: *step = setbit_right(*step);
	ldhl	sp,#4
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	push	af
	inc	sp
	call	_setbit_right
	inc	sp
	ld	c, e
	ldhl	sp,	#4
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), c
;main.c:390: break;
	jp	00133$
;main.c:392: case (J_UP):
00117$:
;main.c:393: if (can_player_move(*player_loc_x, *player_loc_y - tile, bk_col, MapHeight, MapWidth)){
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ldhl	sp,	#0
	ld	(hl+), a
	inc	de
	ld	a, (de)
	ld	(hl), a
	pop	de
	push	de
	ld	hl, #0x0008
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ldhl	sp,	#7
	ld	(hl-), a
	ld	(hl), e
	ldhl	sp,#8
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	dec	hl
	ld	(hl+), a
	inc	de
	ld	a, (de)
	ld	(hl), a
	push	bc
	ldhl	sp,	#24
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	push	hl
	ldhl	sp,	#24
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	push	hl
	ldhl	sp,	#24
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	push	hl
	ldhl	sp,	#14
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	push	hl
	ldhl	sp,	#18
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	push	hl
	call	_can_player_move
	add	sp, #10
	ld	a, e
	pop	bc
	or	a, a
	jr	Z, 00123$
;main.c:394: if (*player_loc_y < 96 || *player_loc_y > MapHeight*8 - 56){
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	l, a
	inc	de
	ld	a, (de)
	ld	h, a
	ld	a, l
	sub	a, #0x60
	ld	a, h
	sbc	a, #0x00
	jr	C, 00118$
	ld	a, c
	add	a, #0xc8
	ld	c, a
	ld	a, b
	adc	a, #0xff
	ld	b, a
	ld	a, c
	sub	a, l
	ld	a, b
	sbc	a, h
	jr	NC, 00119$
00118$:
;main.c:395: walk_without_background_movement(0, -1*tile, step);
	ldhl	sp,	#12
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
	jr	00120$
00119$:
;main.c:398: walk_background_movement(0, -1*tile, step);
	ldhl	sp,	#12
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
00120$:
;main.c:400: *player_loc_y -= 8;
	ldhl	sp,#2
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
00123$:
;main.c:402: *step = setbit_backward(*step);
	ldhl	sp,#4
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	push	af
	inc	sp
	call	_setbit_backward
	inc	sp
	ld	c, e
	ldhl	sp,	#4
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), c
;main.c:403: break;
	jp	00133$
;main.c:405: case (J_DOWN):
00124$:
;main.c:406: if (can_player_move(*player_loc_x, *player_loc_y + tile, bk_col, MapHeight, MapWidth)){
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	inc	hl
	ld	(hl+), a
	inc	de
	ld	a, (de)
;c
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0008
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#8
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#7
	ld	(hl+), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	dec	hl
	ld	(hl+), a
	inc	de
	ld	a, (de)
	ld	(hl), a
	push	bc
	ldhl	sp,	#24
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	push	hl
	ldhl	sp,	#24
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	push	hl
	ldhl	sp,	#24
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	push	hl
	ldhl	sp,	#14
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	push	hl
	ldhl	sp,	#18
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	push	hl
	call	_can_player_move
	add	sp, #10
	ld	a, e
	pop	bc
	or	a, a
	jr	Z, 00130$
;main.c:407: if (*player_loc_y < 88 || *player_loc_y > MapHeight*8 - 64){
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	l, a
	inc	de
	ld	a, (de)
	ld	h, a
	ld	a, l
	sub	a, #0x58
	ld	a, h
	sbc	a, #0x00
	jr	C, 00125$
	ld	a, c
	add	a, #0xc0
	ld	c, a
	ld	a, b
	adc	a, #0xff
	ld	b, a
	ld	a, c
	sub	a, l
	ld	a, b
	sbc	a, h
	jr	NC, 00126$
00125$:
;main.c:408: walk_without_background_movement(0, tile, step);
	ldhl	sp,	#12
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
	jr	00127$
00126$:
;main.c:411: walk_background_movement(0, tile, step);
	ldhl	sp,	#12
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
00127$:
;main.c:413: *player_loc_y += 8;
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	l, a
	inc	de
	ld	a, (de)
	ld	b, a
	ld	a, l
	add	a, #0x08
	ld	c, a
	jr	NC, 00202$
	inc	b
00202$:
	ldhl	sp,	#2
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
00130$:
;main.c:415: reset_bit();
	call	_reset_bit
;main.c:420: }
00133$:
;main.c:421: }
	add	sp, #10
	ret
;main.c:423: void setup_map(UWORD *pallete, unsigned char *map_data, unsigned char *tiles_1, unsigned char *tiles_0, int character_x, int character_y, int data_size, unsigned int MapHeight, unsigned int MapWidth){
;	---------------------------------
; Function setup_map
; ---------------------------------
_setup_map::
;main.c:425: set_bkg_palette(0, 8, pallete);
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
;main.c:426: set_bkg_data(0, data_size, map_data);
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
;main.c:427: VBK_REG = 1;
	ld	a, #0x01
	ldh	(_VBK_REG+0),a
;main.c:428: set_bkg_tiles(0, 0, MapWidth, MapHeight, tiles_1);
	ldhl	sp,	#16
	ld	a, (hl+)
	ld	b, a
	inc	hl
	ld	c, (hl)
	ldhl	sp,	#6
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	push	hl
	push	bc
	inc	sp
	ld	a, c
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_set_bkg_tiles
	add	sp, #6
;main.c:429: VBK_REG = 0;
	ld	a, #0x00
	ldh	(_VBK_REG+0),a
;main.c:430: set_bkg_tiles(0, 0, MapWidth, MapHeight, tiles_0);
	ldhl	sp,	#8
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	push	hl
	push	bc
	xor	a, a
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_set_bkg_tiles
	add	sp, #6
;main.c:431: SHOW_BKG;
	ldh	a, (_LCDC_REG+0)
	or	a, #0x01
	ldh	(_LCDC_REG+0),a
;main.c:434: set_sprite_palette(0,8, &spritepalette[0]);
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
;main.c:435: set_sprite_data(0, 43, GameSprites);
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
;main.c:436: setupbit(character_x, character_y);
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
;main.c:437: player_location[0] = character_x;
	ld	de, #_player_location
	ldhl	sp,	#10
	ld	a, (hl)
	ld	(de), a
	inc	de
	inc	hl
	ld	a, (hl)
	ld	(de), a
;main.c:438: player_location[1] = character_y;
	ld	de, #(_player_location + 0x0002)
	inc	hl
	ld	a, (hl)
	ld	(de), a
	inc	de
	inc	hl
	ld	a, (hl)
	ld	(de), a
;main.c:439: SHOW_SPRITES;
	ldh	a, (_LCDC_REG+0)
	or	a, #0x02
	ldh	(_LCDC_REG+0),a
;main.c:440: DISPLAY_ON;
	ldh	a, (_LCDC_REG+0)
	or	a, #0x80
	ldh	(_LCDC_REG+0),a
;main.c:441: }
	ret
;main.c:443: void main(){
;	---------------------------------
; Function main
; ---------------------------------
_main::
	dec	sp
;main.c:444: unsigned char* bk_collision = Lvl1BackgroundMapPLN0;
;main.c:445: unsigned char* bk_tiles = Lvl1BackgroundMapPLN1;
;main.c:449: setup_map(backgroundpalette, Lvl1BackgroundData, bk_tiles, bk_collision, 88, 88, 127, MapHeight, MapWidth);
	ld	hl, #0x0017
	push	hl
	ld	l, #0x14
	push	hl
	ld	l, #0x7f
	push	hl
	ld	l, #0x58
	push	hl
	ld	l, #0x58
	push	hl
	ld	hl, #_Lvl1BackgroundMapPLN0
	push	hl
	ld	hl, #_Lvl1BackgroundMapPLN1
	push	hl
	ld	hl, #_Lvl1BackgroundData
	push	hl
	ld	hl, #_backgroundpalette
	push	hl
	call	_setup_map
	add	sp, #18
;main.c:451: game_running = 1;
	ld	hl, #_game_running
	ld	(hl), #0x01
;main.c:452: UINT8 step = 0;
	xor	a, a
	ldhl	sp,	#0
	ld	(hl), a
;main.c:454: while(game_running){
00101$:
	ld	a, (#_game_running)
	or	a, a
	jr	Z, 00104$
;main.c:455: move(&step, &player_location[0], &player_location[1], bk_collision, MapHeight, MapWidth);
	ldhl	sp,	#0
	ld	c, l
	ld	b, h
	ld	hl, #0x0017
	push	hl
	ld	l, #0x14
	push	hl
	ld	hl, #_Lvl1BackgroundMapPLN0
	push	hl
	ld	hl, #(_player_location + 0x0002)
	push	hl
	ld	hl, #_player_location
	push	hl
	push	bc
	call	_move
	add	sp, #12
;main.c:456: delay(100);
	ld	hl, #0x0064
	push	hl
	call	_delay
	add	sp, #2
	jr	00101$
00104$:
;main.c:460: }
	inc	sp
	ret
	.area _CODE
	.area _CABS (ABS)
