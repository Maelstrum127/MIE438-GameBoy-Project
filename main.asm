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
	.globl _font_set
	.globl _font_load
	.globl _font_init
	.globl _set_sprite_data
	.globl _set_win_tiles
	.globl _set_bkg_tiles
	.globl _set_bkg_data
	.globl _joypad
	.globl _delay
	.globl _windowmap
	.globl _backgroundmap
	.globl _simple_background_tiles
	.globl _Face2
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_Face2::
	.ds 64
_simple_background_tiles::
	.ds 128
_backgroundmap::
	.ds 720
_windowmap::
	.ds 5
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
;simple_background_tiles.c:26: unsigned char simple_background_tiles[] =
	ld	hl, #_simple_background_tiles
	ld	(hl), #0x00
	ld	hl, #(_simple_background_tiles + 0x0001)
	ld	(hl), #0x00
	ld	hl, #(_simple_background_tiles + 0x0002)
	ld	(hl), #0x00
	ld	hl, #(_simple_background_tiles + 0x0003)
	ld	(hl), #0x00
	ld	hl, #(_simple_background_tiles + 0x0004)
	ld	(hl), #0x00
	ld	hl, #(_simple_background_tiles + 0x0005)
	ld	(hl), #0x00
	ld	hl, #(_simple_background_tiles + 0x0006)
	ld	(hl), #0x00
	ld	hl, #(_simple_background_tiles + 0x0007)
	ld	(hl), #0x00
	ld	hl, #(_simple_background_tiles + 0x0008)
	ld	(hl), #0x00
	ld	hl, #(_simple_background_tiles + 0x0009)
	ld	(hl), #0x00
	ld	hl, #(_simple_background_tiles + 0x000a)
	ld	(hl), #0x00
	ld	hl, #(_simple_background_tiles + 0x000b)
	ld	(hl), #0x00
	ld	hl, #(_simple_background_tiles + 0x000c)
	ld	(hl), #0x00
	ld	hl, #(_simple_background_tiles + 0x000d)
	ld	(hl), #0x00
	ld	hl, #(_simple_background_tiles + 0x000e)
	ld	(hl), #0x00
	ld	hl, #(_simple_background_tiles + 0x000f)
	ld	(hl), #0x00
	ld	hl, #(_simple_background_tiles + 0x0010)
	ld	(hl), #0xff
	ld	hl, #(_simple_background_tiles + 0x0011)
	ld	(hl), #0xff
	ld	hl, #(_simple_background_tiles + 0x0012)
	ld	(hl), #0x01
	ld	hl, #(_simple_background_tiles + 0x0013)
	ld	(hl), #0x01
	ld	hl, #(_simple_background_tiles + 0x0014)
	ld	(hl), #0x01
	ld	hl, #(_simple_background_tiles + 0x0015)
	ld	(hl), #0x01
	ld	hl, #(_simple_background_tiles + 0x0016)
	ld	(hl), #0x01
	ld	hl, #(_simple_background_tiles + 0x0017)
	ld	(hl), #0x01
	ld	hl, #(_simple_background_tiles + 0x0018)
	ld	(hl), #0xff
	ld	hl, #(_simple_background_tiles + 0x0019)
	ld	(hl), #0xff
	ld	hl, #(_simple_background_tiles + 0x001a)
	ld	(hl), #0x10
	ld	hl, #(_simple_background_tiles + 0x001b)
	ld	(hl), #0x10
	ld	hl, #(_simple_background_tiles + 0x001c)
	ld	(hl), #0x10
	ld	hl, #(_simple_background_tiles + 0x001d)
	ld	(hl), #0x10
	ld	hl, #(_simple_background_tiles + 0x001e)
	ld	(hl), #0x10
	ld	hl, #(_simple_background_tiles + 0x001f)
	ld	(hl), #0x10
	ld	hl, #(_simple_background_tiles + 0x0020)
	ld	(hl), #0xff
	ld	hl, #(_simple_background_tiles + 0x0021)
	ld	(hl), #0xff
	ld	hl, #(_simple_background_tiles + 0x0022)
	ld	(hl), #0x01
	ld	hl, #(_simple_background_tiles + 0x0023)
	ld	(hl), #0x01
	ld	hl, #(_simple_background_tiles + 0x0024)
	ld	(hl), #0x01
	ld	hl, #(_simple_background_tiles + 0x0025)
	ld	(hl), #0x01
	ld	hl, #(_simple_background_tiles + 0x0026)
	ld	(hl), #0x01
	ld	hl, #(_simple_background_tiles + 0x0027)
	ld	(hl), #0x01
	ld	hl, #(_simple_background_tiles + 0x0028)
	ld	(hl), #0xff
	ld	hl, #(_simple_background_tiles + 0x0029)
	ld	(hl), #0xff
	ld	hl, #(_simple_background_tiles + 0x002a)
	ld	(hl), #0x11
	ld	hl, #(_simple_background_tiles + 0x002b)
	ld	(hl), #0x11
	ld	hl, #(_simple_background_tiles + 0x002c)
	ld	(hl), #0x11
	ld	hl, #(_simple_background_tiles + 0x002d)
	ld	(hl), #0x11
	ld	hl, #(_simple_background_tiles + 0x002e)
	ld	(hl), #0x11
	ld	hl, #(_simple_background_tiles + 0x002f)
	ld	(hl), #0x11
	ld	hl, #(_simple_background_tiles + 0x0030)
	ld	(hl), #0xff
	ld	hl, #(_simple_background_tiles + 0x0031)
	ld	(hl), #0xff
	ld	hl, #(_simple_background_tiles + 0x0032)
	ld	(hl), #0x80
	ld	hl, #(_simple_background_tiles + 0x0033)
	ld	(hl), #0x80
	ld	hl, #(_simple_background_tiles + 0x0034)
	ld	(hl), #0x80
	ld	hl, #(_simple_background_tiles + 0x0035)
	ld	(hl), #0x80
	ld	hl, #(_simple_background_tiles + 0x0036)
	ld	(hl), #0x80
	ld	hl, #(_simple_background_tiles + 0x0037)
	ld	(hl), #0x80
	ld	hl, #(_simple_background_tiles + 0x0038)
	ld	(hl), #0xff
	ld	hl, #(_simple_background_tiles + 0x0039)
	ld	(hl), #0xff
	ld	hl, #(_simple_background_tiles + 0x003a)
	ld	(hl), #0x88
	ld	hl, #(_simple_background_tiles + 0x003b)
	ld	(hl), #0x88
	ld	hl, #(_simple_background_tiles + 0x003c)
	ld	(hl), #0x88
	ld	hl, #(_simple_background_tiles + 0x003d)
	ld	(hl), #0x88
	ld	hl, #(_simple_background_tiles + 0x003e)
	ld	(hl), #0x88
	ld	hl, #(_simple_background_tiles + 0x003f)
	ld	(hl), #0x88
	ld	hl, #(_simple_background_tiles + 0x0040)
	ld	(hl), #0x55
	ld	hl, #(_simple_background_tiles + 0x0041)
	ld	(hl), #0x00
	ld	hl, #(_simple_background_tiles + 0x0042)
	ld	(hl), #0xaa
	ld	hl, #(_simple_background_tiles + 0x0043)
	ld	(hl), #0x00
	ld	hl, #(_simple_background_tiles + 0x0044)
	ld	(hl), #0x55
	ld	hl, #(_simple_background_tiles + 0x0045)
	ld	(hl), #0x00
	ld	hl, #(_simple_background_tiles + 0x0046)
	ld	(hl), #0xaa
	ld	hl, #(_simple_background_tiles + 0x0047)
	ld	(hl), #0x00
	ld	hl, #(_simple_background_tiles + 0x0048)
	ld	(hl), #0x55
	ld	hl, #(_simple_background_tiles + 0x0049)
	ld	(hl), #0x00
	ld	hl, #(_simple_background_tiles + 0x004a)
	ld	(hl), #0xaa
	ld	hl, #(_simple_background_tiles + 0x004b)
	ld	(hl), #0x00
	ld	hl, #(_simple_background_tiles + 0x004c)
	ld	(hl), #0x55
	ld	hl, #(_simple_background_tiles + 0x004d)
	ld	(hl), #0x00
	ld	hl, #(_simple_background_tiles + 0x004e)
	ld	(hl), #0xaa
	ld	hl, #(_simple_background_tiles + 0x004f)
	ld	(hl), #0x00
	ld	hl, #(_simple_background_tiles + 0x0050)
	ld	(hl), #0x00
	ld	hl, #(_simple_background_tiles + 0x0051)
	ld	(hl), #0x00
	ld	hl, #(_simple_background_tiles + 0x0052)
	ld	(hl), #0x00
	ld	hl, #(_simple_background_tiles + 0x0053)
	ld	(hl), #0x00
	ld	hl, #(_simple_background_tiles + 0x0054)
	ld	(hl), #0x00
	ld	hl, #(_simple_background_tiles + 0x0055)
	ld	(hl), #0x00
	ld	hl, #(_simple_background_tiles + 0x0056)
	ld	(hl), #0x00
	ld	hl, #(_simple_background_tiles + 0x0057)
	ld	(hl), #0x00
	ld	hl, #(_simple_background_tiles + 0x0058)
	ld	(hl), #0xff
	ld	hl, #(_simple_background_tiles + 0x0059)
	ld	(hl), #0xff
	ld	hl, #(_simple_background_tiles + 0x005a)
	ld	(hl), #0xaa
	ld	hl, #(_simple_background_tiles + 0x005b)
	ld	(hl), #0xff
	ld	hl, #(_simple_background_tiles + 0x005c)
	ld	(hl), #0x00
	ld	hl, #(_simple_background_tiles + 0x005d)
	ld	(hl), #0xff
	ld	hl, #(_simple_background_tiles + 0x005e)
	ld	(hl), #0x00
	ld	hl, #(_simple_background_tiles + 0x005f)
	ld	(hl), #0x55
	ld	hl, #(_simple_background_tiles + 0x0060)
	ld	(hl), #0x00
	ld	hl, #(_simple_background_tiles + 0x0061)
	ld	(hl), #0x00
	ld	hl, #(_simple_background_tiles + 0x0062)
	ld	(hl), #0x00
	ld	hl, #(_simple_background_tiles + 0x0063)
	ld	(hl), #0x00
	ld	hl, #(_simple_background_tiles + 0x0064)
	ld	(hl), #0x00
	ld	hl, #(_simple_background_tiles + 0x0065)
	ld	(hl), #0x00
	ld	hl, #(_simple_background_tiles + 0x0066)
	ld	(hl), #0x00
	ld	hl, #(_simple_background_tiles + 0x0067)
	ld	(hl), #0x00
	ld	hl, #(_simple_background_tiles + 0x0068)
	ld	(hl), #0x00
	ld	hl, #(_simple_background_tiles + 0x0069)
	ld	(hl), #0x00
	ld	hl, #(_simple_background_tiles + 0x006a)
	ld	(hl), #0xff
	ld	hl, #(_simple_background_tiles + 0x006b)
	ld	(hl), #0xff
	ld	hl, #(_simple_background_tiles + 0x006c)
	ld	(hl), #0x00
	ld	hl, #(_simple_background_tiles + 0x006d)
	ld	(hl), #0xff
	ld	hl, #(_simple_background_tiles + 0x006e)
	ld	(hl), #0xff
	ld	hl, #(_simple_background_tiles + 0x006f)
	ld	(hl), #0x00
	ld	hl, #(_simple_background_tiles + 0x0070)
	ld	(hl), #0x00
	ld	hl, #(_simple_background_tiles + 0x0071)
	ld	(hl), #0x00
	ld	hl, #(_simple_background_tiles + 0x0072)
	ld	(hl), #0x00
	ld	hl, #(_simple_background_tiles + 0x0073)
	ld	(hl), #0x00
	ld	hl, #(_simple_background_tiles + 0x0074)
	ld	(hl), #0x00
	ld	hl, #(_simple_background_tiles + 0x0075)
	ld	(hl), #0x00
	ld	hl, #(_simple_background_tiles + 0x0076)
	ld	(hl), #0x00
	ld	hl, #(_simple_background_tiles + 0x0077)
	ld	(hl), #0x00
	ld	hl, #(_simple_background_tiles + 0x0078)
	ld	(hl), #0x00
	ld	hl, #(_simple_background_tiles + 0x0079)
	ld	(hl), #0x00
	ld	hl, #(_simple_background_tiles + 0x007a)
	ld	(hl), #0x00
	ld	hl, #(_simple_background_tiles + 0x007b)
	ld	(hl), #0x00
	ld	hl, #(_simple_background_tiles + 0x007c)
	ld	(hl), #0x00
	ld	hl, #(_simple_background_tiles + 0x007d)
	ld	(hl), #0x00
	ld	hl, #(_simple_background_tiles + 0x007e)
	ld	(hl), #0x00
	ld	hl, #(_simple_background_tiles + 0x007f)
	ld	(hl), #0x00
