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
	.globl _game_running
	.globl _open_door
	.globl _has_key
	.globl _playerlocation
	.globl _maze
	.globl _maze_tiles
	.globl _Face2
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
_maze_tiles::
	.ds 64
_maze::
	.ds 360
_playerlocation::
	.ds 2
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
;maze_tiles.c:26: unsigned char maze_tiles[] =
	ld	hl, #_maze_tiles
	ld	(hl), #0x00
	ld	hl, #(_maze_tiles + 0x0001)
	ld	(hl), #0x00
	ld	hl, #(_maze_tiles + 0x0002)
	ld	(hl), #0x00
	ld	hl, #(_maze_tiles + 0x0003)
	ld	(hl), #0x00
	ld	hl, #(_maze_tiles + 0x0004)
	ld	(hl), #0x00
	ld	hl, #(_maze_tiles + 0x0005)
	ld	(hl), #0x00
	ld	hl, #(_maze_tiles + 0x0006)
	ld	(hl), #0x00
	ld	hl, #(_maze_tiles + 0x0007)
	ld	(hl), #0x00
	ld	hl, #(_maze_tiles + 0x0008)
	ld	(hl), #0x00
	ld	hl, #(_maze_tiles + 0x0009)
	ld	(hl), #0x00
	ld	hl, #(_maze_tiles + 0x000a)
	ld	(hl), #0x00
	ld	hl, #(_maze_tiles + 0x000b)
	ld	(hl), #0x00
	ld	hl, #(_maze_tiles + 0x000c)
	ld	(hl), #0x00
	ld	hl, #(_maze_tiles + 0x000d)
	ld	(hl), #0x00
	ld	hl, #(_maze_tiles + 0x000e)
	ld	(hl), #0x00
	ld	hl, #(_maze_tiles + 0x000f)
	ld	(hl), #0x00
	ld	hl, #(_maze_tiles + 0x0010)
	ld	(hl), #0xfe
	ld	hl, #(_maze_tiles + 0x0011)
	ld	(hl), #0xfe
	ld	hl, #(_maze_tiles + 0x0012)
	ld	(hl), #0x81
	ld	hl, #(_maze_tiles + 0x0013)
	ld	(hl), #0xb3
	ld	hl, #(_maze_tiles + 0x0014)
	ld	(hl), #0x83
	ld	hl, #(_maze_tiles + 0x0015)
	ld	(hl), #0xed
	ld	hl, #(_maze_tiles + 0x0016)
	ld	(hl), #0xa5
	ld	hl, #(_maze_tiles + 0x0017)
	ld	(hl), #0xd9
	ld	hl, #(_maze_tiles + 0x0018)
	ld	(hl), #0xfd
	ld	hl, #(_maze_tiles + 0x0019)
	ld	(hl), #0x83
	ld	hl, #(_maze_tiles + 0x001a)
	ld	(hl), #0xc1
	ld	hl, #(_maze_tiles + 0x001b)
	ld	(hl), #0xaf
	ld	hl, #(_maze_tiles + 0x001c)
	ld	(hl), #0xad
	ld	hl, #(_maze_tiles + 0x001d)
	ld	(hl), #0xd1
	ld	hl, #(_maze_tiles + 0x001e)
	ld	(hl), #0xff
	ld	hl, #(_maze_tiles + 0x001f)
	ld	(hl), #0xff
	ld	hl, #(_maze_tiles + 0x0020)
	ld	(hl), #0x00
	ld	hl, #(_maze_tiles + 0x0021)
	ld	(hl), #0x00
	ld	hl, #(_maze_tiles + 0x0022)
	ld	(hl), #0x7e
	ld	hl, #(_maze_tiles + 0x0023)
	ld	(hl), #0x7e
	ld	hl, #(_maze_tiles + 0x0024)
	ld	(hl), #0x7a
	ld	hl, #(_maze_tiles + 0x0025)
	ld	(hl), #0x46
	ld	hl, #(_maze_tiles + 0x0026)
	ld	(hl), #0x76
	ld	hl, #(_maze_tiles + 0x0027)
	ld	(hl), #0x4a
	ld	hl, #(_maze_tiles + 0x0028)
	ld	(hl), #0x72
	ld	hl, #(_maze_tiles + 0x0029)
	ld	(hl), #0x4e
	ld	hl, #(_maze_tiles + 0x002a)
	ld	(hl), #0x6a
	ld	hl, #(_maze_tiles + 0x002b)
	ld	(hl), #0x5e
	ld	hl, #(_maze_tiles + 0x002c)
	ld	(hl), #0x42
	ld	hl, #(_maze_tiles + 0x002d)
	ld	(hl), #0x7e
	ld	hl, #(_maze_tiles + 0x002e)
	ld	(hl), #0x42
	ld	hl, #(_maze_tiles + 0x002f)
	ld	(hl), #0x7e
	ld	hl, #(_maze_tiles + 0x0030)
	ld	(hl), #0x00
	ld	hl, #(_maze_tiles + 0x0031)
	ld	(hl), #0x38
	ld	hl, #(_maze_tiles + 0x0032)
	ld	(hl), #0x00
	ld	hl, #(_maze_tiles + 0x0033)
	ld	(hl), #0x44
	ld	hl, #(_maze_tiles + 0x0034)
	ld	(hl), #0x00
	ld	hl, #(_maze_tiles + 0x0035)
	ld	(hl), #0x44
	ld	hl, #(_maze_tiles + 0x0036)
	ld	(hl), #0x00
	ld	hl, #(_maze_tiles + 0x0037)
	ld	(hl), #0x38
	ld	hl, #(_maze_tiles + 0x0038)
	ld	(hl), #0x00
	ld	hl, #(_maze_tiles + 0x0039)
	ld	(hl), #0x10
	ld	hl, #(_maze_tiles + 0x003a)
	ld	(hl), #0x00
	ld	hl, #(_maze_tiles + 0x003b)
	ld	(hl), #0x1c
	ld	hl, #(_maze_tiles + 0x003c)
	ld	(hl), #0x00
	ld	hl, #(_maze_tiles + 0x003d)
	ld	(hl), #0x10
	ld	hl, #(_maze_tiles + 0x003e)
	ld	(hl), #0x00
	ld	hl, #(_maze_tiles + 0x003f)
	ld	(hl), #0x1c
