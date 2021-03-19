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
	.globl _set_bkg_tiles
	.globl _set_bkg_data
	.globl _delay
	.globl _set_bkg_palette
	.globl _backgroundpalette
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
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
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;main.c:19: void main(){
;	---------------------------------
; Function main
; ---------------------------------
_main::
;main.c:21: set_bkg_palette(0, 7, &backgroundpalette[0]);
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
;main.c:24: set_bkg_data(0, 14, BackgroundData);
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
;main.c:27: VBK_REG = 1;
	ld	a, #0x01
	ldh	(_VBK_REG+0),a
;main.c:29: set_bkg_tiles(0, 0, BackgroundMapWidth, BackgroundMapHeight, BackgroundMapPLN1);
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
;main.c:31: VBK_REG = 0;
	ld	a, #0x00
	ldh	(_VBK_REG+0),a
;main.c:33: set_bkg_tiles(0, 0, BackgroundMapWidth, BackgroundMapHeight, BackgroundMapPLN0);
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
;main.c:35: SHOW_BKG;
	ldh	a, (_LCDC_REG+0)
	or	a, #0x01
	ldh	(_LCDC_REG+0),a
;main.c:36: DISPLAY_ON;
	ldh	a, (_LCDC_REG+0)
	or	a, #0x80
	ldh	(_LCDC_REG+0),a
;main.c:38: while(1){
00102$:
;c:/gbdk/include/gb/gb.h:775: SCX_REG+=x, SCY_REG+=y;
	ldh	a, (_SCX_REG+0)
	inc	a
	ldh	(_SCX_REG+0),a
	ldh	a, (_SCY_REG+0)
	inc	a
	ldh	(_SCY_REG+0),a
;main.c:40: delay(100);
	ld	hl, #0x0064
	push	hl
	call	_delay
	add	sp, #2
;main.c:42: }
	jr	00102$
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
	.area _CODE
	.area _CABS (ABS)