;simple_background.c:25: unsigned char backgroundmap[] =
	ld	hl, #_backgroundmap
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0001)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0002)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0003)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0004)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0005)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0006)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0007)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0008)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0009)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x000a)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x000b)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x000c)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x000d)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x000e)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x000f)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0010)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0011)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0012)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0013)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0014)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0015)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0016)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0017)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0018)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0019)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x001a)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x001b)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x001c)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x001d)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x001e)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x001f)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0020)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0021)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0022)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0023)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0024)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0025)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0026)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0027)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0028)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0029)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x002a)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x002b)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x002c)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x002d)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x002e)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x002f)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0030)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0031)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0032)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0033)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0034)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0035)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0036)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0037)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0038)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0039)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x003a)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x003b)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x003c)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x003d)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x003e)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x003f)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0040)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0041)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0042)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0043)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0044)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0045)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0046)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0047)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0048)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0049)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x004a)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x004b)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x004c)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x004d)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x004e)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x004f)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0050)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0051)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0052)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0053)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0054)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0055)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0056)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0057)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0058)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0059)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x005a)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x005b)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x005c)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x005d)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x005e)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x005f)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0060)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0061)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0062)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0063)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0064)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0065)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0066)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0067)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0068)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0069)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x006a)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x006b)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x006c)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x006d)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x006e)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x006f)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0070)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0071)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0072)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0073)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0074)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0075)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0076)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0077)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0078)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0079)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x007a)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x007b)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x007c)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x007d)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x007e)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x007f)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0080)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0081)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0082)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0083)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0084)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0085)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0086)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0087)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0088)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0089)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x008a)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x008b)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x008c)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x008d)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x008e)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x008f)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0090)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0091)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0092)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0093)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0094)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0095)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0096)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0097)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0098)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0099)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x009a)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x009b)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x009c)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x009d)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x009e)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x009f)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00a0)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00a1)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00a2)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00a3)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00a4)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00a5)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00a6)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00a7)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00a8)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00a9)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00aa)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00ab)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00ac)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00ad)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00ae)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00af)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00b0)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00b1)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00b2)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00b3)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00b4)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00b5)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00b6)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00b7)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00b8)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00b9)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00ba)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00bb)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00bc)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00bd)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00be)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00bf)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00c0)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00c1)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00c2)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00c3)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00c4)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00c5)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00c6)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00c7)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00c8)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00c9)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00ca)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00cb)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00cc)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00cd)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00ce)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00cf)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00d0)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00d1)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00d2)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00d3)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00d4)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00d5)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00d6)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00d7)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00d8)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00d9)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00da)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00db)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00dc)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00dd)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00de)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00df)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00e0)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00e1)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00e2)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00e3)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00e4)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00e5)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00e6)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00e7)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00e8)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00e9)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00ea)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00eb)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00ec)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00ed)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00ee)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00ef)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00f0)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00f1)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00f2)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00f3)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00f4)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00f5)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00f6)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00f7)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00f8)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00f9)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00fa)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00fb)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00fc)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00fd)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x00fe)
	ld	(hl), #0x28
	ld	hl, #(_backgroundmap + 0x00ff)
	ld	(hl), #0x26
	ld	hl, #(_backgroundmap + 0x0100)
	ld	(hl), #0x26
	ld	hl, #(_backgroundmap + 0x0101)
	ld	(hl), #0x26
	ld	hl, #(_backgroundmap + 0x0102)
	ld	(hl), #0x26
	ld	hl, #(_backgroundmap + 0x0103)
	ld	(hl), #0x26
	ld	hl, #(_backgroundmap + 0x0104)
	ld	(hl), #0x26
	ld	hl, #(_backgroundmap + 0x0105)
	ld	(hl), #0x26
	ld	hl, #(_backgroundmap + 0x0106)
	ld	(hl), #0x26
	ld	hl, #(_backgroundmap + 0x0107)
	ld	(hl), #0x26
	ld	hl, #(_backgroundmap + 0x0108)
	ld	(hl), #0x26
	ld	hl, #(_backgroundmap + 0x0109)
	ld	(hl), #0x26
	ld	hl, #(_backgroundmap + 0x010a)
	ld	(hl), #0x27
	ld	hl, #(_backgroundmap + 0x010b)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x010c)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x010d)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x010e)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x010f)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0110)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0111)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0112)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0113)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0114)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0115)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0116)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0117)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0118)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0119)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x011a)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x011b)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x011c)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x011d)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x011e)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x011f)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0120)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0121)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0122)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0123)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0124)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0125)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0126)
	ld	(hl), #0x28
	ld	hl, #(_backgroundmap + 0x0127)
	ld	(hl), #0x26
	ld	hl, #(_backgroundmap + 0x0128)
	ld	(hl), #0x26
	ld	hl, #(_backgroundmap + 0x0129)
	ld	(hl), #0x26
	ld	hl, #(_backgroundmap + 0x012a)
	ld	(hl), #0x26
	ld	hl, #(_backgroundmap + 0x012b)
	ld	(hl), #0x26
	ld	hl, #(_backgroundmap + 0x012c)
	ld	(hl), #0x26
	ld	hl, #(_backgroundmap + 0x012d)
	ld	(hl), #0x26
	ld	hl, #(_backgroundmap + 0x012e)
	ld	(hl), #0x26
	ld	hl, #(_backgroundmap + 0x012f)
	ld	(hl), #0x26
	ld	hl, #(_backgroundmap + 0x0130)
	ld	(hl), #0x26
	ld	hl, #(_backgroundmap + 0x0131)
	ld	(hl), #0x26
	ld	hl, #(_backgroundmap + 0x0132)
	ld	(hl), #0x27
	ld	hl, #(_backgroundmap + 0x0133)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0134)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0135)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0136)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0137)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0138)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0139)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x013a)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x013b)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x013c)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x013d)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x013e)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x013f)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0140)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0141)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0142)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0143)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0144)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0145)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0146)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0147)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0148)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0149)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x014a)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x014b)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x014c)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x014d)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x014e)
	ld	(hl), #0x28
	ld	hl, #(_backgroundmap + 0x014f)
	ld	(hl), #0x26
	ld	hl, #(_backgroundmap + 0x0150)
	ld	(hl), #0x26
	ld	hl, #(_backgroundmap + 0x0151)
	ld	(hl), #0x26
	ld	hl, #(_backgroundmap + 0x0152)
	ld	(hl), #0x26
	ld	hl, #(_backgroundmap + 0x0153)
	ld	(hl), #0x26
	ld	hl, #(_backgroundmap + 0x0154)
	ld	(hl), #0x26
	ld	hl, #(_backgroundmap + 0x0155)
	ld	(hl), #0x26
	ld	hl, #(_backgroundmap + 0x0156)
	ld	(hl), #0x26
	ld	hl, #(_backgroundmap + 0x0157)
	ld	(hl), #0x26
	ld	hl, #(_backgroundmap + 0x0158)
	ld	(hl), #0x26
	ld	hl, #(_backgroundmap + 0x0159)
	ld	(hl), #0x26
	ld	hl, #(_backgroundmap + 0x015a)
	ld	(hl), #0x27
	ld	hl, #(_backgroundmap + 0x015b)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x015c)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x015d)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x015e)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x015f)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0160)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0161)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0162)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0163)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0164)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0165)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0166)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0167)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0168)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0169)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x016a)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x016b)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x016c)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x016d)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x016e)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x016f)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0170)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0171)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0172)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0173)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0174)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0175)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0176)
	ld	(hl), #0x28
	ld	hl, #(_backgroundmap + 0x0177)
	ld	(hl), #0x26
	ld	hl, #(_backgroundmap + 0x0178)
	ld	(hl), #0x26
	ld	hl, #(_backgroundmap + 0x0179)
	ld	(hl), #0x26
	ld	hl, #(_backgroundmap + 0x017a)
	ld	(hl), #0x26
	ld	hl, #(_backgroundmap + 0x017b)
	ld	(hl), #0x26
	ld	hl, #(_backgroundmap + 0x017c)
	ld	(hl), #0x26
	ld	hl, #(_backgroundmap + 0x017d)
	ld	(hl), #0x26
	ld	hl, #(_backgroundmap + 0x017e)
	ld	(hl), #0x26
	ld	hl, #(_backgroundmap + 0x017f)
	ld	(hl), #0x26
	ld	hl, #(_backgroundmap + 0x0180)
	ld	(hl), #0x26
	ld	hl, #(_backgroundmap + 0x0181)
	ld	(hl), #0x26
	ld	hl, #(_backgroundmap + 0x0182)
	ld	(hl), #0x27
	ld	hl, #(_backgroundmap + 0x0183)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0184)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0185)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0186)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0187)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0188)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0189)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x018a)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x018b)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x018c)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x018d)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x018e)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x018f)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0190)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0191)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0192)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0193)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0194)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0195)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0196)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0197)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0198)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x0199)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x019a)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x019b)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x019c)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x019d)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x019e)
	ld	(hl), #0x28
	ld	hl, #(_backgroundmap + 0x019f)
	ld	(hl), #0x26
	ld	hl, #(_backgroundmap + 0x01a0)
	ld	(hl), #0x26
	ld	hl, #(_backgroundmap + 0x01a1)
	ld	(hl), #0x26
	ld	hl, #(_backgroundmap + 0x01a2)
	ld	(hl), #0x26
	ld	hl, #(_backgroundmap + 0x01a3)
	ld	(hl), #0x26
	ld	hl, #(_backgroundmap + 0x01a4)
	ld	(hl), #0x26
	ld	hl, #(_backgroundmap + 0x01a5)
	ld	(hl), #0x26
	ld	hl, #(_backgroundmap + 0x01a6)
	ld	(hl), #0x26
	ld	hl, #(_backgroundmap + 0x01a7)
	ld	(hl), #0x26
	ld	hl, #(_backgroundmap + 0x01a8)
	ld	(hl), #0x26
	ld	hl, #(_backgroundmap + 0x01a9)
	ld	(hl), #0x26
	ld	hl, #(_backgroundmap + 0x01aa)
	ld	(hl), #0x27
	ld	hl, #(_backgroundmap + 0x01ab)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x01ac)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x01ad)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x01ae)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x01af)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x01b0)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x01b1)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x01b2)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x01b3)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x01b4)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x01b5)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x01b6)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x01b7)
	ld	(hl), #0x00
	ld	hl, #(_backgroundmap + 0x01b8)
	ld	(hl), #0x2b
	ld	hl, #(_backgroundmap + 0x01b9)
	ld	(hl), #0x2b
	ld	hl, #(_backgroundmap + 0x01ba)
	ld	(hl), #0x2b
	ld	hl, #(_backgroundmap + 0x01bb)
	ld	(hl), #0x2b
	ld	hl, #(_backgroundmap + 0x01bc)
	ld	(hl), #0x2b
	ld	hl, #(_backgroundmap + 0x01bd)
	ld	(hl), #0x2b
	ld	hl, #(_backgroundmap + 0x01be)
	ld	(hl), #0x2b
	ld	hl, #(_backgroundmap + 0x01bf)
	ld	(hl), #0x2b
	ld	hl, #(_backgroundmap + 0x01c0)
	ld	(hl), #0x2b
	ld	hl, #(_backgroundmap + 0x01c1)
	ld	(hl), #0x2b
	ld	hl, #(_backgroundmap + 0x01c2)
	ld	(hl), #0x2b
	ld	hl, #(_backgroundmap + 0x01c3)
	ld	(hl), #0x2b
	ld	hl, #(_backgroundmap + 0x01c4)
	ld	(hl), #0x2b
	ld	hl, #(_backgroundmap + 0x01c5)
	ld	(hl), #0x2b
	ld	hl, #(_backgroundmap + 0x01c6)
	ld	(hl), #0x28
	ld	hl, #(_backgroundmap + 0x01c7)
	ld	(hl), #0x26
	ld	hl, #(_backgroundmap + 0x01c8)
	ld	(hl), #0x26
	ld	hl, #(_backgroundmap + 0x01c9)
	ld	(hl), #0x26
	ld	hl, #(_backgroundmap + 0x01ca)
	ld	(hl), #0x26
	ld	hl, #(_backgroundmap + 0x01cb)
	ld	(hl), #0x26
	ld	hl, #(_backgroundmap + 0x01cc)
	ld	(hl), #0x26
	ld	hl, #(_backgroundmap + 0x01cd)
	ld	(hl), #0x26
	ld	hl, #(_backgroundmap + 0x01ce)
	ld	(hl), #0x26
	ld	hl, #(_backgroundmap + 0x01cf)
	ld	(hl), #0x26
	ld	hl, #(_backgroundmap + 0x01d0)
	ld	(hl), #0x26
	ld	hl, #(_backgroundmap + 0x01d1)
	ld	(hl), #0x26
	ld	hl, #(_backgroundmap + 0x01d2)
	ld	(hl), #0x27
	ld	hl, #(_backgroundmap + 0x01d3)
	ld	(hl), #0x2b
	ld	hl, #(_backgroundmap + 0x01d4)
	ld	(hl), #0x2b
	ld	hl, #(_backgroundmap + 0x01d5)
	ld	(hl), #0x2b
	ld	hl, #(_backgroundmap + 0x01d6)
	ld	(hl), #0x2b
	ld	hl, #(_backgroundmap + 0x01d7)
	ld	(hl), #0x2b
	ld	hl, #(_backgroundmap + 0x01d8)
	ld	(hl), #0x2b
	ld	hl, #(_backgroundmap + 0x01d9)
	ld	(hl), #0x2b
	ld	hl, #(_backgroundmap + 0x01da)
	ld	(hl), #0x2b
	ld	hl, #(_backgroundmap + 0x01db)
	ld	(hl), #0x2b
	ld	hl, #(_backgroundmap + 0x01dc)
	ld	(hl), #0x2b
	ld	hl, #(_backgroundmap + 0x01dd)
	ld	(hl), #0x2b
	ld	hl, #(_backgroundmap + 0x01de)
	ld	(hl), #0x2b
	ld	hl, #(_backgroundmap + 0x01df)
	ld	(hl), #0x2b
	ld	hl, #(_backgroundmap + 0x01e0)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x01e1)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x01e2)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x01e3)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x01e4)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x01e5)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x01e6)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x01e7)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x01e8)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x01e9)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x01ea)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x01eb)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x01ec)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x01ed)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x01ee)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x01ef)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x01f0)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x01f1)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x01f2)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x01f3)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x01f4)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x01f5)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x01f6)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x01f7)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x01f8)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x01f9)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x01fa)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x01fb)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x01fc)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x01fd)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x01fe)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x01ff)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0200)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0201)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0202)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0203)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0204)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0205)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0206)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0207)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0208)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0209)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x020a)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x020b)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x020c)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x020d)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x020e)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x020f)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0210)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0211)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0212)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0213)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0214)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0215)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0216)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0217)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0218)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0219)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x021a)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x021b)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x021c)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x021d)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x021e)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x021f)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0220)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0221)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0222)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0223)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0224)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0225)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0226)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0227)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0228)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0229)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x022a)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x022b)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x022c)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x022d)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x022e)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x022f)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0230)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0231)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0232)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0233)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0234)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0235)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0236)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0237)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0238)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0239)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x023a)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x023b)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x023c)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x023d)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x023e)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x023f)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0240)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0241)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0242)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0243)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0244)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0245)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0246)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0247)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0248)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0249)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x024a)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x024b)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x024c)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x024d)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x024e)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x024f)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0250)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0251)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0252)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0253)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0254)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0255)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0256)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0257)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0258)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0259)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x025a)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x025b)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x025c)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x025d)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x025e)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x025f)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0260)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0261)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0262)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0263)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0264)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0265)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0266)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0267)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0268)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0269)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x026a)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x026b)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x026c)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x026d)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x026e)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x026f)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0270)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0271)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0272)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0273)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0274)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0275)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0276)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0277)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0278)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0279)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x027a)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x027b)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x027c)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x027d)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x027e)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x027f)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0280)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0281)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0282)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0283)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0284)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0285)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0286)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0287)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0288)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0289)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x028a)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x028b)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x028c)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x028d)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x028e)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x028f)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0290)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0291)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0292)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0293)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0294)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0295)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0296)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0297)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0298)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x0299)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x029a)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x029b)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x029c)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x029d)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x029e)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x029f)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x02a0)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x02a1)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x02a2)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x02a3)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x02a4)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x02a5)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x02a6)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x02a7)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x02a8)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x02a9)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x02aa)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x02ab)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x02ac)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x02ad)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x02ae)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x02af)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x02b0)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x02b1)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x02b2)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x02b3)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x02b4)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x02b5)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x02b6)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x02b7)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x02b8)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x02b9)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x02ba)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x02bb)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x02bc)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x02bd)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x02be)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x02bf)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x02c0)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x02c1)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x02c2)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x02c3)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x02c4)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x02c5)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x02c6)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x02c7)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x02c8)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x02c9)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x02ca)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x02cb)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x02cc)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x02cd)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x02ce)
	ld	(hl), #0x29
	ld	hl, #(_backgroundmap + 0x02cf)
	ld	(hl), #0x29
