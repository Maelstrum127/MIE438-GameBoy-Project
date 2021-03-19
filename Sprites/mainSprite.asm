;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.7 #12016 (MINGW64)
;--------------------------------------------------------
	.module mainSprite
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _setfrog_bounce
	.globl _setbit_left
	.globl _setbit_right
	.globl _setbit_backward
	.globl _setbit_forward
	.globl _setupfrog
	.globl _setupbit
	.globl _movegamecharacter_frog
	.globl _movegamecharacter_bit
	.globl _performantdelay
	.globl _set_sprite_data
	.globl _set_bkg_tiles
	.globl _set_bkg_data
	.globl _wait_vbl_done
	.globl _joypad
	.globl _set_sprite_palette
	.globl _set_bkg_palette
	.globl _spritesize
	.globl _frog
	.globl _bit
	.globl _backgroundpalette
	.globl _spritepalette
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_bit::
	.ds 10
_frog::
	.ds 8
_spritesize::
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
;mainSprite.c:13: UBYTE spritesize = 8;
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
;mainSprite.c:69: void performantdelay(UINT8 numloops){
;	---------------------------------
; Function performantdelay
; ---------------------------------
_performantdelay::
;mainSprite.c:71: for(i=0;i<numloops;i++){
	ld	c, #0x00
00103$:
	ld	a, c
	ldhl	sp,	#2
	sub	a, (hl)
	ret	NC
;mainSprite.c:72: wait_vbl_done();
	call	_wait_vbl_done
;mainSprite.c:71: for(i=0;i<numloops;i++){
	inc	c
;mainSprite.c:74: }
	jr	00103$
_spritepalette:
	.dw #0x17bc
	.dw #0x22e7
	.dw #0x19c4
	.dw #0x14e0
	.dw #0x7fff
	.dw #0x3def
	.dw #0x6739
	.dw #0x0000
	.dw #0x7fff
	.dw #0x0221
	.dw #0x6f7b
	.dw #0x0000
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
	.dw #0x0221
	.dw #0x0547
	.dw #0x0000
	.dw #0x7fff
	.dw #0x001f
	.dw #0x000f
	.dw #0x0000
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
;mainSprite.c:76: void movegamecharacter_bit(struct GameCharacter_rec* character, UINT8 x, UINT8 y){
;	---------------------------------
; Function movegamecharacter_bit
; ---------------------------------
_movegamecharacter_bit::
	add	sp, #-4
;mainSprite.c:77: move_sprite(character->spriteids[0], x, y);
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
;mainSprite.c:78: move_sprite(character->spriteids[1], x + spritesize, y);
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
;mainSprite.c:79: move_sprite(character->spriteids[2], x, y + spritesize);
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
;mainSprite.c:80: move_sprite(character->spriteids[3], x + spritesize, y + spritesize);
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
;mainSprite.c:81: move_sprite(character->spriteids[4], x, y + 2*spritesize);
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
;mainSprite.c:82: move_sprite(character->spriteids[5], x + spritesize, y + 2*spritesize);
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
;mainSprite.c:82: move_sprite(character->spriteids[5], x + spritesize, y + 2*spritesize);
;mainSprite.c:83: }
	add	sp, #4
	ret
;mainSprite.c:85: void movegamecharacter_frog(struct GameCharacter_square* character, UINT8 x, UINT8 y){
;	---------------------------------
; Function movegamecharacter_frog
; ---------------------------------
_movegamecharacter_frog::
	add	sp, #-3
;mainSprite.c:86: move_sprite(character->spriteids[0], x, y);
	ldhl	sp,	#8
	ld	a, (hl)
	ldhl	sp,	#0
	ld	(hl), a
	ldhl	sp,	#7
	ld	a, (hl)
	ldhl	sp,	#1
	ld	(hl), a
	ldhl	sp,#5
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
;mainSprite.c:87: move_sprite(character->spriteids[1], x + spritesize, y);
	ld	a, (hl)
	ld	hl, #_spritesize
	add	a, (hl)
	ld	l, e
	ld	h, d
	inc	hl
	ld	c, (hl)
	ldhl	sp,	#2
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
	ld	a, (hl+)
	ld	(bc), a
	inc	bc
	inc	hl
	ld	a, (hl)
	ld	(bc), a
;mainSprite.c:88: move_sprite(character->spriteids[2], x, y + spritesize);
	dec	hl
	dec	hl
	ld	a, (hl)
	ld	hl, #_spritesize
	add	a, (hl)
	ldhl	sp,	#2
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
	ldhl	sp,	#2
	ld	a, (hl)
	ld	(bc), a
	inc	bc
	dec	hl
	ld	a, (hl)
	ld	(bc), a
;mainSprite.c:89: move_sprite(character->spriteids[3], x + spritesize, y + spritesize);
	dec	hl
	ld	a, (hl)
	ld	hl, #_spritesize
	add	a, (hl)
	ld	b, a
	ldhl	sp,	#1
	ld	a, (hl)
	ld	hl, #_spritesize
	add	a, (hl)
	ld	c, a
	inc	de
	inc	de
	inc	de
	ld	a, (de)
	ld	e, a
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
;mainSprite.c:89: move_sprite(character->spriteids[3], x + spritesize, y + spritesize);
;mainSprite.c:90: }
	add	sp, #3
	ret
;mainSprite.c:92: void setupbit(){
;	---------------------------------
; Function setupbit
; ---------------------------------
_setupbit::
;mainSprite.c:93: bit.x = 80;
	ld	bc, #_bit+0
	ld	hl, #(_bit + 0x0006)
	ld	(hl), #0x50
;mainSprite.c:94: bit.y = 130;
	ld	hl, #(_bit + 0x0007)
	ld	(hl), #0x82
;mainSprite.c:95: bit.height = 24;
	ld	hl, #(_bit + 0x0009)
	ld	(hl), #0x18
;mainSprite.c:96: bit.width = 16;
	ld	hl, #(_bit + 0x0008)
	ld	(hl), #0x10
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0002)
	ld	(hl), #0x00
;mainSprite.c:100: bit.spriteids[0] = 0;
	xor	a, a
	ld	(bc), a
;c:/gbdk/include/gb/gb.h:1050: shadow_OAM[nb].prop=prop;
	ld	hl, #(_shadow_OAM + 0x0003)
	ld	(hl), #0x04
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0006)
	ld	(hl), #0x01
;mainSprite.c:103: bit.spriteids[1] = 1;
	ld	hl, #(_bit + 0x0001)
	ld	(hl), #0x01
;c:/gbdk/include/gb/gb.h:1050: shadow_OAM[nb].prop=prop;
	ld	hl, #(_shadow_OAM + 0x0007)
	ld	(hl), #0x04
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x000a)
	ld	(hl), #0x02
