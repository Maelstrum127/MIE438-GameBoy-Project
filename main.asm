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
	.globl _animate
	.globl _move
	.globl _move_background_with_animation
	.globl _animate_sprite
	.globl _can_player_move
	.globl _special_tile
	.globl _printf
	.globl _set_sprite_data
	.globl _set_bkg_tiles
	.globl _set_bkg_data
	.globl _wait_vbl_done
	.globl _joypad
	.globl _delay
	.globl _set_bkg_palette
	.globl _game_running
	.globl _open_door
	.globl _has_key
	.globl _playerlocation
	.globl _Face2
	.globl _backgroundpalette
	.globl _blankmap
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_Face2::
	.ds 64
_playerlocation::
	.ds 4
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
;Face2.c:26: unsigned char Face2[] =
	ld	hl, #_Face2
	ld	(hl), #0x7e
	ld	hl, #(_Face2 + 0x0001)
	ld	(hl), #0x7e
	ld	hl, #(_Face2 + 0x0002)
	ld	(hl), #0xff
	ld	hl, #(_Face2 + 0x0003)
	ld	(hl), #0x81
	ld	hl, #(_Face2 + 0x0004)
	ld	(hl), #0xff
	ld	hl, #(_Face2 + 0x0005)
	ld	(hl), #0xa5
	ld	hl, #(_Face2 + 0x0006)
	ld	(hl), #0xff
	ld	hl, #(_Face2 + 0x0007)
	ld	(hl), #0x81
	ld	hl, #(_Face2 + 0x0008)
	ld	(hl), #0xff
	ld	hl, #(_Face2 + 0x0009)
	ld	(hl), #0x99
	ld	hl, #(_Face2 + 0x000a)
	ld	(hl), #0xff
	ld	hl, #(_Face2 + 0x000b)
	ld	(hl), #0xa5
	ld	hl, #(_Face2 + 0x000c)
	ld	(hl), #0xff
	ld	hl, #(_Face2 + 0x000d)
	ld	(hl), #0x81
	ld	hl, #(_Face2 + 0x000e)
	ld	(hl), #0x7e
	ld	hl, #(_Face2 + 0x000f)
	ld	(hl), #0x7e
	ld	hl, #(_Face2 + 0x0010)
	ld	(hl), #0x7e
	ld	hl, #(_Face2 + 0x0011)
	ld	(hl), #0x7e
	ld	hl, #(_Face2 + 0x0012)
	ld	(hl), #0xff
	ld	hl, #(_Face2 + 0x0013)
	ld	(hl), #0x81
	ld	hl, #(_Face2 + 0x0014)
	ld	(hl), #0xff
	ld	hl, #(_Face2 + 0x0015)
	ld	(hl), #0xa5
	ld	hl, #(_Face2 + 0x0016)
	ld	(hl), #0xff
	ld	hl, #(_Face2 + 0x0017)
	ld	(hl), #0x81
	ld	hl, #(_Face2 + 0x0018)
	ld	(hl), #0xff
	ld	hl, #(_Face2 + 0x0019)
	ld	(hl), #0x81
	ld	hl, #(_Face2 + 0x001a)
	ld	(hl), #0xff
	ld	hl, #(_Face2 + 0x001b)
	ld	(hl), #0xbd
	ld	hl, #(_Face2 + 0x001c)
	ld	(hl), #0xff
	ld	hl, #(_Face2 + 0x001d)
	ld	(hl), #0x81
	ld	hl, #(_Face2 + 0x001e)
	ld	(hl), #0x7e
	ld	hl, #(_Face2 + 0x001f)
	ld	(hl), #0x7e
	ld	hl, #(_Face2 + 0x0020)
	ld	(hl), #0x7e
	ld	hl, #(_Face2 + 0x0021)
	ld	(hl), #0x7e
	ld	hl, #(_Face2 + 0x0022)
	ld	(hl), #0xff
	ld	hl, #(_Face2 + 0x0023)
	ld	(hl), #0x81
	ld	hl, #(_Face2 + 0x0024)
	ld	(hl), #0xff
	ld	hl, #(_Face2 + 0x0025)
	ld	(hl), #0xa5
	ld	hl, #(_Face2 + 0x0026)
	ld	(hl), #0xff
	ld	hl, #(_Face2 + 0x0027)
	ld	(hl), #0x81
	ld	hl, #(_Face2 + 0x0028)
	ld	(hl), #0xff
	ld	hl, #(_Face2 + 0x0029)
	ld	(hl), #0xa5
	ld	hl, #(_Face2 + 0x002a)
	ld	(hl), #0xff
	ld	hl, #(_Face2 + 0x002b)
	ld	(hl), #0x99
	ld	hl, #(_Face2 + 0x002c)
	ld	(hl), #0xff
	ld	hl, #(_Face2 + 0x002d)
	ld	(hl), #0x81
	ld	hl, #(_Face2 + 0x002e)
	ld	(hl), #0x7e
	ld	hl, #(_Face2 + 0x002f)
	ld	(hl), #0x7e
	ld	hl, #(_Face2 + 0x0030)
	ld	(hl), #0x7e
	ld	hl, #(_Face2 + 0x0031)
	ld	(hl), #0x7e
	ld	hl, #(_Face2 + 0x0032)
	ld	(hl), #0xff
	ld	hl, #(_Face2 + 0x0033)
	ld	(hl), #0x81
	ld	hl, #(_Face2 + 0x0034)
	ld	(hl), #0xff
	ld	hl, #(_Face2 + 0x0035)
	ld	(hl), #0xa5
	ld	hl, #(_Face2 + 0x0036)
	ld	(hl), #0xff
	ld	hl, #(_Face2 + 0x0037)
	ld	(hl), #0x81
	ld	hl, #(_Face2 + 0x0038)
	ld	(hl), #0xff
	ld	hl, #(_Face2 + 0x0039)
	ld	(hl), #0x81
	ld	hl, #(_Face2 + 0x003a)
	ld	(hl), #0xff
	ld	hl, #(_Face2 + 0x003b)
	ld	(hl), #0xbd
	ld	hl, #(_Face2 + 0x003c)
	ld	(hl), #0xff
	ld	hl, #(_Face2 + 0x003d)
	ld	(hl), #0x81
	ld	hl, #(_Face2 + 0x003e)
	ld	(hl), #0x7e
	ld	hl, #(_Face2 + 0x003f)
	ld	(hl), #0x7e
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;main.c:24: UINT8 special_tile(UINT16 player_loc){
;	---------------------------------
; Function special_tile
; ---------------------------------
_special_tile::
	dec	sp
;main.c:26: rtn = 0;
	xor	a, a
	ldhl	sp,	#0
	ld	(hl), a
;main.c:30: set_bkg_tiles(player_loc%20, player_loc/20, 1, 1, blankmap);
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
;main.c:27: if (player_loc == 329){
	ldhl	sp,	#3
	ld	a, (hl)
	sub	a, #0x49
	jr	NZ, 00108$
	inc	hl
	ld	a, (hl)
	dec	a
	jr	NZ, 00108$
;main.c:29: has_key = 1;
	ld	hl, #_has_key
	ld	(hl), #0x01
;main.c:30: set_bkg_tiles(player_loc%20, player_loc/20, 1, 1, blankmap);
	ld	hl, #_blankmap
	push	hl
	ld	hl, #0x0101
	push	hl
	ld	c, e
	push	bc
	call	_set_bkg_tiles
	add	sp, #6
;main.c:31: rtn = 1;
	ldhl	sp,	#0
	ld	(hl), #0x01
	jr	00109$
00108$:
;main.c:33: else if (player_loc == 168 && has_key){
	ldhl	sp,	#3
	ld	a, (hl)
	sub	a, #0xa8
	inc	hl
	or	a, (hl)
	jr	NZ, 00104$
	ld	a, (#_has_key)
	or	a, a
	jr	Z, 00104$
;main.c:35: open_door = 1;
	ld	hl, #_open_door
	ld	(hl), #0x01
;main.c:36: set_bkg_tiles(player_loc%20, player_loc/20, 1, 1, blankmap);
	ld	hl, #_blankmap
	push	hl
	ld	hl, #0x0101
	push	hl
	ld	c, e
	push	bc
	call	_set_bkg_tiles
	add	sp, #6
;main.c:37: rtn = 1;
	ldhl	sp,	#0
	ld	(hl), #0x01
	jr	00109$
00104$:
;main.c:39: else if (player_loc == 358){
	ldhl	sp,	#3
	ld	a, (hl)
	sub	a, #0x66
	jr	NZ, 00109$
	inc	hl
	ld	a, (hl)
	dec	a
	jr	NZ, 00109$
;main.c:41: game_running = 0;
	ld	hl, #_game_running
	ld	(hl), #0x00
;main.c:42: HIDE_SPRITES;
	ldh	a, (_LCDC_REG+0)
	and	a, #0xfd
	ldh	(_LCDC_REG+0),a
;main.c:43: printf("\n \n \n \n \n \n \n \n \n      YOU WIN!!!!");
	ld	hl, #___str_0
	push	hl
	call	_printf
	add	sp, #2
;main.c:44: rtn = 1;
	ldhl	sp,	#0
	ld	(hl), #0x01
00109$:
;main.c:46: return rtn;
	ldhl	sp,	#0
	ld	e, (hl)
;main.c:47: }
	inc	sp
	ret
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
;main.c:49: UINT8 can_player_move(UINT16 newplayerx, UINT16 newplayery){
;	---------------------------------
; Function can_player_move
; ---------------------------------
_can_player_move::
	add	sp, #-2
;main.c:55: indexTLx = (newplayerx - 8)/8;
	ldhl	sp,#4
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0008
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ld	b, a
	ld	c, e
	inc	sp
	inc	sp
	push	bc
	ldhl	sp,	#1
	srl	(hl)
	dec	hl
	rr	(hl)
	inc	hl
	srl	(hl)
	dec	hl
	rr	(hl)
	inc	hl
	srl	(hl)
	dec	hl
	rr	(hl)
;main.c:56: indexTLy = (newplayery - 16)/8;
	ldhl	sp,#6
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0010
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ld	b, a
	ld	c, e
	srl	b
	rr	c
	srl	b
	rr	c
	srl	b
	rr	c
;main.c:58: tileindexTL = 40*indexTLy + indexTLx;
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
	pop	hl
	push	hl
	add	hl, bc
	ld	c, l
	ld	b, h
;main.c:60: result = 0; //special_tile(tileindexTL);
	ld	e, #0x00
;main.c:61: if (BackgroundMapPLN0[tileindexTL] == blankmap[0]){
	ld	hl, #_BackgroundMapPLN0
	add	hl, bc
	ld	d, (hl)
	ld	bc, #_blankmap+0
	ld	a, (bc)
	ld	c, a
	ld	a, d
	sub	a, c
	jr	NZ, 00102$
;main.c:62: result = 1;
	ld	e, #0x01
00102$:
;main.c:64: if (newplayery < 16 || newplayery > 168){
	ldhl	sp,	#6
	ld	a, (hl)
	sub	a, #0x10
	inc	hl
	ld	a, (hl)
	sbc	a, #0x00
	jr	C, 00103$
	ldhl	sp,	#6
	ld	a, #0xa8
	sub	a, (hl)
	inc	hl
	ld	a, #0x00
	sbc	a, (hl)
	jr	NC, 00104$
00103$:
;main.c:65: result = 0;
	ld	e, #0x00
00104$:
;main.c:68: return result;
;main.c:69: }
	add	sp, #2
	ret
;main.c:71: void animate_sprite(UINT8 sprite_index, INT8 move_x, INT8 move_y){
;	---------------------------------
; Function animate_sprite
; ---------------------------------
_animate_sprite::
;main.c:72: while(move_x != 0){
	ldhl	sp,	#2
	ld	c, (hl)
00101$:
	ldhl	sp,	#3
	ld	a, (hl)
	or	a, a
	jr	Z, 00126$
;main.c:73: scroll_sprite(sprite_index, move_x < 0 ? -1 : 1, 0);
	bit	7, (hl)
	jr	Z, 00111$
	ld	b, #0xff
	jr	00112$
00111$:
	ld	b, #0x01
00112$:
;c:/gbdk/include/gb/gb.h:1093: OAM_item_t * itm = &shadow_OAM[nb];
	ld	de, #_shadow_OAM+0
	ld	a, c
	ld	h, #0x00
	ld	l, a
	add	hl, hl
	add	hl, hl
	add	hl, de
;c:/gbdk/include/gb/gb.h:1094: itm->y+=y, itm->x+=x;
	ld	a, (hl)
	ld	(hl+), a
	ld	a, (hl)
	add	a, b
	ld	(hl), a
;main.c:74: move_x += (move_x > 0 ? -1 : 1);
	ldhl	sp,	#3
	ld	e, (hl)
	ld	d, #0x00
	xor	a, a
	sub	a, (hl)
	bit	7, e
	jr	Z, 00159$
	bit	7, d
	jr	NZ, 00160$
	cp	a, a
	jr	00160$
00159$:
	bit	7, d
	jr	Z, 00160$
	scf
00160$:
	jr	NC, 00113$
	ld	de, #0xffff
	jr	00114$
00113$:
	ld	de, #0x0001
00114$:
	ld	a, e
	ldhl	sp,	#3
	add	a, (hl)
	ld	(hl), a
;main.c:75: wait_vbl_done();
	call	_wait_vbl_done
	jr	00101$
;main.c:77: while (move_y != 0){
00126$:
00104$:
	ldhl	sp,	#4
	ld	a, (hl)
	or	a, a
	ret	Z
;main.c:78: scroll_sprite(sprite_index, 0, move_y < 0 ? -1 : 1);
	bit	7, (hl)
	jr	Z, 00115$
	ld	b, #0xff
	jr	00116$
00115$:
	ld	b, #0x01
00116$:
;c:/gbdk/include/gb/gb.h:1093: OAM_item_t * itm = &shadow_OAM[nb];
	ld	de, #_shadow_OAM+0
	ld	a, c
	ld	h, #0x00
	ld	l, a
	add	hl, hl
	add	hl, hl
	add	hl, de
;c:/gbdk/include/gb/gb.h:1094: itm->y+=y, itm->x+=x;
	ld	a, (hl)
	add	a, b
	ld	(hl+), a
	ld	a, (hl)
	ld	(hl), a
;main.c:79: move_y += (move_y > 0 ? -1 : 1);
	ldhl	sp,	#4
	ld	e, (hl)
	ld	d, #0x00
	xor	a, a
	sub	a, (hl)
	bit	7, e
	jr	Z, 00161$
	bit	7, d
	jr	NZ, 00162$
	cp	a, a
	jr	00162$
00161$:
	bit	7, d
	jr	Z, 00162$
	scf
00162$:
	jr	NC, 00117$
	ld	de, #0xffff
	jr	00118$
00117$:
	ld	de, #0x0001
00118$:
	ld	a, e
	ldhl	sp,	#4
	add	a, (hl)
	ld	(hl), a
;main.c:80: wait_vbl_done();
	call	_wait_vbl_done
;main.c:82: }
	jr	00104$
;main.c:84: void move_background_with_animation(INT8 move_x, INT8 move_y){
;	---------------------------------
; Function move_background_with_animation
; ---------------------------------
_move_background_with_animation::
;main.c:85: while(move_x != 0){
00101$:
	ldhl	sp,	#2
	ld	a, (hl)
	or	a, a
	jr	Z, 00104$
;main.c:86: scroll_bkg(move_x < 0 ? -1 : 1, 0);
	bit	7, (hl)
	jr	Z, 00111$
	ld	bc, #0xffff
	jr	00112$
00111$:
	ld	bc, #0x0001
00112$:
;c:/gbdk/include/gb/gb.h:775: SCX_REG+=x, SCY_REG+=y;
	ldh	a, (_SCX_REG+0)
	add	a, c
	ldh	(_SCX_REG+0),a
;main.c:87: move_x += (move_x > 0 ? -1 : 1);
	ldhl	sp,	#2
	ld	e, (hl)
	ld	d, #0x00
	xor	a, a
	sub	a, (hl)
	bit	7, e
	jr	Z, 00159$
	bit	7, d
	jr	NZ, 00160$
	cp	a, a
	jr	00160$
00159$:
	bit	7, d
	jr	Z, 00160$
	scf
00160$:
	jr	NC, 00113$
	ld	bc, #0xffff
	jr	00114$
00113$:
	ld	bc, #0x0001
00114$:
	ld	a, c
	ldhl	sp,	#2
	add	a, (hl)
	ld	(hl), a
;main.c:88: wait_vbl_done();
	call	_wait_vbl_done
	jr	00101$
;main.c:90: while (move_y != 0){
00104$:
	ldhl	sp,	#3
	ld	a, (hl)
	or	a, a
	ret	Z
;main.c:91: scroll_bkg(0, move_y < 0 ? -1 : 1);
	bit	7, (hl)
	jr	Z, 00115$
	ld	bc, #0xffff
	jr	00116$
00115$:
	ld	bc, #0x0001
00116$:
;c:/gbdk/include/gb/gb.h:775: SCX_REG+=x, SCY_REG+=y;
	ldh	a, (_SCY_REG+0)
	add	a, c
	ldh	(_SCY_REG+0),a
;main.c:92: move_y += (move_y > 0 ? -1 : 1);
	ldhl	sp,	#3
	ld	e, (hl)
	ld	d, #0x00
	xor	a, a
	sub	a, (hl)
	bit	7, e
	jr	Z, 00161$
	bit	7, d
	jr	NZ, 00162$
	cp	a, a
	jr	00162$
00161$:
	bit	7, d
	jr	Z, 00162$
	scf
00162$:
	jr	NC, 00117$
	ld	bc, #0xffff
	jr	00118$
00117$:
	ld	bc, #0x0001
00118$:
	ld	a, c
	ldhl	sp,	#3
	add	a, (hl)
	ld	(hl), a
;main.c:93: wait_vbl_done();
	call	_wait_vbl_done
;main.c:95: }
	jr	00104$
;main.c:97: void move(UINT8 sprite_index, UINT16 *player_loc_x, UINT16 *player_loc_y){
;	---------------------------------
; Function move
; ---------------------------------
_move::
	add	sp, #-4
;main.c:99: switch (joypad())
	call	_joypad
	ld	c, e
;main.c:102: if (can_player_move(*player_loc_x - tile, *player_loc_y)){
	ldhl	sp,	#9
	ld	a, (hl+)
	ld	e, (hl)
	ldhl	sp,	#0
	ld	(hl+), a
	ld	(hl), e
	ldhl	sp,	#7
	ld	a, (hl+)
	ld	e, (hl)
	ldhl	sp,	#2
	ld	(hl+), a
	ld	(hl), e
;main.c:99: switch (joypad())
	ld	a, c
	dec	a
	jr	Z, 00104$
	ld	a,c
	cp	a,#0x02
	jr	Z, 00101$
	cp	a,#0x04
	jp	Z,00107$
	sub	a, #0x08
	jp	Z,00114$
	jp	00121$
;main.c:101: case J_LEFT:
00101$:
;main.c:102: if (can_player_move(*player_loc_x - tile, *player_loc_y)){
	pop	de
	push	de
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
	ld	b, a
	ldhl	sp,#2
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
	push	bc
	push	de
	call	_can_player_move
	add	sp, #4
	ld	a, e
	or	a, a
	jp	Z, 00124$
;main.c:104: move_background_with_animation(-1*tile, 0);
	xor	a, a
	ld	d,a
	ld	e,#0xf8
	push	de
	call	_move_background_with_animation
	add	sp, #2
;main.c:105: *player_loc_x -= tile;
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
;main.c:107: break;
	jp	00124$
;main.c:108: case J_RIGHT:
00104$:
;main.c:109: if (can_player_move(*player_loc_x + tile, *player_loc_y)){
	pop	de
	push	de
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
	ld	b, a
	ldhl	sp,#2
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
	push	bc
	push	hl
	call	_can_player_move
	add	sp, #4
	ld	a, e
	or	a, a
	jp	Z, 00124$
;main.c:111: move_background_with_animation(tile, 0);
	xor	a, a
	ld	d,a
	ld	e,#0x08
	push	de
	call	_move_background_with_animation
	add	sp, #2
;main.c:112: *player_loc_x += tile;
	ldhl	sp,#2
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
	jr	NC, 00180$
	inc	c
00180$:
	dec	hl
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, b
	ld	(hl+), a
	ld	(hl), c
;main.c:114: break;
	jp	00124$
;main.c:115: case J_UP:
00107$:
;main.c:116: if (can_player_move(*player_loc_x, *player_loc_y - tile)){
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
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	l, a
	inc	de
	ld	a, (de)
	ld	h, a
	push	bc
	push	hl
	call	_can_player_move
	add	sp, #4
	ld	a, e
	or	a, a
	jp	Z, 00124$
;main.c:117: if (*player_loc_y < 96 || *player_loc_y > 104){
	pop	de
	push	de
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
	ld	b, a
	ld	a, c
	sub	a, #0x60
	ld	a, b
	sbc	a, #0x00
	jr	C, 00108$
	ld	a, #0x68
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	NC, 00109$
00108$:
;main.c:118: animate_sprite(sprite_index, 0, -1*tile);
	ld	a, #0xf8
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	ldhl	sp,	#8
	ld	a, (hl)
	push	af
	inc	sp
	call	_animate_sprite
	add	sp, #3
	jr	00110$
00109$:
;main.c:121: move_background_with_animation(0, -1*tile);
	ld	a, #0xf8
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_move_background_with_animation
	add	sp, #2
00110$:
;main.c:123: *player_loc_y -= tile;
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
;main.c:125: break;
	jr	00124$
;main.c:126: case J_DOWN:
00114$:
;main.c:127: if (can_player_move(*player_loc_x, *player_loc_y + tile)){
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
	jr	NC, 00181$
	inc	b
00181$:
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	l, a
	inc	de
	ld	a, (de)
	ld	h, a
	push	bc
	push	hl
	call	_can_player_move
	add	sp, #4
	ld	a, e
	or	a, a
	jr	Z, 00124$
;main.c:128: if (*player_loc_y < 88 || *player_loc_y > 96){
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
	jr	C, 00115$
	ld	a, #0x60
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	NC, 00116$
00115$:
;main.c:129: animate_sprite(sprite_index, 0, tile);
	ld	a, #0x08
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	ldhl	sp,	#8
	ld	a, (hl)
	push	af
	inc	sp
	call	_animate_sprite
	add	sp, #3
	jr	00117$
00116$:
;main.c:132: move_background_with_animation(0, tile);
	ld	a, #0x08
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_move_background_with_animation
	add	sp, #2
00117$:
;main.c:134: *player_loc_y += tile;
	pop	de
	push	de
	ld	a, (de)
	ld	b, a
	inc	de
	ld	a, (de)
	ld	c, a
	ld	a, b
	add	a, #0x08
	ld	b, a
	jr	NC, 00182$
	inc	c
00182$:
	pop	hl
	push	hl
	ld	a, b
	ld	(hl+), a
	ld	(hl), c
;main.c:136: break;
	jr	00124$
;main.c:137: default:
00121$:
;c:/gbdk/include/gb/gb.h:1093: OAM_item_t * itm = &shadow_OAM[nb];
;c:/gbdk/include/gb/gb.h:1094: itm->y+=y, itm->x+=x;
	ld	a, (#_shadow_OAM + 0)
	ld	(#_shadow_OAM),a
	ld	bc, #_shadow_OAM + 1
	ld	a, (bc)
	ld	(bc), a
;main.c:140: }
00124$:
;main.c:141: }
	add	sp, #4
	ret
;main.c:143: void animate(int sprite_location, int *csi){
;	---------------------------------
; Function animate
; ---------------------------------
_animate::
;main.c:144: if (*csi == 0){
	ldhl	sp,#4
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	l, c
	ld	h, b
	ld	a, (hl+)
	ld	h, (hl)
	ld	l,a
	or	a,h
	jr	NZ, 00108$
;main.c:145: *csi = 1;
	ld	l, c
	ld	h, b
	ld	a, #0x01
	ld	(hl+), a
	ld	(hl), #0x00
	jr	00109$
00108$:
;main.c:147: else if (*csi == 1){
	ld	a, l
	dec	a
	or	a, h
	jr	NZ, 00105$
;main.c:148: *csi = 2;
	ld	l, c
	ld	h, b
	ld	a, #0x02
	ld	(hl+), a
	ld	(hl), #0x00
	jr	00109$
00105$:
;main.c:150: else if (*csi == 2){
	ld	a, l
	sub	a, #0x02
	or	a, h
	jr	NZ, 00102$
;main.c:151: *csi = 3;
	ld	l, c
	ld	h, b
	ld	a, #0x03
	ld	(hl+), a
	ld	(hl), #0x00
	jr	00109$
00102$:
;main.c:154: *csi = 0;
	ld	l, c
	ld	h, b
	xor	a, a
	ld	(hl+), a
	ld	(hl), a
00109$:
;main.c:156: set_sprite_tile(sprite_location, *csi);
	ld	a, (bc)
	ld	c, a
	ldhl	sp,	#2
	ld	b, (hl)
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	de, #_shadow_OAM+0
	ld	h, #0x00
	ld	l, b
	add	hl, hl
	add	hl, hl
	add	hl, de
	inc	hl
	inc	hl
	ld	(hl), c
;main.c:156: set_sprite_tile(sprite_location, *csi);
;main.c:157: }
	ret
;main.c:159: void main(){
;	---------------------------------
; Function main
; ---------------------------------
_main::
	add	sp, #-3
;main.c:160: set_bkg_palette(0, 7, &backgroundpalette[0]);
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
;main.c:161: set_bkg_data(0, 14, BackgroundData);
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
;main.c:162: VBK_REG = 1;
	ld	a, #0x01
	ldh	(_VBK_REG+0),a
;main.c:163: set_bkg_tiles(0, 0, BackgroundMapWidth, BackgroundMapHeight, BackgroundMapPLN1);
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
;main.c:164: VBK_REG = 0;
	ld	a, #0x00
	ldh	(_VBK_REG+0),a
;main.c:165: set_bkg_tiles(0, 0, BackgroundMapWidth, BackgroundMapHeight, BackgroundMapPLN0);
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
;main.c:166: DISPLAY_ON;
	ldh	a, (_LCDC_REG+0)
	or	a, #0x80
	ldh	(_LCDC_REG+0),a
;main.c:167: SHOW_BKG;
	ldh	a, (_LCDC_REG+0)
	or	a, #0x01
	ldh	(_LCDC_REG+0),a
;main.c:169: UINT8 current_sprite_index = 0;
	xor	a, a
	ldhl	sp,	#0
	ld	(hl), a
;main.c:170: game_running = 1;
	ld	hl, #_game_running
	ld	(hl), #0x01
;main.c:172: playerlocation[0] = 88;
	ld	hl, #_playerlocation
	ld	a, #0x58
	ld	(hl+), a
	ld	(hl), #0x00
;main.c:173: playerlocation[1] = 88;
	ld	hl, #(_playerlocation + 0x0002)
	ld	a, #0x58
	ld	(hl+), a
	ld	(hl), #0x00
;main.c:175: int counter = 0;
	ld	bc, #0x0000
;main.c:176: set_sprite_data(0, 4, Face2);
	ld	hl, #_Face2
	push	hl
	ld	a, #0x04
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_set_sprite_data
	add	sp, #4
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0002)
	ld	(hl), #0x00
;main.c:178: move_sprite(0, playerlocation[0], playerlocation[1]); // across, down
	ld	a, (#(_playerlocation + 0x0002) + 0)
	ldhl	sp,	#1
	ld	(hl), a
	ld	a, (#_playerlocation + 0)
	ldhl	sp,	#2
	ld	(hl), a
;c:/gbdk/include/gb/gb.h:1077: OAM_item_t * itm = &shadow_OAM[nb];
	ld	de, #_shadow_OAM+0
;c:/gbdk/include/gb/gb.h:1078: itm->y=y, itm->x=x;
	ldhl	sp,	#1
	ld	a, (hl)
	ld	(de), a
	inc	de
	inc	hl
	ld	a, (hl)
	ld	(de), a
;main.c:179: SHOW_SPRITES;
	ldh	a, (_LCDC_REG+0)
	or	a, #0x02
	ldh	(_LCDC_REG+0),a
;main.c:181: while(game_running){
00103$:
	ld	a, (#_game_running)
	or	a, a
	jr	Z, 00108$
;main.c:182: if (counter%10 == 0){
	push	bc
	ld	hl, #0x000a
	push	hl
	push	bc
	call	__modsint
	add	sp, #4
	pop	bc
	ld	a, d
	or	a, e
	jr	NZ, 00102$
;main.c:183: animate(0, &current_sprite_index);
	ldhl	sp,	#0
	push	hl
	ld	hl, #0x0000
	push	hl
	call	_animate
	add	sp, #4
;main.c:184: counter = 0;
	ld	bc, #0x0000
00102$:
;main.c:186: move(0, &playerlocation[0], &playerlocation[1]);
	push	bc
	ld	hl, #(_playerlocation + 0x0002)
	push	hl
	ld	hl, #_playerlocation
	push	hl
	xor	a, a
	push	af
	inc	sp
	call	_move
	add	sp, #5
	ld	hl, #0x0064
	push	hl
	call	_delay
	add	sp, #2
	pop	bc
;main.c:188: counter++;
	inc	bc
	jr	00103$
00108$:
;main.c:190: }
	add	sp, #3
	ret
	.area _CODE
	.area _CABS (ABS)