;windowmap.c:1: unsigned char windowmap[] =
	ld	hl, #_windowmap
	ld	(hl), #0x12
	ld	hl, #(_windowmap + 0x0001)
	ld	(hl), #0x0f
	ld	hl, #(_windowmap + 0x0002)
	ld	(hl), #0x16
	ld	hl, #(_windowmap + 0x0003)
	ld	(hl), #0x16
	ld	hl, #(_windowmap + 0x0004)
	ld	(hl), #0x19
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;main.c:9: void move(){
;	---------------------------------
; Function move
; ---------------------------------
_move::
;main.c:11: switch (joypad())
	call	_joypad
	ld	a, e
	cp	a, #0x01
	jr	Z, 00102$
	cp	a, #0x02
	jr	Z, 00101$
	cp	a, #0x04
	jr	Z, 00103$
	sub	a, #0x08
	jr	Z, 00104$
	jr	00105$
;main.c:13: case J_LEFT:
00101$:
;c:/gbdk/include/gb/gb.h:1093: OAM_item_t * itm = &shadow_OAM[nb];
	ld	bc, #_shadow_OAM+0
;c:/gbdk/include/gb/gb.h:1094: itm->y+=y, itm->x+=x;
	ld	a, (bc)
	ld	(bc), a
	inc	bc
	ld	a, (bc)
	add	a, #0xfc
	ld	(bc), a
;c:/gbdk/include/gb/gb.h:775: SCX_REG+=x, SCY_REG+=y;
	ldh	a, (_SCX_REG+0)
	add	a, #0xfc
	ldh	(_SCX_REG+0),a
;main.c:16: break;
	ret
;main.c:17: case J_RIGHT:
00102$:
;c:/gbdk/include/gb/gb.h:1093: OAM_item_t * itm = &shadow_OAM[nb];
	ld	bc, #_shadow_OAM
;c:/gbdk/include/gb/gb.h:1094: itm->y+=y, itm->x+=x;
	ld	a, (bc)
	ld	(bc), a
	inc	bc
	ld	a, (bc)
	add	a, #0x04
	ld	(bc), a
;c:/gbdk/include/gb/gb.h:775: SCX_REG+=x, SCY_REG+=y;
	ldh	a, (_SCX_REG+0)
	add	a, #0x04
	ldh	(_SCX_REG+0),a
;main.c:20: break;
	ret
;main.c:21: case J_UP:
00103$:
;c:/gbdk/include/gb/gb.h:1093: OAM_item_t * itm = &shadow_OAM[nb];
	ld	bc, #_shadow_OAM
;c:/gbdk/include/gb/gb.h:1094: itm->y+=y, itm->x+=x;
	ld	a, (bc)
	add	a, #0xfc
	ld	(bc), a
	inc	bc
	ld	a, (bc)
	ld	(bc), a
;c:/gbdk/include/gb/gb.h:775: SCX_REG+=x, SCY_REG+=y;
	ldh	a, (_SCY_REG+0)
	add	a, #0xfc
	ldh	(_SCY_REG+0),a
;main.c:24: break;
	ret
;main.c:25: case J_DOWN:
00104$:
;c:/gbdk/include/gb/gb.h:1093: OAM_item_t * itm = &shadow_OAM[nb];
	ld	bc, #_shadow_OAM
;c:/gbdk/include/gb/gb.h:1094: itm->y+=y, itm->x+=x;
	ld	a, (bc)
	add	a, #0x04
	ld	(bc), a
	inc	bc
	ld	a, (bc)
	ld	(bc), a
;c:/gbdk/include/gb/gb.h:775: SCX_REG+=x, SCY_REG+=y;
	ldh	a, (_SCY_REG+0)
	add	a, #0x04
	ldh	(_SCY_REG+0),a
;main.c:28: break;
	ret
;main.c:29: default:
00105$:
;c:/gbdk/include/gb/gb.h:1093: OAM_item_t * itm = &shadow_OAM[nb];
	ld	bc, #_shadow_OAM
;c:/gbdk/include/gb/gb.h:1094: itm->y+=y, itm->x+=x;
	ld	a, (bc)
	ld	(bc), a
	inc	bc
	ld	a, (bc)
	ld	(bc), a
;c:/gbdk/include/gb/gb.h:775: SCX_REG+=x, SCY_REG+=y;
;main.c:33: }
;main.c:34: }
	ret