;mainSprite.c:106: bit.spriteids[2] = 2;
	ld	hl, #(_bit + 0x0002)
	ld	(hl), #0x02
;c:/gbdk/include/gb/gb.h:1050: shadow_OAM[nb].prop=prop;
	ld	hl, #(_shadow_OAM + 0x000b)
	ld	(hl), #0x01
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x000e)
	ld	(hl), #0x03
;mainSprite.c:109: bit.spriteids[3] = 3;
	ld	hl, #(_bit + 0x0003)
	ld	(hl), #0x03
;c:/gbdk/include/gb/gb.h:1050: shadow_OAM[nb].prop=prop;
	ld	hl, #(_shadow_OAM + 0x000f)
	ld	(hl), #0x01
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0012)
	ld	(hl), #0x04
;mainSprite.c:112: bit.spriteids[4] = 4; 
	ld	hl, #(_bit + 0x0004)
	ld	(hl), #0x04
;c:/gbdk/include/gb/gb.h:1050: shadow_OAM[nb].prop=prop;
	ld	hl, #(_shadow_OAM + 0x0013)
	ld	(hl), #0x07
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0016)
	ld	(hl), #0x05
;mainSprite.c:115: bit.spriteids[5] = 5; 
	ld	hl, #(_bit + 0x0005)
	ld	(hl), #0x05