;maze.c:25: unsigned char maze[] =
	ld	hl, #_maze
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0001)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0002)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0003)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0004)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0005)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0006)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0007)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0008)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0009)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x000a)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x000b)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x000c)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x000d)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x000e)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x000f)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0010)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0011)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0012)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0013)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0014)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0015)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x0016)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0017)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x0018)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x0019)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x001a)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x001b)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x001c)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x001d)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x001e)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x001f)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x0020)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x0021)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x0022)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x0023)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x0024)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x0025)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x0026)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x0027)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0028)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0029)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x002a)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x002b)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x002c)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x002d)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x002e)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x002f)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x0030)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x0031)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x0032)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x0033)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0034)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x0035)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0036)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x0037)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x0038)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x0039)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x003a)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x003b)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x003c)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x003d)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x003e)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x003f)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x0040)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0041)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x0042)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0043)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x0044)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x0045)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x0046)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x0047)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0048)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x0049)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x004a)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x004b)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x004c)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x004d)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x004e)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x004f)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0050)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0051)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x0052)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0053)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x0054)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0055)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x0056)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0057)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x0058)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x0059)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x005a)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x005b)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x005c)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x005d)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x005e)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x005f)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0060)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x0061)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x0062)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x0063)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0064)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0065)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x0066)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0067)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x0068)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0069)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x006a)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x006b)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x006c)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x006d)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x006e)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x006f)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0070)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0071)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0072)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0073)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0074)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x0075)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x0076)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x0077)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0078)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0079)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x007a)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x007b)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x007c)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x007d)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x007e)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x007f)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x0080)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x0081)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x0082)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x0083)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x0084)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x0085)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x0086)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x0087)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x0088)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x0089)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x008a)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x008b)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x008c)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x008d)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x008e)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x008f)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x0090)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0091)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x0092)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0093)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0094)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0095)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0096)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0097)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0098)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0099)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x009a)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x009b)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x009c)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x009d)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x009e)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x009f)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x00a0)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x00a1)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x00a2)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x00a3)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x00a4)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x00a5)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x00a6)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x00a7)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x00a8)
	ld	(hl), #0x02
	ld	hl, #(_maze + 0x00a9)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x00aa)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x00ab)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x00ac)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x00ad)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x00ae)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x00af)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x00b0)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x00b1)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x00b2)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x00b3)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x00b4)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x00b5)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x00b6)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x00b7)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x00b8)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x00b9)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x00ba)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x00bb)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x00bc)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x00bd)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x00be)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x00bf)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x00c0)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x00c1)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x00c2)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x00c3)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x00c4)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x00c5)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x00c6)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x00c7)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x00c8)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x00c9)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x00ca)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x00cb)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x00cc)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x00cd)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x00ce)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x00cf)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x00d0)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x00d1)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x00d2)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x00d3)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x00d4)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x00d5)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x00d6)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x00d7)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x00d8)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x00d9)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x00da)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x00db)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x00dc)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x00dd)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x00de)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x00df)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x00e0)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x00e1)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x00e2)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x00e3)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x00e4)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x00e5)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x00e6)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x00e7)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x00e8)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x00e9)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x00ea)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x00eb)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x00ec)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x00ed)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x00ee)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x00ef)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x00f0)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x00f1)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x00f2)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x00f3)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x00f4)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x00f5)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x00f6)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x00f7)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x00f8)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x00f9)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x00fa)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x00fb)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x00fc)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x00fd)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x00fe)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x00ff)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0100)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0101)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0102)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x0103)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0104)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0105)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x0106)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0107)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x0108)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0109)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x010a)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x010b)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x010c)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x010d)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x010e)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x010f)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0110)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0111)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0112)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x0113)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x0114)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x0115)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0116)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x0117)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0118)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0119)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x011a)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x011b)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x011c)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x011d)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x011e)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x011f)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x0120)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x0121)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x0122)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x0123)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x0124)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0125)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0126)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0127)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0128)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x0129)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x012a)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x012b)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x012c)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x012d)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x012e)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x012f)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0130)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0131)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0132)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0133)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x0134)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0135)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0136)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0137)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x0138)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0139)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x013a)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x013b)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x013c)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x013d)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x013e)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x013f)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0140)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0141)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x0142)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x0143)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x0144)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x0145)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x0146)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x0147)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x0148)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0149)
	ld	(hl), #0x03
	ld	hl, #(_maze + 0x014a)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x014b)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x014c)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x014d)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x014e)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x014f)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0150)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x0151)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x0152)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x0153)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0154)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0155)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0156)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0157)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0158)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0159)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x015a)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x015b)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x015c)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x015d)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x015e)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x015f)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0160)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0161)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0162)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0163)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0164)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0165)
	ld	(hl), #0x01
	ld	hl, #(_maze + 0x0166)
	ld	(hl), #0x00
	ld	hl, #(_maze + 0x0167)
	ld	(hl), #0x01
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;main.c:12: UINT8 special_tile(UINT16 player_loc){
;	---------------------------------
; Function special_tile
; ---------------------------------
_special_tile::
	dec	sp
;main.c:14: rtn = 0;
	xor	a, a
	ldhl	sp,	#0
	ld	(hl), a
;main.c:18: set_bkg_tiles(player_loc%20, player_loc/20, 1, 1, blankmap);
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
;main.c:15: if (player_loc == 329){
	ldhl	sp,	#3
	ld	a, (hl)
	sub	a, #0x49
	jr	NZ, 00108$
	inc	hl
	ld	a, (hl)
	dec	a
	jr	NZ, 00108$
;main.c:17: has_key = 1;
	ld	hl, #_has_key
	ld	(hl), #0x01
;main.c:18: set_bkg_tiles(player_loc%20, player_loc/20, 1, 1, blankmap);
	ld	hl, #_blankmap
	push	hl
	ld	hl, #0x0101
	push	hl
	ld	c, e
	push	bc
	call	_set_bkg_tiles
	add	sp, #6
;main.c:19: rtn = 1;
	ldhl	sp,	#0
	ld	(hl), #0x01
	jr	00109$
00108$:
;main.c:21: else if (player_loc == 168 && has_key){
	ldhl	sp,	#3
	ld	a, (hl)
	sub	a, #0xa8
	inc	hl
	or	a, (hl)
	jr	NZ, 00104$
	ld	a, (#_has_key)
	or	a, a
	jr	Z, 00104$
;main.c:23: open_door = 1;
	ld	hl, #_open_door
	ld	(hl), #0x01
;main.c:24: set_bkg_tiles(player_loc%20, player_loc/20, 1, 1, blankmap);
	ld	hl, #_blankmap
	push	hl
	ld	hl, #0x0101
	push	hl
	ld	c, e
	push	bc
	call	_set_bkg_tiles
	add	sp, #6
;main.c:25: rtn = 1;
	ldhl	sp,	#0
	ld	(hl), #0x01
	jr	00109$
00104$:
;main.c:27: else if (player_loc == 358){
	ldhl	sp,	#3
	ld	a, (hl)
	sub	a, #0x66
	jr	NZ, 00109$
	inc	hl
	ld	a, (hl)
	dec	a
	jr	NZ, 00109$
;main.c:29: game_running = 0;
	ld	hl, #_game_running
	ld	(hl), #0x00
;main.c:30: HIDE_SPRITES;
	ldh	a, (_LCDC_REG+0)
	and	a, #0xfd
	ldh	(_LCDC_REG+0),a
;main.c:31: printf("\n \n \n \n \n \n \n \n \n      YOU WIN!!!!");
	ld	hl, #___str_0
	push	hl
	call	_printf
	add	sp, #2
;main.c:32: rtn = 1;
	ldhl	sp,	#0
	ld	(hl), #0x01
00109$:
;main.c:34: return rtn;
	ldhl	sp,	#0
	ld	e, (hl)
;main.c:35: }
	inc	sp
	ret
_blankmap:
	.db #0x00	; 0
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
;main.c:37: UINT8 can_player_move(UINT8 newplayerx, UINT8 newplayery){
;	---------------------------------
; Function can_player_move
; ---------------------------------
_can_player_move::
	add	sp, #-6
;main.c:43: indexTLx = (newplayerx - 8)/8;
	ldhl	sp,	#8
	ld	a, (hl)
	ldhl	sp,	#2
	ld	(hl), a
	xor	a, a
	inc	hl
	ld	(hl-), a
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
	ldhl	sp,	#4
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
	bit	7, b
	jr	Z, 00105$
;c
	dec	hl
	dec	hl
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0xffff
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#6
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#5
	ld	(hl), a
00105$:
	ldhl	sp,	#4
	ld	a, (hl)
	ldhl	sp,	#0
	ld	(hl), a
	ldhl	sp,	#5
	ld	a, (hl)
	ldhl	sp,	#1
	ld	(hl), a
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
;main.c:44: indexTLy = (newplayery - 16)/8;
	ldhl	sp,	#9
	ld	a, (hl)
	ldhl	sp,	#2
	ld	(hl), a
	xor	a, a
	inc	hl
	ld	(hl-), a
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
	ldhl	sp,	#4
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
	bit	7, b
	jr	Z, 00106$
;c
	dec	hl
	dec	hl
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0xfff7
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#6
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#5
	ld	(hl), a
00106$:
	ldhl	sp,#4
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	srl	b
	rr	c
	srl	b
	rr	c
	srl	b
	rr	c
;main.c:46: tileindexTL = 20*indexTLy + indexTLx;
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	ld	c, l
	ld	b, h
	pop	hl
	push	hl
	add	hl, bc
	ld	c, l
	ld	b, h
;main.c:48: result = special_tile(tileindexTL);
	push	bc
	push	bc
	call	_special_tile
	add	sp, #2
	pop	bc
;main.c:49: if (maze[tileindexTL] == blankmap[0]){
	ld	hl, #_maze
	add	hl, bc
	ld	d, (hl)
	ld	bc, #_blankmap+0
	ld	a, (bc)
	ld	c, a
	ld	a, d
	sub	a, c
	jr	NZ, 00102$
;main.c:50: result = 1;
	ld	e, #0x01
00102$:
;main.c:53: return result;
;main.c:54: }
	add	sp, #6
	ret
;main.c:56: void animate_sprite(UINT8 sprite_index, INT8 move_x, INT8 move_y){
;	---------------------------------
; Function animate_sprite
; ---------------------------------
_animate_sprite::
;main.c:57: while(move_x != 0){
	ldhl	sp,	#2
	ld	c, (hl)
00101$:
	ldhl	sp,	#3
	ld	a, (hl)
	or	a, a
	jr	Z, 00126$
;main.c:58: scroll_sprite(sprite_index, move_x < 0 ? -1 : 1, 0);
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
;main.c:59: move_x += (move_x > 0 ? -1 : 1);
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
;main.c:60: wait_vbl_done();
	call	_wait_vbl_done
	jr	00101$
;main.c:62: while (move_y != 0){
00126$:
00104$:
	ldhl	sp,	#4
	ld	a, (hl)
	or	a, a
	ret	Z
;main.c:63: scroll_sprite(sprite_index, 0, move_y < 0 ? -1 : 1);
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
;main.c:64: move_y += (move_y > 0 ? -1 : 1);
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
;main.c:65: wait_vbl_done();
	call	_wait_vbl_done
;main.c:67: }
	jr	00104$
;main.c:69: void move(UINT8 sprite_index, UINT8 *player_loc_x, UINT8 *player_loc_y){
;	---------------------------------
; Function move
; ---------------------------------
_move::
	dec	sp
;main.c:71: switch (joypad())
	call	_joypad
	push	hl
	ldhl	sp,	#2
	ld	(hl), e
	pop	hl
;main.c:74: if (can_player_move(*player_loc_x - tile, *player_loc_y)){
	ldhl	sp,#6
	ld	a, (hl+)
	ld	c, a
	ld	a, (hl-)
	ld	b, a
	dec	hl
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
;main.c:71: switch (joypad())
	ldhl	sp,	#0
	ld	a, (hl)
	dec	a
	jr	Z, 00104$
	ldhl	sp,	#0
	ld	a, (hl)
	sub	a, #0x02
	jr	Z, 00101$
	ldhl	sp,	#0
	ld	a, (hl)
	sub	a, #0x04
	jr	Z, 00107$
	ldhl	sp,	#0
	ld	a, (hl)
	sub	a, #0x08
	jp	Z,00110$
	jp	00113$
;main.c:73: case J_LEFT:
00101$:
;main.c:74: if (can_player_move(*player_loc_x - tile, *player_loc_y)){
	ld	a, (bc)
	ld	b, a
	ld	a, (de)
	add	a, #0xf8
	push	de
	push	bc
	inc	sp
	push	af
	inc	sp
	call	_can_player_move
	add	sp, #2
	ld	a, e
	pop	de
	or	a, a
	jp	Z, 00116$
;main.c:75: animate_sprite(sprite_index, -1*tile, 0);
	push	de
	xor	a, a
	ld	d,a
	ld	e,#0xf8
	push	de
	ldhl	sp,	#7
	ld	a, (hl)
	push	af
	inc	sp
	call	_animate_sprite
	add	sp, #3
	pop	de
;main.c:76: *player_loc_x -= tile;
	ld	a, (de)
	add	a, #0xf8
	ld	(de), a
;main.c:79: break;
	jp	00116$
;main.c:80: case J_RIGHT:
00104$:
;main.c:81: if (can_player_move(*player_loc_x + tile, *player_loc_y)){
	ld	a, (bc)
	ld	c, a
	ld	a, (de)
	add	a, #0x08
	push	de
	ld	h, c
	push	hl
	inc	sp
	push	af
	inc	sp
	call	_can_player_move
	add	sp, #2
	ld	a, e
	pop	de
	or	a, a
	jr	Z, 00116$
;main.c:82: animate_sprite(sprite_index, 1*tile, 0);
	push	de
	xor	a, a
	ld	d,a
	ld	e,#0x08
	push	de
	ldhl	sp,	#7
	ld	a, (hl)
	push	af
	inc	sp
	call	_animate_sprite
	add	sp, #3
	pop	de
;main.c:83: *player_loc_x += tile;
	ld	a, (de)
	add	a, #0x08
	ld	(de), a
;main.c:86: break;
	jr	00116$
;main.c:87: case J_UP:
00107$:
;main.c:88: if (can_player_move(*player_loc_x, *player_loc_y - tile)){
	ld	a, (bc)
	add	a, #0xf8
	ld	h, a
	ld	a, (de)
	push	bc
	push	hl
	inc	sp
	push	af
	inc	sp
	call	_can_player_move
	add	sp, #2
	ld	a, e
	pop	bc
	or	a, a
	jr	Z, 00116$
;main.c:89: animate_sprite(sprite_index, 0, -1*tile);
	push	bc
	ld	a, #0xf8
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	ldhl	sp,	#7
	ld	a, (hl)
	push	af
	inc	sp
	call	_animate_sprite
	add	sp, #3
	pop	bc
;main.c:90: *player_loc_y -= tile;
	ld	a, (bc)
	add	a, #0xf8
	ld	(bc), a
;main.c:93: break;
	jr	00116$
;main.c:94: case J_DOWN:
00110$:
;main.c:95: if (can_player_move(*player_loc_x, *player_loc_y + tile)){
	ld	a, (bc)
	add	a, #0x08
	ld	h, a
	ld	a, (de)
	push	bc
	push	hl
	inc	sp
	push	af
	inc	sp
	call	_can_player_move
	add	sp, #2
	ld	a, e
	pop	bc
	or	a, a
	jr	Z, 00116$
;main.c:96: animate_sprite(sprite_index, 0, 1*tile);
	push	bc
	ld	a, #0x08
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	ldhl	sp,	#7
	ld	a, (hl)
	push	af
	inc	sp
	call	_animate_sprite
	add	sp, #3
	pop	bc
;main.c:97: *player_loc_y += tile;
	ld	a, (bc)
	add	a, #0x08
	ld	(bc), a
;main.c:99: break;
	jr	00116$
;main.c:100: default:
00113$:
;c:/gbdk/include/gb/gb.h:1093: OAM_item_t * itm = &shadow_OAM[nb];
	ld	bc, #_shadow_OAM+0
;c:/gbdk/include/gb/gb.h:1094: itm->y+=y, itm->x+=x;
	ld	a, (bc)
	ld	(bc), a
	inc	bc
	ld	a, (bc)
	ld	(bc), a
;main.c:104: }
00116$:
;main.c:105: }
	inc	sp
	ret
;main.c:107: void animate(int sprite_location, int *csi){
;	---------------------------------
; Function animate
; ---------------------------------
_animate::
;main.c:108: if (*csi == 0){
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
;main.c:109: *csi = 1;
	ld	l, c
	ld	h, b
	ld	a, #0x01
	ld	(hl+), a
	ld	(hl), #0x00
	jr	00109$
00108$:
;main.c:111: else if (*csi == 1){
	ld	a, l
	dec	a
	or	a, h
	jr	NZ, 00105$
;main.c:112: *csi = 2;
	ld	l, c
	ld	h, b
	ld	a, #0x02
	ld	(hl+), a
	ld	(hl), #0x00
	jr	00109$
00105$:
;main.c:114: else if (*csi == 2){
	ld	a, l
	sub	a, #0x02
	or	a, h
	jr	NZ, 00102$
;main.c:115: *csi = 3;
	ld	l, c
	ld	h, b
	ld	a, #0x03
	ld	(hl+), a
	ld	(hl), #0x00
	jr	00109$
00102$:
;main.c:118: *csi = 0;
	ld	l, c
	ld	h, b
	xor	a, a
	ld	(hl+), a
	ld	(hl), a
00109$:
;main.c:120: set_sprite_tile(sprite_location, *csi);
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
;main.c:120: set_sprite_tile(sprite_location, *csi);
;main.c:121: }
	ret
;main.c:123: void main(){
;	---------------------------------
; Function main
; ---------------------------------
_main::
	add	sp, #-3
;main.c:135: set_bkg_data(0, 4, maze_tiles); //start at 37 to avoid clash with font, shares same memory locations
	ld	hl, #_maze_tiles
	push	hl
	ld	a, #0x04
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_set_bkg_data
	add	sp, #4
;main.c:136: set_bkg_tiles(0, 0, 20, 19, maze);
	ld	hl, #_maze
	push	hl
	ld	de, #0x1314
	push	de
	xor	a, a
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_set_bkg_tiles
	add	sp, #6
;main.c:139: DISPLAY_ON;
	ldh	a, (_LCDC_REG+0)
	or	a, #0x80
	ldh	(_LCDC_REG+0),a
;main.c:140: SHOW_BKG;
	ldh	a, (_LCDC_REG+0)
	or	a, #0x01
	ldh	(_LCDC_REG+0),a
;main.c:142: UINT8 current_sprite_index = 0;
	xor	a, a
	ldhl	sp,	#0
	ld	(hl), a
;main.c:143: game_running = 1;
	ld	hl, #_game_running
	ld	(hl), #0x01
;main.c:145: playerlocation[0] = 16;
	ld	hl, #_playerlocation
	ld	(hl), #0x10
;main.c:146: playerlocation[1] = 24;
	ld	hl, #(_playerlocation + 0x0001)
	ld	(hl), #0x18
;main.c:148: int counter = 0;
	ld	bc, #0x0000
;main.c:149: set_sprite_data(0, 4, Face2);
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
;main.c:151: move_sprite(0, playerlocation[0], playerlocation[1]); // across, down
	ld	a, (#(_playerlocation + 0x0001) + 0)
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
;main.c:152: SHOW_SPRITES;
	ldh	a, (_LCDC_REG+0)
	or	a, #0x02
	ldh	(_LCDC_REG+0),a
;main.c:154: while(game_running){
00103$:
	ld	a, (#_game_running)
	or	a, a
	jr	Z, 00108$
;main.c:155: if (counter%10 == 0){
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
;main.c:156: animate(0, &current_sprite_index);
	ldhl	sp,	#0
	push	hl
	ld	hl, #0x0000
	push	hl
	call	_animate
	add	sp, #4
;main.c:157: counter = 0;
	ld	bc, #0x0000
00102$:
;main.c:159: move(0, &playerlocation[0], &playerlocation[1]);
	push	bc
	ld	hl, #(_playerlocation + 0x0001)
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
;main.c:161: counter++;
	inc	bc
	jr	00103$
00108$:
;main.c:163: }
	add	sp, #3
	ret
	.area _CODE
	.area _CABS (ABS)