;main.c:36: void animate(int sprite_location, int *csi){
;	---------------------------------
; Function animate
; ---------------------------------
_animate::
;main.c:37: if (*csi == 0){
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
;main.c:38: *csi = 1;
	ld	l, c
	ld	h, b
	ld	a, #0x01
	ld	(hl+), a
	ld	(hl), #0x00
	jr	00109$
00108$:
;main.c:40: else if (*csi == 1){
	ld	a, l
	dec	a
	or	a, h
	jr	NZ, 00105$
;main.c:41: *csi = 2;
	ld	l, c
	ld	h, b
	ld	a, #0x02
	ld	(hl+), a
	ld	(hl), #0x00
	jr	00109$
00105$:
;main.c:43: else if (*csi == 2){
	ld	a, l
	sub	a, #0x02
	or	a, h
	jr	NZ, 00102$
;main.c:44: *csi = 3;
	ld	l, c
	ld	h, b
	ld	a, #0x03
	ld	(hl+), a
	ld	(hl), #0x00
	jr	00109$
00102$:
;main.c:47: *csi = 0;
	ld	l, c
	ld	h, b
	xor	a, a
	ld	(hl+), a
	ld	(hl), a
00109$:
;main.c:49: set_sprite_tile(sprite_location, *csi);
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
;main.c:49: set_sprite_tile(sprite_location, *csi);
;main.c:50: }
	ret
;main.c:52: void main(){
;	---------------------------------
; Function main
; ---------------------------------
_main::
	dec	sp
;main.c:54: font_init();
	call	_font_init
;main.c:55: min_font = font_load(font_min); //36 tiles
	ld	hl, #_font_min
	push	hl
	call	_font_load
	add	sp, #2
;main.c:56: font_set(min_font);
	push	de
	call	_font_set
	add	sp, #2
;main.c:58: set_bkg_data(37, 7, simple_background_tiles); //start at 37 to avoid clash with font, shares same memory locations
	ld	hl, #_simple_background_tiles
	push	hl
	ld	de, #0x0725
	push	de
	call	_set_bkg_data
	add	sp, #4
;main.c:59: set_bkg_tiles(0, 0, 40, 18, backgroundmap);
	ld	hl, #_backgroundmap
	push	hl
	ld	de, #0x1228
	push	de
	xor	a, a
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_set_bkg_tiles
	add	sp, #6
;main.c:61: set_win_tiles(0, 0, 5, 1, windowmap);
	ld	hl, #_windowmap
	push	hl
	ld	de, #0x0105
	push	de
	xor	a, a
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_set_win_tiles
	add	sp, #6
;c:/gbdk/include/gb/gb.h:893: WX_REG=x, WY_REG=y;
	ld	a, #0x07
	ldh	(_WX_REG+0),a
	ld	a, #0x78
	ldh	(_WY_REG+0),a
;main.c:64: SHOW_BKG;
	ldh	a, (_LCDC_REG+0)
	or	a, #0x01
	ldh	(_LCDC_REG+0),a
;main.c:65: SHOW_WIN;
	ldh	a, (_LCDC_REG+0)
	or	a, #0x20
	ldh	(_LCDC_REG+0),a
;main.c:66: DISPLAY_ON;
	ldh	a, (_LCDC_REG+0)
	or	a, #0x80
	ldh	(_LCDC_REG+0),a
;main.c:68: UINT8 current_sprite_index = 0;
	xor	a, a
	ldhl	sp,	#0
	ld	(hl), a
;main.c:69: int counter = 0;
	ld	bc, #0x0000
;main.c:70: set_sprite_data(0, 4, Face2);
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
;c:/gbdk/include/gb/gb.h:1077: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #_shadow_OAM
;c:/gbdk/include/gb/gb.h:1078: itm->y=y, itm->x=x;
	ld	a, #0x4e
	ld	(hl+), a
	ld	(hl), #0x58
;main.c:73: SHOW_SPRITES;
	ldh	a, (_LCDC_REG+0)
	or	a, #0x02
	ldh	(_LCDC_REG+0),a
;main.c:75: while(1){
00104$:
;main.c:76: if (counter%10 == 0){
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
;main.c:77: counter = 0;
	ld	bc, #0x0000
;main.c:78: animate(0, &current_sprite_index);
	ldhl	sp,	#0
	ld	e, l
	ld	d, h
	push	bc
	push	de
	ld	hl, #0x0000
	push	hl
	call	_animate
	add	sp, #4
	pop	bc
00102$:
;main.c:80: move();
	push	bc
	call	_move
	ld	hl, #0x0064
	push	hl
	call	_delay
	add	sp, #2
	pop	bc
;main.c:82: counter++;
	inc	bc
	jr	00104$
;main.c:84: }
	inc	sp
	ret
	.area _CODE
	.area _CABS (ABS)