;c:/gbdk/include/gb/gb.h:1050: shadow_OAM[nb].prop=prop;
	ld	hl, #(_shadow_OAM + 0x0017)
	ld	(hl), #0x07
;mainSprite.c:118: movegamecharacter_bit(&bit, bit.x, bit.y); 
	ld	a, (#(_bit + 0x0007) + 0)
	ld	hl, #(_bit + 0x0006)
	ld	h, (hl)
	push	af
	inc	sp
	push	hl
	inc	sp
	push	bc
	call	_movegamecharacter_bit
	add	sp, #4
;mainSprite.c:119: }
	ret
;mainSprite.c:121: void setupfrog(){
;	---------------------------------
; Function setupfrog
; ---------------------------------
_setupfrog::
;mainSprite.c:122: frog.x = 80;
	ld	bc, #_frog+0
	ld	hl, #(_frog + 0x0004)
	ld	(hl), #0x50
;mainSprite.c:123: frog.y = 80;
	ld	hl, #(_frog + 0x0005)
	ld	(hl), #0x50
;mainSprite.c:124: frog.height = 16;
	ld	hl, #(_frog + 0x0007)
	ld	(hl), #0x10
;mainSprite.c:125: frog.width = 16;
	ld	hl, #(_frog + 0x0006)
	ld	(hl), #0x10
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x001a)
	ld	(hl), #0x2a
;mainSprite.c:129: frog.spriteids[0] = 6;
	ld	a, #0x06
	ld	(bc), a
;c:/gbdk/include/gb/gb.h:1050: shadow_OAM[nb].prop=prop;
	ld	hl, #(_shadow_OAM + 0x001b)
	ld	(hl), #0x02
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x001e)
	ld	(hl), #0x2b
;mainSprite.c:132: frog.spriteids[1] = 7;
	ld	hl, #(_frog + 0x0001)
	ld	(hl), #0x07
;c:/gbdk/include/gb/gb.h:1050: shadow_OAM[nb].prop=prop;
	ld	hl, #(_shadow_OAM + 0x001f)
	ld	(hl), #0x02
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0022)
	ld	(hl), #0x2c
;mainSprite.c:135: frog.spriteids[2] = 8;
	ld	hl, #(_frog + 0x0002)
	ld	(hl), #0x08
;c:/gbdk/include/gb/gb.h:1050: shadow_OAM[nb].prop=prop;
	ld	hl, #(_shadow_OAM + 0x0023)
	ld	(hl), #0x06
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0026)
	ld	(hl), #0x2d
;mainSprite.c:138: frog.spriteids[3] = 9;
	ld	hl, #(_frog + 0x0003)
	ld	(hl), #0x09
;c:/gbdk/include/gb/gb.h:1050: shadow_OAM[nb].prop=prop;
	ld	hl, #(_shadow_OAM + 0x0027)
	ld	(hl), #0x06
;mainSprite.c:141: movegamecharacter_frog(&frog, frog.x, frog.y); 
	ld	a, (#(_frog + 0x0005) + 0)
	ld	hl, #(_frog + 0x0004)
	ld	h, (hl)
	push	af
	inc	sp
	push	hl
	inc	sp
	push	bc
	call	_movegamecharacter_frog
	add	sp, #4
;mainSprite.c:142: }
	ret
;mainSprite.c:144: UINT8 setbit_forward(UINT8 step){
;	---------------------------------
; Function setbit_forward
; ---------------------------------
_setbit_forward::
;mainSprite.c:145: if (step == 1){
	ldhl	sp,	#2
	ld	a, (hl)
	dec	a
	jr	NZ, 00102$
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0002)
	ld	(hl), #0x00
	ld	hl, #(_shadow_OAM + 0x0006)
	ld	(hl), #0x01
	ld	hl, #(_shadow_OAM + 0x000a)
	ld	(hl), #0x02
	ld	hl, #(_shadow_OAM + 0x000e)
	ld	(hl), #0x03
	ld	hl, #(_shadow_OAM + 0x0012)
	ld	(hl), #0x06
	ld	hl, #(_shadow_OAM + 0x0016)
	ld	(hl), #0x07
;mainSprite.c:151: set_sprite_tile(5,7);
00102$:
;mainSprite.c:153: if (step == 0){
	ldhl	sp,	#2
	ld	a, (hl)
	or	a, a
	jr	NZ, 00104$
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0002)
	ld	(hl), #0x00
	ld	hl, #(_shadow_OAM + 0x0006)
	ld	(hl), #0x01
	ld	hl, #(_shadow_OAM + 0x000a)
	ld	(hl), #0x02
	ld	hl, #(_shadow_OAM + 0x000e)
	ld	(hl), #0x03
	ld	hl, #(_shadow_OAM + 0x0012)
	ld	(hl), #0x08
	ld	hl, #(_shadow_OAM + 0x0016)
	ld	(hl), #0x09
;mainSprite.c:159: set_sprite_tile(5,9);  
00104$:
;mainSprite.c:161: return (step + 1)%2;
	ldhl	sp,	#2
	ld	c, (hl)
	ld	b, #0x00
	inc	bc
	ld	hl, #0x0002
	push	hl
	push	bc
	call	__modsint
	add	sp, #4
;mainSprite.c:162: }
	ret
;mainSprite.c:164: UINT8 setbit_backward(UINT8 step){
;	---------------------------------
; Function setbit_backward
; ---------------------------------
_setbit_backward::
;mainSprite.c:165: if (step == 1){
	ldhl	sp,	#2
	ld	a, (hl)
	dec	a
	jr	NZ, 00102$
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0002)
	ld	(hl), #0x0a
	ld	hl, #(_shadow_OAM + 0x0006)
	ld	(hl), #0x0b
	ld	hl, #(_shadow_OAM + 0x000a)
	ld	(hl), #0x0c
	ld	hl, #(_shadow_OAM + 0x000e)
	ld	(hl), #0x0d
	ld	hl, #(_shadow_OAM + 0x0012)
	ld	(hl), #0x0e
	ld	hl, #(_shadow_OAM + 0x0016)
	ld	(hl), #0x0f
;mainSprite.c:171: set_sprite_tile(5,15);
00102$:
;mainSprite.c:173: if (step == 0){
	ldhl	sp,	#2
	ld	a, (hl)
	or	a, a
	jr	NZ, 00104$
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0002)
	ld	(hl), #0x0a
	ld	hl, #(_shadow_OAM + 0x0006)
	ld	(hl), #0x0b
	ld	hl, #(_shadow_OAM + 0x000a)
	ld	(hl), #0x0c
	ld	hl, #(_shadow_OAM + 0x000e)
	ld	(hl), #0x0d
	ld	hl, #(_shadow_OAM + 0x0012)
	ld	(hl), #0x10
	ld	hl, #(_shadow_OAM + 0x0016)
	ld	(hl), #0x11
;mainSprite.c:179: set_sprite_tile(5,17);  
00104$:
;mainSprite.c:181: return (step + 1)%2;
	ldhl	sp,	#2
	ld	c, (hl)
	ld	b, #0x00
	inc	bc
	ld	hl, #0x0002
	push	hl
	push	bc
	call	__modsint
	add	sp, #4
;mainSprite.c:182: }
	ret
;mainSprite.c:184: UINT8 setbit_right(UINT8 step){
;	---------------------------------
; Function setbit_right
; ---------------------------------
_setbit_right::
;mainSprite.c:185: if (step == 1){
	ldhl	sp,	#2
	ld	a, (hl)
	dec	a
	jr	NZ, 00102$
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0002)
	ld	(hl), #0x12
	ld	hl, #(_shadow_OAM + 0x0006)
	ld	(hl), #0x13
	ld	hl, #(_shadow_OAM + 0x000a)
	ld	(hl), #0x14
	ld	hl, #(_shadow_OAM + 0x000e)
	ld	(hl), #0x15
	ld	hl, #(_shadow_OAM + 0x0012)
	ld	(hl), #0x16
	ld	hl, #(_shadow_OAM + 0x0016)
	ld	(hl), #0x17
;mainSprite.c:191: set_sprite_tile(5,23);
00102$:
;mainSprite.c:193: if (step == 0){
	ldhl	sp,	#2
	ld	a, (hl)
	or	a, a
	jr	NZ, 00104$
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0002)
	ld	(hl), #0x1e
	ld	hl, #(_shadow_OAM + 0x0006)
	ld	(hl), #0x1f
	ld	hl, #(_shadow_OAM + 0x000a)
	ld	(hl), #0x20
	ld	hl, #(_shadow_OAM + 0x000e)
	ld	(hl), #0x21
	ld	hl, #(_shadow_OAM + 0x0012)
	ld	(hl), #0x22
	ld	hl, #(_shadow_OAM + 0x0016)
	ld	(hl), #0x23
;mainSprite.c:199: set_sprite_tile(5,35);  
00104$:
;mainSprite.c:201: return (step + 1)%2;
	ldhl	sp,	#2
	ld	c, (hl)
	ld	b, #0x00
	inc	bc
	ld	hl, #0x0002
	push	hl
	push	bc
	call	__modsint
	add	sp, #4
;mainSprite.c:202: }
	ret
;mainSprite.c:203: UINT8 setbit_left(UINT8 step){
;	---------------------------------
; Function setbit_left
; ---------------------------------
_setbit_left::
;mainSprite.c:204: if (step == 1){
	ldhl	sp,	#2
	ld	a, (hl)
	dec	a
	jr	NZ, 00102$
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0002)
	ld	(hl), #0x18
	ld	hl, #(_shadow_OAM + 0x0006)
	ld	(hl), #0x19
	ld	hl, #(_shadow_OAM + 0x000a)
	ld	(hl), #0x1a
	ld	hl, #(_shadow_OAM + 0x000e)
	ld	(hl), #0x1b
	ld	hl, #(_shadow_OAM + 0x0012)
	ld	(hl), #0x1c
	ld	hl, #(_shadow_OAM + 0x0016)
	ld	(hl), #0x1d
;mainSprite.c:210: set_sprite_tile(5,29);
00102$:
;mainSprite.c:212: if (step == 0){
	ldhl	sp,	#2
	ld	a, (hl)
	or	a, a
	jr	NZ, 00104$
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0002)
	ld	(hl), #0x24
	ld	hl, #(_shadow_OAM + 0x0006)
	ld	(hl), #0x25
	ld	hl, #(_shadow_OAM + 0x000a)
	ld	(hl), #0x26
	ld	hl, #(_shadow_OAM + 0x000e)
	ld	(hl), #0x27
	ld	hl, #(_shadow_OAM + 0x0012)
	ld	(hl), #0x28
	ld	hl, #(_shadow_OAM + 0x0016)
	ld	(hl), #0x29
;mainSprite.c:218: set_sprite_tile(5,41);  
00104$:
;mainSprite.c:220: return (step + 1)%2;
	ldhl	sp,	#2
	ld	c, (hl)
	ld	b, #0x00
	inc	bc
	ld	hl, #0x0002
	push	hl
	push	bc
	call	__modsint
	add	sp, #4
;mainSprite.c:221: }
	ret
;mainSprite.c:223: UINT8 setfrog_bounce(UINT8 step){
;	---------------------------------
; Function setfrog_bounce
; ---------------------------------
_setfrog_bounce::
;mainSprite.c:224: if (step == 1){
	ldhl	sp,	#2
	ld	a, (hl)
	dec	a
	jr	NZ, 00102$
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x001a)
	ld	(hl), #0x2a
	ld	hl, #(_shadow_OAM + 0x001e)
	ld	(hl), #0x2b
;mainSprite.c:226: set_sprite_tile(7,43);
00102$:
;mainSprite.c:228: if (step == 0){
	ldhl	sp,	#2
	ld	a, (hl)
	or	a, a
	jr	NZ, 00104$
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x001a)
	ld	(hl), #0x2e
	ld	hl, #(_shadow_OAM + 0x001e)
	ld	(hl), #0x2f
;mainSprite.c:230: set_sprite_tile(7,47);
00104$:
;mainSprite.c:232: return (step + 1)%2; 
	ldhl	sp,	#2
	ld	c, (hl)
	ld	b, #0x00
	inc	bc
	ld	hl, #0x0002
	push	hl
	push	bc
	call	__modsint
	add	sp, #4
;mainSprite.c:233: }
	ret
;mainSprite.c:235: void main(){
;	---------------------------------
; Function main
; ---------------------------------
_main::
	dec	sp
;mainSprite.c:236: UINT8 step = 0;
	xor	a, a
	ldhl	sp,	#0
	ld	(hl), a
;mainSprite.c:238: set_bkg_palette(0, 7, &backgroundpalette[0]);
	ld	hl, #_backgroundpalette
	push	hl
	ld	a, #0x07
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_set_bkg_palette
	add	sp, #4
;mainSprite.c:241: set_bkg_data(0, 14, BackgroundData);
	ld	hl, #_BackgroundData
	push	hl
	ld	a, #0x0e
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_set_bkg_data
	add	sp, #4
;mainSprite.c:244: VBK_REG = 1;
	ld	a, #0x01
	ldh	(_VBK_REG+0),a
;mainSprite.c:246: set_bkg_tiles(0, 0, BackgroundMapWidth, BackgroundMapHeight, BackgroundMapPLN1);
	ld	hl, #_BackgroundMapPLN1
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
;mainSprite.c:248: VBK_REG = 0;
	ld	a, #0x00
	ldh	(_VBK_REG+0),a
;mainSprite.c:250: set_bkg_tiles(0, 0, BackgroundMapWidth, BackgroundMapHeight, BackgroundMapPLN0);
	ld	hl, #_BackgroundMapPLN0
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
;mainSprite.c:252: set_sprite_palette(0, 8, &spritepalette[0]);
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
;mainSprite.c:254: set_sprite_data(0, 50, GameSprites);
	ld	hl, #_GameSprites
	push	hl
	ld	a, #0x32
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_set_sprite_data
	add	sp, #4
;mainSprite.c:256: setupbit();
	call	_setupbit
;mainSprite.c:257: setupfrog();
	call	_setupfrog
;mainSprite.c:259: SHOW_SPRITES;
	ldh	a, (_LCDC_REG+0)
	or	a, #0x02
	ldh	(_LCDC_REG+0),a
;mainSprite.c:260: SHOW_BKG;
	ldh	a, (_LCDC_REG+0)
	or	a, #0x01
	ldh	(_LCDC_REG+0),a
;mainSprite.c:261: DISPLAY_ON;
	ldh	a, (_LCDC_REG+0)
	or	a, #0x80
	ldh	(_LCDC_REG+0),a
;mainSprite.c:263: while(1){
00110$:
;mainSprite.c:264: if (joypad() & J_LEFT){
	call	_joypad
	bit	1, e
	jr	Z, 00102$
;mainSprite.c:265: bit.x -=8;
	ld	bc, #_bit + 6
	ld	a, (bc)
	add	a, #0xf8
	ld	(bc), a
;mainSprite.c:266: step = setbit_left(step);
	push	bc
	ldhl	sp,	#2
	ld	a, (hl)
	push	af
	inc	sp
	call	_setbit_left
	inc	sp
	pop	bc
	ldhl	sp,	#0
	ld	(hl), e
;mainSprite.c:267: movegamecharacter_bit(&bit, bit.x, bit.y);
	ld	hl, #_bit + 7
	ld	e, (hl)
	ld	a, (bc)
	ld	c, a
	ld	b, e
	push	bc
	ld	hl, #_bit
	push	hl
	call	_movegamecharacter_bit
	add	sp, #4
00102$:
;mainSprite.c:269: if (joypad() & J_RIGHT){
	call	_joypad
	ld	a, e
	rrca
	jr	NC, 00104$
;mainSprite.c:270: bit.x += 8;
	ld	bc, #_bit + 6
	ld	a, (bc)
	add	a, #0x08
	ld	(bc), a
;mainSprite.c:271: step = setbit_right(step);
	push	bc
	ldhl	sp,	#2
	ld	a, (hl)
	push	af
	inc	sp
	call	_setbit_right
	inc	sp
	pop	bc
	ldhl	sp,	#0
	ld	(hl), e
;mainSprite.c:272: movegamecharacter_bit(&bit, bit.x, bit.y);
	ld	hl, #_bit + 7
	ld	d, (hl)
	ld	a, (bc)
	ld	e, a
	push	de
	ld	hl, #_bit
	push	hl
	call	_movegamecharacter_bit
	add	sp, #4
00104$:
;mainSprite.c:274: if (joypad() & J_UP){
	call	_joypad
	bit	2, e
	jr	Z, 00106$
;mainSprite.c:275: bit.y -= 8;
	ld	bc, #_bit + 7
	ld	a, (bc)
	add	a, #0xf8
	ld	(bc), a
;mainSprite.c:276: step = setbit_backward(step);
	push	bc
	ldhl	sp,	#2
	ld	a, (hl)
	push	af
	inc	sp
	call	_setbit_backward
	inc	sp
	pop	bc
	ldhl	sp,	#0
	ld	(hl), e
;mainSprite.c:277: movegamecharacter_bit(&bit, bit.x, bit.y);
	ld	a, (bc)
	ld	b, a
	ld	hl, #_bit + 6
	ld	c, (hl)
	push	bc
	ld	hl, #_bit
	push	hl
	call	_movegamecharacter_bit
	add	sp, #4
00106$:
;mainSprite.c:279: if (joypad() & J_DOWN){
	call	_joypad
	bit	3, e
	jr	Z, 00108$
;mainSprite.c:280: bit.y += 8;
	ld	bc, #_bit + 7
	ld	a, (bc)
	add	a, #0x08
	ld	(bc), a
;mainSprite.c:281: step = setbit_forward(step);
	push	bc
	ldhl	sp,	#2
	ld	a, (hl)
	push	af
	inc	sp
	call	_setbit_forward
	inc	sp
	pop	bc
	ldhl	sp,	#0
	ld	(hl), e
;mainSprite.c:282: movegamecharacter_bit(&bit, bit.x, bit.y);
	ld	a, (bc)
	ld	c, a
	ld	hl, #(_bit + 0x0006)
	ld	l, (hl)
	ld	a, c
	push	af
	ld	a, l
	inc	sp
	push	af
	inc	sp
	ld	hl, #_bit
	push	hl
	call	_movegamecharacter_bit
	add	sp, #4
00108$:
;mainSprite.c:285: step = setfrog_bounce(step);
	ldhl	sp,	#0
	ld	a, (hl)
	push	af
	inc	sp
	call	_setfrog_bounce
	inc	sp
	ldhl	sp,	#0
	ld	(hl), e
;mainSprite.c:286: performantdelay(5);
	ld	a, #0x05
	push	af
	inc	sp
	call	_performantdelay
	inc	sp
	jp	00110$
;mainSprite.c:288: }
	inc	sp
	ret
	.area _CODE
	.area _CABS (ABS)
