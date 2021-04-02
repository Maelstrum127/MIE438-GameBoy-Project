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
	.globl _setup_dialogue
	.globl _setup_map
	.globl _setup_splashscreen
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
	.globl _set_win_tiles
	.globl _set_win_data
	.globl _set_bkg_tiles
	.globl _set_bkg_data
	.globl _wait_vbl_done
	.globl _waitpadup
	.globl _waitpad
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
	.globl _Intro3Map
	.globl _Intro2Map
	.globl _Intro1Map
	.globl _Test3
	.globl _Test2
	.globl _Test1
	.globl _Letter2Data
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
_Letter2Data::
	.ds 736
_Test1::
	.ds 60
_Test2::
	.ds 60
_Test3::
	.ds 60
_Intro1Map::
	.ds 360
_Intro2Map::
	.ds 360
_Intro3Map::
	.ds 360
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
;Dialogues/letter2Data.c:26: unsigned char Letter2Data[] =
	ld	hl, #_Letter2Data
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0001)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0002)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x0003)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x0004)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x0005)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x0006)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x0007)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x0008)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x0009)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x000a)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x000b)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x000c)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x000d)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x000e)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x000f)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0010)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0011)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0012)
	ld	(hl), #0xc7
	ld	hl, #(_Letter2Data + 0x0013)
	ld	(hl), #0xc7
	ld	hl, #(_Letter2Data + 0x0014)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x0015)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x0016)
	ld	(hl), #0xc7
	ld	hl, #(_Letter2Data + 0x0017)
	ld	(hl), #0xc7
	ld	hl, #(_Letter2Data + 0x0018)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x0019)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x001a)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x001b)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x001c)
	ld	(hl), #0xc7
	ld	hl, #(_Letter2Data + 0x001d)
	ld	(hl), #0xc7
	ld	hl, #(_Letter2Data + 0x001e)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x001f)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0020)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0021)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0022)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x0023)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x0024)
	ld	(hl), #0xdf
	ld	hl, #(_Letter2Data + 0x0025)
	ld	(hl), #0xdf
	ld	hl, #(_Letter2Data + 0x0026)
	ld	(hl), #0xdf
	ld	hl, #(_Letter2Data + 0x0027)
	ld	(hl), #0xdf
	ld	hl, #(_Letter2Data + 0x0028)
	ld	(hl), #0xdf
	ld	hl, #(_Letter2Data + 0x0029)
	ld	(hl), #0xdf
	ld	hl, #(_Letter2Data + 0x002a)
	ld	(hl), #0xdf
	ld	hl, #(_Letter2Data + 0x002b)
	ld	(hl), #0xdf
	ld	hl, #(_Letter2Data + 0x002c)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x002d)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x002e)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x002f)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0030)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0031)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0032)
	ld	(hl), #0xc7
	ld	hl, #(_Letter2Data + 0x0033)
	ld	(hl), #0xc7
	ld	hl, #(_Letter2Data + 0x0034)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x0035)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x0036)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x0037)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x0038)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x0039)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x003a)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x003b)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x003c)
	ld	(hl), #0xc7
	ld	hl, #(_Letter2Data + 0x003d)
	ld	(hl), #0xc7
	ld	hl, #(_Letter2Data + 0x003e)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x003f)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0040)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0041)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0042)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x0043)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x0044)
	ld	(hl), #0xdf
	ld	hl, #(_Letter2Data + 0x0045)
	ld	(hl), #0xdf
	ld	hl, #(_Letter2Data + 0x0046)
	ld	(hl), #0xc7
	ld	hl, #(_Letter2Data + 0x0047)
	ld	(hl), #0xc7
	ld	hl, #(_Letter2Data + 0x0048)
	ld	(hl), #0xdf
	ld	hl, #(_Letter2Data + 0x0049)
	ld	(hl), #0xdf
	ld	hl, #(_Letter2Data + 0x004a)
	ld	(hl), #0xdf
	ld	hl, #(_Letter2Data + 0x004b)
	ld	(hl), #0xdf
	ld	hl, #(_Letter2Data + 0x004c)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x004d)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x004e)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x004f)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0050)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0051)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0052)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x0053)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x0054)
	ld	(hl), #0xdf
	ld	hl, #(_Letter2Data + 0x0055)
	ld	(hl), #0xdf
	ld	hl, #(_Letter2Data + 0x0056)
	ld	(hl), #0xc7
	ld	hl, #(_Letter2Data + 0x0057)
	ld	(hl), #0xc7
	ld	hl, #(_Letter2Data + 0x0058)
	ld	(hl), #0xdf
	ld	hl, #(_Letter2Data + 0x0059)
	ld	(hl), #0xdf
	ld	hl, #(_Letter2Data + 0x005a)
	ld	(hl), #0xdf
	ld	hl, #(_Letter2Data + 0x005b)
	ld	(hl), #0xdf
	ld	hl, #(_Letter2Data + 0x005c)
	ld	(hl), #0xdf
	ld	hl, #(_Letter2Data + 0x005d)
	ld	(hl), #0xdf
	ld	hl, #(_Letter2Data + 0x005e)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x005f)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0060)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0061)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0062)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x0063)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x0064)
	ld	(hl), #0xdf
	ld	hl, #(_Letter2Data + 0x0065)
	ld	(hl), #0xdf
	ld	hl, #(_Letter2Data + 0x0066)
	ld	(hl), #0xd3
	ld	hl, #(_Letter2Data + 0x0067)
	ld	(hl), #0xd3
	ld	hl, #(_Letter2Data + 0x0068)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x0069)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x006a)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x006b)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x006c)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x006d)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x006e)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x006f)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0070)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0071)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0072)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x0073)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x0074)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x0075)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x0076)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x0077)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x0078)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x0079)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x007a)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x007b)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x007c)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x007d)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x007e)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x007f)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0080)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0081)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0082)
	ld	(hl), #0xc1
	ld	hl, #(_Letter2Data + 0x0083)
	ld	(hl), #0xc1
	ld	hl, #(_Letter2Data + 0x0084)
	ld	(hl), #0xf7
	ld	hl, #(_Letter2Data + 0x0085)
	ld	(hl), #0xf7
	ld	hl, #(_Letter2Data + 0x0086)
	ld	(hl), #0xf7
	ld	hl, #(_Letter2Data + 0x0087)
	ld	(hl), #0xf7
	ld	hl, #(_Letter2Data + 0x0088)
	ld	(hl), #0xf7
	ld	hl, #(_Letter2Data + 0x0089)
	ld	(hl), #0xf7
	ld	hl, #(_Letter2Data + 0x008a)
	ld	(hl), #0xf7
	ld	hl, #(_Letter2Data + 0x008b)
	ld	(hl), #0xf7
	ld	hl, #(_Letter2Data + 0x008c)
	ld	(hl), #0xc1
	ld	hl, #(_Letter2Data + 0x008d)
	ld	(hl), #0xc1
	ld	hl, #(_Letter2Data + 0x008e)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x008f)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0090)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0091)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0092)
	ld	(hl), #0xc1
	ld	hl, #(_Letter2Data + 0x0093)
	ld	(hl), #0xc1
	ld	hl, #(_Letter2Data + 0x0094)
	ld	(hl), #0xf7
	ld	hl, #(_Letter2Data + 0x0095)
	ld	(hl), #0xf7
	ld	hl, #(_Letter2Data + 0x0096)
	ld	(hl), #0xf7
	ld	hl, #(_Letter2Data + 0x0097)
	ld	(hl), #0xf7
	ld	hl, #(_Letter2Data + 0x0098)
	ld	(hl), #0xf7
	ld	hl, #(_Letter2Data + 0x0099)
	ld	(hl), #0xf7
	ld	hl, #(_Letter2Data + 0x009a)
	ld	(hl), #0xd7
	ld	hl, #(_Letter2Data + 0x009b)
	ld	(hl), #0xd7
	ld	hl, #(_Letter2Data + 0x009c)
	ld	(hl), #0xc7
	ld	hl, #(_Letter2Data + 0x009d)
	ld	(hl), #0xc7
	ld	hl, #(_Letter2Data + 0x009e)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x009f)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x00a0)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x00a1)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x00a2)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x00a3)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x00a4)
	ld	(hl), #0xd7
	ld	hl, #(_Letter2Data + 0x00a5)
	ld	(hl), #0xd7
	ld	hl, #(_Letter2Data + 0x00a6)
	ld	(hl), #0xcf
	ld	hl, #(_Letter2Data + 0x00a7)
	ld	(hl), #0xcf
	ld	hl, #(_Letter2Data + 0x00a8)
	ld	(hl), #0xd7
	ld	hl, #(_Letter2Data + 0x00a9)
	ld	(hl), #0xd7
	ld	hl, #(_Letter2Data + 0x00aa)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x00ab)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x00ac)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x00ad)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x00ae)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x00af)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x00b0)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x00b1)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x00b2)
	ld	(hl), #0xdf
	ld	hl, #(_Letter2Data + 0x00b3)
	ld	(hl), #0xdf
	ld	hl, #(_Letter2Data + 0x00b4)
	ld	(hl), #0xdf
	ld	hl, #(_Letter2Data + 0x00b5)
	ld	(hl), #0xdf
	ld	hl, #(_Letter2Data + 0x00b6)
	ld	(hl), #0xdf
	ld	hl, #(_Letter2Data + 0x00b7)
	ld	(hl), #0xdf
	ld	hl, #(_Letter2Data + 0x00b8)
	ld	(hl), #0xdf
	ld	hl, #(_Letter2Data + 0x00b9)
	ld	(hl), #0xdf
	ld	hl, #(_Letter2Data + 0x00ba)
	ld	(hl), #0xdf
	ld	hl, #(_Letter2Data + 0x00bb)
	ld	(hl), #0xdf
	ld	hl, #(_Letter2Data + 0x00bc)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x00bd)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x00be)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x00bf)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x00c0)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x00c1)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x00c2)
	ld	(hl), #0xc1
	ld	hl, #(_Letter2Data + 0x00c3)
	ld	(hl), #0xc1
	ld	hl, #(_Letter2Data + 0x00c4)
	ld	(hl), #0xd5
	ld	hl, #(_Letter2Data + 0x00c5)
	ld	(hl), #0xd5
	ld	hl, #(_Letter2Data + 0x00c6)
	ld	(hl), #0xd5
	ld	hl, #(_Letter2Data + 0x00c7)
	ld	(hl), #0xd5
	ld	hl, #(_Letter2Data + 0x00c8)
	ld	(hl), #0xdd
	ld	hl, #(_Letter2Data + 0x00c9)
	ld	(hl), #0xdd
	ld	hl, #(_Letter2Data + 0x00ca)
	ld	(hl), #0xdd
	ld	hl, #(_Letter2Data + 0x00cb)
	ld	(hl), #0xdd
	ld	hl, #(_Letter2Data + 0x00cc)
	ld	(hl), #0xdd
	ld	hl, #(_Letter2Data + 0x00cd)
	ld	(hl), #0xdd
	ld	hl, #(_Letter2Data + 0x00ce)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x00cf)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x00d0)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x00d1)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x00d2)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x00d3)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x00d4)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x00d5)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x00d6)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x00d7)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x00d8)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x00d9)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x00da)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x00db)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x00dc)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x00dd)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x00de)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x00df)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x00e0)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x00e1)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x00e2)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x00e3)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x00e4)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x00e5)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x00e6)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x00e7)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x00e8)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x00e9)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x00ea)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x00eb)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x00ec)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x00ed)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x00ee)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x00ef)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x00f0)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x00f1)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x00f2)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x00f3)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x00f4)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x00f5)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x00f6)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x00f7)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x00f8)
	ld	(hl), #0xdf
	ld	hl, #(_Letter2Data + 0x00f9)
	ld	(hl), #0xdf
	ld	hl, #(_Letter2Data + 0x00fa)
	ld	(hl), #0xdf
	ld	hl, #(_Letter2Data + 0x00fb)
	ld	(hl), #0xdf
	ld	hl, #(_Letter2Data + 0x00fc)
	ld	(hl), #0xdf
	ld	hl, #(_Letter2Data + 0x00fd)
	ld	(hl), #0xdf
	ld	hl, #(_Letter2Data + 0x00fe)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x00ff)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0100)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0101)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0102)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x0103)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x0104)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x0105)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x0106)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x0107)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x0108)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x0109)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x010a)
	ld	(hl), #0xd3
	ld	hl, #(_Letter2Data + 0x010b)
	ld	(hl), #0xd3
	ld	hl, #(_Letter2Data + 0x010c)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x010d)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x010e)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x010f)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0110)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0111)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0112)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x0113)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x0114)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x0115)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x0116)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x0117)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x0118)
	ld	(hl), #0xd7
	ld	hl, #(_Letter2Data + 0x0119)
	ld	(hl), #0xd7
	ld	hl, #(_Letter2Data + 0x011a)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x011b)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x011c)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x011d)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x011e)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x011f)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0120)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0121)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0122)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x0123)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x0124)
	ld	(hl), #0xdf
	ld	hl, #(_Letter2Data + 0x0125)
	ld	(hl), #0xdf
	ld	hl, #(_Letter2Data + 0x0126)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x0127)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x0128)
	ld	(hl), #0xfb
	ld	hl, #(_Letter2Data + 0x0129)
	ld	(hl), #0xfb
	ld	hl, #(_Letter2Data + 0x012a)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x012b)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x012c)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x012d)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x012e)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x012f)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0130)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0131)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0132)
	ld	(hl), #0xc1
	ld	hl, #(_Letter2Data + 0x0133)
	ld	(hl), #0xc1
	ld	hl, #(_Letter2Data + 0x0134)
	ld	(hl), #0xf7
	ld	hl, #(_Letter2Data + 0x0135)
	ld	(hl), #0xf7
	ld	hl, #(_Letter2Data + 0x0136)
	ld	(hl), #0xf7
	ld	hl, #(_Letter2Data + 0x0137)
	ld	(hl), #0xf7
	ld	hl, #(_Letter2Data + 0x0138)
	ld	(hl), #0xf7
	ld	hl, #(_Letter2Data + 0x0139)
	ld	(hl), #0xf7
	ld	hl, #(_Letter2Data + 0x013a)
	ld	(hl), #0xf7
	ld	hl, #(_Letter2Data + 0x013b)
	ld	(hl), #0xf7
	ld	hl, #(_Letter2Data + 0x013c)
	ld	(hl), #0xf7
	ld	hl, #(_Letter2Data + 0x013d)
	ld	(hl), #0xf7
	ld	hl, #(_Letter2Data + 0x013e)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x013f)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0140)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0141)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0142)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x0143)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x0144)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x0145)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x0146)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x0147)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x0148)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x0149)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x014a)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x014b)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x014c)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x014d)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x014e)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x014f)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0150)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0151)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0152)
	ld	(hl), #0xdd
	ld	hl, #(_Letter2Data + 0x0153)
	ld	(hl), #0xdd
	ld	hl, #(_Letter2Data + 0x0154)
	ld	(hl), #0xdd
	ld	hl, #(_Letter2Data + 0x0155)
	ld	(hl), #0xdd
	ld	hl, #(_Letter2Data + 0x0156)
	ld	(hl), #0xdd
	ld	hl, #(_Letter2Data + 0x0157)
	ld	(hl), #0xdd
	ld	hl, #(_Letter2Data + 0x0158)
	ld	(hl), #0xdd
	ld	hl, #(_Letter2Data + 0x0159)
	ld	(hl), #0xdd
	ld	hl, #(_Letter2Data + 0x015a)
	ld	(hl), #0xeb
	ld	hl, #(_Letter2Data + 0x015b)
	ld	(hl), #0xeb
	ld	hl, #(_Letter2Data + 0x015c)
	ld	(hl), #0xf7
	ld	hl, #(_Letter2Data + 0x015d)
	ld	(hl), #0xf7
	ld	hl, #(_Letter2Data + 0x015e)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x015f)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0160)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0161)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0162)
	ld	(hl), #0xdd
	ld	hl, #(_Letter2Data + 0x0163)
	ld	(hl), #0xdd
	ld	hl, #(_Letter2Data + 0x0164)
	ld	(hl), #0xdd
	ld	hl, #(_Letter2Data + 0x0165)
	ld	(hl), #0xdd
	ld	hl, #(_Letter2Data + 0x0166)
	ld	(hl), #0xdd
	ld	hl, #(_Letter2Data + 0x0167)
	ld	(hl), #0xdd
	ld	hl, #(_Letter2Data + 0x0168)
	ld	(hl), #0xd5
	ld	hl, #(_Letter2Data + 0x0169)
	ld	(hl), #0xd5
	ld	hl, #(_Letter2Data + 0x016a)
	ld	(hl), #0xd5
	ld	hl, #(_Letter2Data + 0x016b)
	ld	(hl), #0xd5
	ld	hl, #(_Letter2Data + 0x016c)
	ld	(hl), #0xc1
	ld	hl, #(_Letter2Data + 0x016d)
	ld	(hl), #0xc1
	ld	hl, #(_Letter2Data + 0x016e)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x016f)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0170)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0171)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0172)
	ld	(hl), #0xdd
	ld	hl, #(_Letter2Data + 0x0173)
	ld	(hl), #0xdd
	ld	hl, #(_Letter2Data + 0x0174)
	ld	(hl), #0xeb
	ld	hl, #(_Letter2Data + 0x0175)
	ld	(hl), #0xeb
	ld	hl, #(_Letter2Data + 0x0176)
	ld	(hl), #0xf7
	ld	hl, #(_Letter2Data + 0x0177)
	ld	(hl), #0xf7
	ld	hl, #(_Letter2Data + 0x0178)
	ld	(hl), #0xeb
	ld	hl, #(_Letter2Data + 0x0179)
	ld	(hl), #0xeb
	ld	hl, #(_Letter2Data + 0x017a)
	ld	(hl), #0xdd
	ld	hl, #(_Letter2Data + 0x017b)
	ld	(hl), #0xdd
	ld	hl, #(_Letter2Data + 0x017c)
	ld	(hl), #0xdd
	ld	hl, #(_Letter2Data + 0x017d)
	ld	(hl), #0xdd
	ld	hl, #(_Letter2Data + 0x017e)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x017f)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0180)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0181)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0182)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x0183)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x0184)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x0185)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x0186)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x0187)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x0188)
	ld	(hl), #0xfb
	ld	hl, #(_Letter2Data + 0x0189)
	ld	(hl), #0xfb
	ld	hl, #(_Letter2Data + 0x018a)
	ld	(hl), #0xfb
	ld	hl, #(_Letter2Data + 0x018b)
	ld	(hl), #0xfb
	ld	hl, #(_Letter2Data + 0x018c)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x018d)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x018e)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x018f)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0190)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0191)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0192)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x0193)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x0194)
	ld	(hl), #0xfb
	ld	hl, #(_Letter2Data + 0x0195)
	ld	(hl), #0xfb
	ld	hl, #(_Letter2Data + 0x0196)
	ld	(hl), #0xf7
	ld	hl, #(_Letter2Data + 0x0197)
	ld	(hl), #0xf7
	ld	hl, #(_Letter2Data + 0x0198)
	ld	(hl), #0xef
	ld	hl, #(_Letter2Data + 0x0199)
	ld	(hl), #0xef
	ld	hl, #(_Letter2Data + 0x019a)
	ld	(hl), #0xdf
	ld	hl, #(_Letter2Data + 0x019b)
	ld	(hl), #0xdf
	ld	hl, #(_Letter2Data + 0x019c)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x019d)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x019e)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x019f)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x01a0)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x01a1)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x01a2)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x01a3)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x01a4)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x01a5)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x01a6)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x01a7)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x01a8)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x01a9)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x01aa)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x01ab)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x01ac)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x01ad)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x01ae)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x01af)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x01b0)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x01b1)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x01b2)
	ld	(hl), #0xe7
	ld	hl, #(_Letter2Data + 0x01b3)
	ld	(hl), #0xe7
	ld	hl, #(_Letter2Data + 0x01b4)
	ld	(hl), #0xf7
	ld	hl, #(_Letter2Data + 0x01b5)
	ld	(hl), #0xf7
	ld	hl, #(_Letter2Data + 0x01b6)
	ld	(hl), #0xf7
	ld	hl, #(_Letter2Data + 0x01b7)
	ld	(hl), #0xf7
	ld	hl, #(_Letter2Data + 0x01b8)
	ld	(hl), #0xf7
	ld	hl, #(_Letter2Data + 0x01b9)
	ld	(hl), #0xf7
	ld	hl, #(_Letter2Data + 0x01ba)
	ld	(hl), #0xf7
	ld	hl, #(_Letter2Data + 0x01bb)
	ld	(hl), #0xf7
	ld	hl, #(_Letter2Data + 0x01bc)
	ld	(hl), #0xf7
	ld	hl, #(_Letter2Data + 0x01bd)
	ld	(hl), #0xf7
	ld	hl, #(_Letter2Data + 0x01be)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x01bf)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x01c0)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x01c1)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x01c2)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x01c3)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x01c4)
	ld	(hl), #0xfb
	ld	hl, #(_Letter2Data + 0x01c5)
	ld	(hl), #0xfb
	ld	hl, #(_Letter2Data + 0x01c6)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x01c7)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x01c8)
	ld	(hl), #0xdf
	ld	hl, #(_Letter2Data + 0x01c9)
	ld	(hl), #0xdf
	ld	hl, #(_Letter2Data + 0x01ca)
	ld	(hl), #0xdf
	ld	hl, #(_Letter2Data + 0x01cb)
	ld	(hl), #0xdf
	ld	hl, #(_Letter2Data + 0x01cc)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x01cd)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x01ce)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x01cf)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x01d0)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x01d1)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x01d2)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x01d3)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x01d4)
	ld	(hl), #0xfb
	ld	hl, #(_Letter2Data + 0x01d5)
	ld	(hl), #0xfb
	ld	hl, #(_Letter2Data + 0x01d6)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x01d7)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x01d8)
	ld	(hl), #0xfb
	ld	hl, #(_Letter2Data + 0x01d9)
	ld	(hl), #0xfb
	ld	hl, #(_Letter2Data + 0x01da)
	ld	(hl), #0xfb
	ld	hl, #(_Letter2Data + 0x01db)
	ld	(hl), #0xfb
	ld	hl, #(_Letter2Data + 0x01dc)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x01dd)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x01de)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x01df)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x01e0)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x01e1)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x01e2)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x01e3)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x01e4)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x01e5)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x01e6)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x01e7)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x01e8)
	ld	(hl), #0xfb
	ld	hl, #(_Letter2Data + 0x01e9)
	ld	(hl), #0xfb
	ld	hl, #(_Letter2Data + 0x01ea)
	ld	(hl), #0xfb
	ld	hl, #(_Letter2Data + 0x01eb)
	ld	(hl), #0xfb
	ld	hl, #(_Letter2Data + 0x01ec)
	ld	(hl), #0xfb
	ld	hl, #(_Letter2Data + 0x01ed)
	ld	(hl), #0xfb
	ld	hl, #(_Letter2Data + 0x01ee)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x01ef)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x01f0)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x01f1)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x01f2)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x01f3)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x01f4)
	ld	(hl), #0xdf
	ld	hl, #(_Letter2Data + 0x01f5)
	ld	(hl), #0xdf
	ld	hl, #(_Letter2Data + 0x01f6)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x01f7)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x01f8)
	ld	(hl), #0xfb
	ld	hl, #(_Letter2Data + 0x01f9)
	ld	(hl), #0xfb
	ld	hl, #(_Letter2Data + 0x01fa)
	ld	(hl), #0xfb
	ld	hl, #(_Letter2Data + 0x01fb)
	ld	(hl), #0xfb
	ld	hl, #(_Letter2Data + 0x01fc)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x01fd)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x01fe)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x01ff)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0200)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0201)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0202)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x0203)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x0204)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x0205)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x0206)
	ld	(hl), #0xdf
	ld	hl, #(_Letter2Data + 0x0207)
	ld	(hl), #0xdf
	ld	hl, #(_Letter2Data + 0x0208)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x0209)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x020a)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x020b)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x020c)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x020d)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x020e)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x020f)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0210)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0211)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0212)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x0213)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x0214)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x0215)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x0216)
	ld	(hl), #0xfb
	ld	hl, #(_Letter2Data + 0x0217)
	ld	(hl), #0xfb
	ld	hl, #(_Letter2Data + 0x0218)
	ld	(hl), #0xfb
	ld	hl, #(_Letter2Data + 0x0219)
	ld	(hl), #0xfb
	ld	hl, #(_Letter2Data + 0x021a)
	ld	(hl), #0xfb
	ld	hl, #(_Letter2Data + 0x021b)
	ld	(hl), #0xfb
	ld	hl, #(_Letter2Data + 0x021c)
	ld	(hl), #0xfb
	ld	hl, #(_Letter2Data + 0x021d)
	ld	(hl), #0xfb
	ld	hl, #(_Letter2Data + 0x021e)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x021f)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0220)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0221)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0222)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x0223)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x0224)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x0225)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x0226)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x0227)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x0228)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x0229)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x022a)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x022b)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x022c)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x022d)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x022e)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x022f)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0230)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0231)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0232)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x0233)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x0234)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x0235)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x0236)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x0237)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x0238)
	ld	(hl), #0xfb
	ld	hl, #(_Letter2Data + 0x0239)
	ld	(hl), #0xfb
	ld	hl, #(_Letter2Data + 0x023a)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x023b)
	ld	(hl), #0xdb
	ld	hl, #(_Letter2Data + 0x023c)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x023d)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x023e)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x023f)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0240)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0241)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0242)
	ld	(hl), #0xef
	ld	hl, #(_Letter2Data + 0x0243)
	ld	(hl), #0xef
	ld	hl, #(_Letter2Data + 0x0244)
	ld	(hl), #0xef
	ld	hl, #(_Letter2Data + 0x0245)
	ld	(hl), #0xef
	ld	hl, #(_Letter2Data + 0x0246)
	ld	(hl), #0xef
	ld	hl, #(_Letter2Data + 0x0247)
	ld	(hl), #0xef
	ld	hl, #(_Letter2Data + 0x0248)
	ld	(hl), #0xef
	ld	hl, #(_Letter2Data + 0x0249)
	ld	(hl), #0xef
	ld	hl, #(_Letter2Data + 0x024a)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x024b)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x024c)
	ld	(hl), #0xef
	ld	hl, #(_Letter2Data + 0x024d)
	ld	(hl), #0xef
	ld	hl, #(_Letter2Data + 0x024e)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x024f)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0250)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0251)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0252)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x0253)
	ld	(hl), #0xc3
	ld	hl, #(_Letter2Data + 0x0254)
	ld	(hl), #0xfb
	ld	hl, #(_Letter2Data + 0x0255)
	ld	(hl), #0xfb
	ld	hl, #(_Letter2Data + 0x0256)
	ld	(hl), #0xe3
	ld	hl, #(_Letter2Data + 0x0257)
	ld	(hl), #0xe3
	ld	hl, #(_Letter2Data + 0x0258)
	ld	(hl), #0xef
	ld	hl, #(_Letter2Data + 0x0259)
	ld	(hl), #0xef
	ld	hl, #(_Letter2Data + 0x025a)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x025b)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x025c)
	ld	(hl), #0xef
	ld	hl, #(_Letter2Data + 0x025d)
	ld	(hl), #0xef
	ld	hl, #(_Letter2Data + 0x025e)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x025f)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0260)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0261)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0262)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0263)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0264)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0265)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0266)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0267)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0268)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0269)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x026a)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x026b)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x026c)
	ld	(hl), #0xd5
	ld	hl, #(_Letter2Data + 0x026d)
	ld	(hl), #0xd5
	ld	hl, #(_Letter2Data + 0x026e)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x026f)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0270)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0271)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0272)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0273)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0274)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0275)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0276)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0277)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0278)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0279)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x027a)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x027b)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x027c)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x027d)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x027e)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x027f)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x0280)
	ld	(hl), #0x80
	ld	hl, #(_Letter2Data + 0x0281)
	ld	(hl), #0x80
	ld	hl, #(_Letter2Data + 0x0282)
	ld	(hl), #0x3f
	ld	hl, #(_Letter2Data + 0x0283)
	ld	(hl), #0x3f
	ld	hl, #(_Letter2Data + 0x0284)
	ld	(hl), #0x60
	ld	hl, #(_Letter2Data + 0x0285)
	ld	(hl), #0x60
	ld	hl, #(_Letter2Data + 0x0286)
	ld	(hl), #0x40
	ld	hl, #(_Letter2Data + 0x0287)
	ld	(hl), #0x40
	ld	hl, #(_Letter2Data + 0x0288)
	ld	(hl), #0x4f
	ld	hl, #(_Letter2Data + 0x0289)
	ld	(hl), #0x4f
	ld	hl, #(_Letter2Data + 0x028a)
	ld	(hl), #0x48
	ld	hl, #(_Letter2Data + 0x028b)
	ld	(hl), #0x48
	ld	hl, #(_Letter2Data + 0x028c)
	ld	(hl), #0x4b
	ld	hl, #(_Letter2Data + 0x028d)
	ld	(hl), #0x4b
	ld	hl, #(_Letter2Data + 0x028e)
	ld	(hl), #0x4b
	ld	hl, #(_Letter2Data + 0x028f)
	ld	(hl), #0x4b
	ld	hl, #(_Letter2Data + 0x0290)
	ld	(hl), #0x4b
	ld	hl, #(_Letter2Data + 0x0291)
	ld	(hl), #0x4b
	ld	hl, #(_Letter2Data + 0x0292)
	ld	(hl), #0xcb
	ld	hl, #(_Letter2Data + 0x0293)
	ld	(hl), #0xcb
	ld	hl, #(_Letter2Data + 0x0294)
	ld	(hl), #0x0b
	ld	hl, #(_Letter2Data + 0x0295)
	ld	(hl), #0x0b
	ld	hl, #(_Letter2Data + 0x0296)
	ld	(hl), #0x1b
	ld	hl, #(_Letter2Data + 0x0297)
	ld	(hl), #0x1b
	ld	hl, #(_Letter2Data + 0x0298)
	ld	(hl), #0xf3
	ld	hl, #(_Letter2Data + 0x0299)
	ld	(hl), #0xf3
	ld	hl, #(_Letter2Data + 0x029a)
	ld	(hl), #0x07
	ld	hl, #(_Letter2Data + 0x029b)
	ld	(hl), #0x07
	ld	hl, #(_Letter2Data + 0x029c)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x029d)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x029e)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x029f)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x02a0)
	ld	(hl), #0x07
	ld	hl, #(_Letter2Data + 0x02a1)
	ld	(hl), #0x07
	ld	hl, #(_Letter2Data + 0x02a2)
	ld	(hl), #0xf3
	ld	hl, #(_Letter2Data + 0x02a3)
	ld	(hl), #0xf3
	ld	hl, #(_Letter2Data + 0x02a4)
	ld	(hl), #0x1b
	ld	hl, #(_Letter2Data + 0x02a5)
	ld	(hl), #0x1b
	ld	hl, #(_Letter2Data + 0x02a6)
	ld	(hl), #0x0b
	ld	hl, #(_Letter2Data + 0x02a7)
	ld	(hl), #0x0b
	ld	hl, #(_Letter2Data + 0x02a8)
	ld	(hl), #0xcb
	ld	hl, #(_Letter2Data + 0x02a9)
	ld	(hl), #0xcb
	ld	hl, #(_Letter2Data + 0x02aa)
	ld	(hl), #0x4b
	ld	hl, #(_Letter2Data + 0x02ab)
	ld	(hl), #0x4b
	ld	hl, #(_Letter2Data + 0x02ac)
	ld	(hl), #0x4b
	ld	hl, #(_Letter2Data + 0x02ad)
	ld	(hl), #0x4b
	ld	hl, #(_Letter2Data + 0x02ae)
	ld	(hl), #0x4b
	ld	hl, #(_Letter2Data + 0x02af)
	ld	(hl), #0x4b
	ld	hl, #(_Letter2Data + 0x02b0)
	ld	(hl), #0x48
	ld	hl, #(_Letter2Data + 0x02b1)
	ld	(hl), #0x48
	ld	hl, #(_Letter2Data + 0x02b2)
	ld	(hl), #0x4f
	ld	hl, #(_Letter2Data + 0x02b3)
	ld	(hl), #0x4f
	ld	hl, #(_Letter2Data + 0x02b4)
	ld	(hl), #0x40
	ld	hl, #(_Letter2Data + 0x02b5)
	ld	(hl), #0x40
	ld	hl, #(_Letter2Data + 0x02b6)
	ld	(hl), #0x60
	ld	hl, #(_Letter2Data + 0x02b7)
	ld	(hl), #0x60
	ld	hl, #(_Letter2Data + 0x02b8)
	ld	(hl), #0x3f
	ld	hl, #(_Letter2Data + 0x02b9)
	ld	(hl), #0x3f
	ld	hl, #(_Letter2Data + 0x02ba)
	ld	(hl), #0x80
	ld	hl, #(_Letter2Data + 0x02bb)
	ld	(hl), #0x80
	ld	hl, #(_Letter2Data + 0x02bc)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x02bd)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x02be)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x02bf)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x02c0)
	ld	(hl), #0x4b
	ld	hl, #(_Letter2Data + 0x02c1)
	ld	(hl), #0x4b
	ld	hl, #(_Letter2Data + 0x02c2)
	ld	(hl), #0x4b
	ld	hl, #(_Letter2Data + 0x02c3)
	ld	(hl), #0x4b
	ld	hl, #(_Letter2Data + 0x02c4)
	ld	(hl), #0x4b
	ld	hl, #(_Letter2Data + 0x02c5)
	ld	(hl), #0x4b
	ld	hl, #(_Letter2Data + 0x02c6)
	ld	(hl), #0x4b
	ld	hl, #(_Letter2Data + 0x02c7)
	ld	(hl), #0x4b
	ld	hl, #(_Letter2Data + 0x02c8)
	ld	(hl), #0x4b
	ld	hl, #(_Letter2Data + 0x02c9)
	ld	(hl), #0x4b
	ld	hl, #(_Letter2Data + 0x02ca)
	ld	(hl), #0x4b
	ld	hl, #(_Letter2Data + 0x02cb)
	ld	(hl), #0x4b
	ld	hl, #(_Letter2Data + 0x02cc)
	ld	(hl), #0x4b
	ld	hl, #(_Letter2Data + 0x02cd)
	ld	(hl), #0x4b
	ld	hl, #(_Letter2Data + 0x02ce)
	ld	(hl), #0x4b
	ld	hl, #(_Letter2Data + 0x02cf)
	ld	(hl), #0x4b
	ld	hl, #(_Letter2Data + 0x02d0)
	ld	(hl), #0x00
	ld	hl, #(_Letter2Data + 0x02d1)
	ld	(hl), #0x00
	ld	hl, #(_Letter2Data + 0x02d2)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x02d3)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x02d4)
	ld	(hl), #0x00
	ld	hl, #(_Letter2Data + 0x02d5)
	ld	(hl), #0x00
	ld	hl, #(_Letter2Data + 0x02d6)
	ld	(hl), #0x00
	ld	hl, #(_Letter2Data + 0x02d7)
	ld	(hl), #0x00
	ld	hl, #(_Letter2Data + 0x02d8)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x02d9)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x02da)
	ld	(hl), #0x00
	ld	hl, #(_Letter2Data + 0x02db)
	ld	(hl), #0x00
	ld	hl, #(_Letter2Data + 0x02dc)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x02dd)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x02de)
	ld	(hl), #0xff
	ld	hl, #(_Letter2Data + 0x02df)
	ld	(hl), #0xff
;Dialogues/test_dialogue.c:25: unsigned char Test1[] =
	ld	hl, #_Test1
	ld	(hl), #0x27
	ld	hl, #(_Test1 + 0x0001)
	ld	(hl), #0x27
	ld	hl, #(_Test1 + 0x0002)
	ld	(hl), #0x27
	ld	hl, #(_Test1 + 0x0003)
	ld	(hl), #0x27
	ld	hl, #(_Test1 + 0x0004)
	ld	(hl), #0x27
	ld	hl, #(_Test1 + 0x0005)
	ld	(hl), #0x27
	ld	hl, #(_Test1 + 0x0006)
	ld	(hl), #0x27
	ld	hl, #(_Test1 + 0x0007)
	ld	(hl), #0x27
	ld	hl, #(_Test1 + 0x0008)
	ld	(hl), #0x27
	ld	hl, #(_Test1 + 0x0009)
	ld	(hl), #0x27
	ld	hl, #(_Test1 + 0x000a)
	ld	(hl), #0x27
	ld	hl, #(_Test1 + 0x000b)
	ld	(hl), #0x27
	ld	hl, #(_Test1 + 0x000c)
	ld	(hl), #0x27
	ld	hl, #(_Test1 + 0x000d)
	ld	(hl), #0x27
	ld	hl, #(_Test1 + 0x000e)
	ld	(hl), #0x27
	ld	hl, #(_Test1 + 0x000f)
	ld	(hl), #0x27
	ld	hl, #(_Test1 + 0x0010)
	ld	(hl), #0x27
	ld	hl, #(_Test1 + 0x0011)
	ld	(hl), #0x27
	ld	hl, #(_Test1 + 0x0012)
	ld	(hl), #0x27
	ld	hl, #(_Test1 + 0x0013)
	ld	(hl), #0x27
	ld	hl, #(_Test1 + 0x0014)
	ld	(hl), #0x27
	ld	hl, #(_Test1 + 0x0015)
	ld	(hl), #0x13
	ld	hl, #(_Test1 + 0x0016)
	ld	(hl), #0x04
	ld	hl, #(_Test1 + 0x0017)
	ld	(hl), #0x12
	ld	hl, #(_Test1 + 0x0018)
	ld	(hl), #0x13
	ld	hl, #(_Test1 + 0x0019)
	ld	(hl), #0x27
	ld	hl, #(_Test1 + 0x001a)
	ld	(hl), #0x27
	ld	hl, #(_Test1 + 0x001b)
	ld	(hl), #0x27
	ld	hl, #(_Test1 + 0x001c)
	ld	(hl), #0x27
	ld	hl, #(_Test1 + 0x001d)
	ld	(hl), #0x27
	ld	hl, #(_Test1 + 0x001e)
	ld	(hl), #0x27
	ld	hl, #(_Test1 + 0x001f)
	ld	(hl), #0x27
	ld	hl, #(_Test1 + 0x0020)
	ld	(hl), #0x27
	ld	hl, #(_Test1 + 0x0021)
	ld	(hl), #0x27
	ld	hl, #(_Test1 + 0x0022)
	ld	(hl), #0x27
	ld	hl, #(_Test1 + 0x0023)
	ld	(hl), #0x27
	ld	hl, #(_Test1 + 0x0024)
	ld	(hl), #0x27
	ld	hl, #(_Test1 + 0x0025)
	ld	(hl), #0x27
	ld	hl, #(_Test1 + 0x0026)
	ld	(hl), #0x27
	ld	hl, #(_Test1 + 0x0027)
	ld	(hl), #0x27
	ld	hl, #(_Test1 + 0x0028)
	ld	(hl), #0x27
	ld	hl, #(_Test1 + 0x0029)
	ld	(hl), #0x27
	ld	hl, #(_Test1 + 0x002a)
	ld	(hl), #0x27
	ld	hl, #(_Test1 + 0x002b)
	ld	(hl), #0x27
	ld	hl, #(_Test1 + 0x002c)
	ld	(hl), #0x27
	ld	hl, #(_Test1 + 0x002d)
	ld	(hl), #0x27
	ld	hl, #(_Test1 + 0x002e)
	ld	(hl), #0x27
	ld	hl, #(_Test1 + 0x002f)
	ld	(hl), #0x27
	ld	hl, #(_Test1 + 0x0030)
	ld	(hl), #0x27
	ld	hl, #(_Test1 + 0x0031)
	ld	(hl), #0x27
	ld	hl, #(_Test1 + 0x0032)
	ld	(hl), #0x27
	ld	hl, #(_Test1 + 0x0033)
	ld	(hl), #0x27
	ld	hl, #(_Test1 + 0x0034)
	ld	(hl), #0x27
	ld	hl, #(_Test1 + 0x0035)
	ld	(hl), #0x27
	ld	hl, #(_Test1 + 0x0036)
	ld	(hl), #0x27
	ld	hl, #(_Test1 + 0x0037)
	ld	(hl), #0x27
	ld	hl, #(_Test1 + 0x0038)
	ld	(hl), #0x27
	ld	hl, #(_Test1 + 0x0039)
	ld	(hl), #0x27
	ld	hl, #(_Test1 + 0x003a)
	ld	(hl), #0x27
	ld	hl, #(_Test1 + 0x003b)
	ld	(hl), #0x27
;Dialogues/test2_dialogue.c:25: unsigned char Test2[] =
	ld	hl, #_Test2
	ld	(hl), #0x27
	ld	hl, #(_Test2 + 0x0001)
	ld	(hl), #0x27
	ld	hl, #(_Test2 + 0x0002)
	ld	(hl), #0x27
	ld	hl, #(_Test2 + 0x0003)
	ld	(hl), #0x27
	ld	hl, #(_Test2 + 0x0004)
	ld	(hl), #0x27
	ld	hl, #(_Test2 + 0x0005)
	ld	(hl), #0x27
	ld	hl, #(_Test2 + 0x0006)
	ld	(hl), #0x27
	ld	hl, #(_Test2 + 0x0007)
	ld	(hl), #0x27
	ld	hl, #(_Test2 + 0x0008)
	ld	(hl), #0x27
	ld	hl, #(_Test2 + 0x0009)
	ld	(hl), #0x27
	ld	hl, #(_Test2 + 0x000a)
	ld	(hl), #0x27
	ld	hl, #(_Test2 + 0x000b)
	ld	(hl), #0x27
	ld	hl, #(_Test2 + 0x000c)
	ld	(hl), #0x27
	ld	hl, #(_Test2 + 0x000d)
	ld	(hl), #0x27
	ld	hl, #(_Test2 + 0x000e)
	ld	(hl), #0x27
	ld	hl, #(_Test2 + 0x000f)
	ld	(hl), #0x27
	ld	hl, #(_Test2 + 0x0010)
	ld	(hl), #0x27
	ld	hl, #(_Test2 + 0x0011)
	ld	(hl), #0x27
	ld	hl, #(_Test2 + 0x0012)
	ld	(hl), #0x27
	ld	hl, #(_Test2 + 0x0013)
	ld	(hl), #0x27
	ld	hl, #(_Test2 + 0x0014)
	ld	(hl), #0x27
	ld	hl, #(_Test2 + 0x0015)
	ld	(hl), #0x13
	ld	hl, #(_Test2 + 0x0016)
	ld	(hl), #0x04
	ld	hl, #(_Test2 + 0x0017)
	ld	(hl), #0x12
	ld	hl, #(_Test2 + 0x0018)
	ld	(hl), #0x13
	ld	hl, #(_Test2 + 0x0019)
	ld	(hl), #0x1b
	ld	hl, #(_Test2 + 0x001a)
	ld	(hl), #0x27
	ld	hl, #(_Test2 + 0x001b)
	ld	(hl), #0x27
	ld	hl, #(_Test2 + 0x001c)
	ld	(hl), #0x27
	ld	hl, #(_Test2 + 0x001d)
	ld	(hl), #0x27
	ld	hl, #(_Test2 + 0x001e)
	ld	(hl), #0x27
	ld	hl, #(_Test2 + 0x001f)
	ld	(hl), #0x27
	ld	hl, #(_Test2 + 0x0020)
	ld	(hl), #0x27
	ld	hl, #(_Test2 + 0x0021)
	ld	(hl), #0x27
	ld	hl, #(_Test2 + 0x0022)
	ld	(hl), #0x27
	ld	hl, #(_Test2 + 0x0023)
	ld	(hl), #0x27
	ld	hl, #(_Test2 + 0x0024)
	ld	(hl), #0x27
	ld	hl, #(_Test2 + 0x0025)
	ld	(hl), #0x27
	ld	hl, #(_Test2 + 0x0026)
	ld	(hl), #0x27
	ld	hl, #(_Test2 + 0x0027)
	ld	(hl), #0x27
	ld	hl, #(_Test2 + 0x0028)
	ld	(hl), #0x27
	ld	hl, #(_Test2 + 0x0029)
	ld	(hl), #0x27
	ld	hl, #(_Test2 + 0x002a)
	ld	(hl), #0x27
	ld	hl, #(_Test2 + 0x002b)
	ld	(hl), #0x27
	ld	hl, #(_Test2 + 0x002c)
	ld	(hl), #0x27
	ld	hl, #(_Test2 + 0x002d)
	ld	(hl), #0x27
	ld	hl, #(_Test2 + 0x002e)
	ld	(hl), #0x27
	ld	hl, #(_Test2 + 0x002f)
	ld	(hl), #0x27
	ld	hl, #(_Test2 + 0x0030)
	ld	(hl), #0x27
	ld	hl, #(_Test2 + 0x0031)
	ld	(hl), #0x27
	ld	hl, #(_Test2 + 0x0032)
	ld	(hl), #0x27
	ld	hl, #(_Test2 + 0x0033)
	ld	(hl), #0x27
	ld	hl, #(_Test2 + 0x0034)
	ld	(hl), #0x27
	ld	hl, #(_Test2 + 0x0035)
	ld	(hl), #0x27
	ld	hl, #(_Test2 + 0x0036)
	ld	(hl), #0x27
	ld	hl, #(_Test2 + 0x0037)
	ld	(hl), #0x27
	ld	hl, #(_Test2 + 0x0038)
	ld	(hl), #0x27
	ld	hl, #(_Test2 + 0x0039)
	ld	(hl), #0x27
	ld	hl, #(_Test2 + 0x003a)
	ld	(hl), #0x27
	ld	hl, #(_Test2 + 0x003b)
	ld	(hl), #0x27
;Dialogues/test3_dialogue.c:25: unsigned char Test3[] =
	ld	hl, #_Test3
	ld	(hl), #0x27
	ld	hl, #(_Test3 + 0x0001)
	ld	(hl), #0x27
	ld	hl, #(_Test3 + 0x0002)
	ld	(hl), #0x27
	ld	hl, #(_Test3 + 0x0003)
	ld	(hl), #0x27
	ld	hl, #(_Test3 + 0x0004)
	ld	(hl), #0x27
	ld	hl, #(_Test3 + 0x0005)
	ld	(hl), #0x27
	ld	hl, #(_Test3 + 0x0006)
	ld	(hl), #0x27
	ld	hl, #(_Test3 + 0x0007)
	ld	(hl), #0x27
	ld	hl, #(_Test3 + 0x0008)
	ld	(hl), #0x27
	ld	hl, #(_Test3 + 0x0009)
	ld	(hl), #0x27
	ld	hl, #(_Test3 + 0x000a)
	ld	(hl), #0x27
	ld	hl, #(_Test3 + 0x000b)
	ld	(hl), #0x27
	ld	hl, #(_Test3 + 0x000c)
	ld	(hl), #0x27
	ld	hl, #(_Test3 + 0x000d)
	ld	(hl), #0x27
	ld	hl, #(_Test3 + 0x000e)
	ld	(hl), #0x27
	ld	hl, #(_Test3 + 0x000f)
	ld	(hl), #0x27
	ld	hl, #(_Test3 + 0x0010)
	ld	(hl), #0x27
	ld	hl, #(_Test3 + 0x0011)
	ld	(hl), #0x27
	ld	hl, #(_Test3 + 0x0012)
	ld	(hl), #0x27
	ld	hl, #(_Test3 + 0x0013)
	ld	(hl), #0x27
	ld	hl, #(_Test3 + 0x0014)
	ld	(hl), #0x27
	ld	hl, #(_Test3 + 0x0015)
	ld	(hl), #0x13
	ld	hl, #(_Test3 + 0x0016)
	ld	(hl), #0x04
	ld	hl, #(_Test3 + 0x0017)
	ld	(hl), #0x12
	ld	hl, #(_Test3 + 0x0018)
	ld	(hl), #0x13
	ld	hl, #(_Test3 + 0x0019)
	ld	(hl), #0x1c
	ld	hl, #(_Test3 + 0x001a)
	ld	(hl), #0x27
	ld	hl, #(_Test3 + 0x001b)
	ld	(hl), #0x27
	ld	hl, #(_Test3 + 0x001c)
	ld	(hl), #0x27
	ld	hl, #(_Test3 + 0x001d)
	ld	(hl), #0x27
	ld	hl, #(_Test3 + 0x001e)
	ld	(hl), #0x27
	ld	hl, #(_Test3 + 0x001f)
	ld	(hl), #0x27
	ld	hl, #(_Test3 + 0x0020)
	ld	(hl), #0x27
	ld	hl, #(_Test3 + 0x0021)
	ld	(hl), #0x27
	ld	hl, #(_Test3 + 0x0022)
	ld	(hl), #0x27
	ld	hl, #(_Test3 + 0x0023)
	ld	(hl), #0x27
	ld	hl, #(_Test3 + 0x0024)
	ld	(hl), #0x27
	ld	hl, #(_Test3 + 0x0025)
	ld	(hl), #0x27
	ld	hl, #(_Test3 + 0x0026)
	ld	(hl), #0x27
	ld	hl, #(_Test3 + 0x0027)
	ld	(hl), #0x27
	ld	hl, #(_Test3 + 0x0028)
	ld	(hl), #0x27
	ld	hl, #(_Test3 + 0x0029)
	ld	(hl), #0x27
	ld	hl, #(_Test3 + 0x002a)
	ld	(hl), #0x27
	ld	hl, #(_Test3 + 0x002b)
	ld	(hl), #0x27
	ld	hl, #(_Test3 + 0x002c)
	ld	(hl), #0x27
	ld	hl, #(_Test3 + 0x002d)
	ld	(hl), #0x27
	ld	hl, #(_Test3 + 0x002e)
	ld	(hl), #0x27
	ld	hl, #(_Test3 + 0x002f)
	ld	(hl), #0x27
	ld	hl, #(_Test3 + 0x0030)
	ld	(hl), #0x27
	ld	hl, #(_Test3 + 0x0031)
	ld	(hl), #0x27
	ld	hl, #(_Test3 + 0x0032)
	ld	(hl), #0x27
	ld	hl, #(_Test3 + 0x0033)
	ld	(hl), #0x27
	ld	hl, #(_Test3 + 0x0034)
	ld	(hl), #0x27
	ld	hl, #(_Test3 + 0x0035)
	ld	(hl), #0x27
	ld	hl, #(_Test3 + 0x0036)
	ld	(hl), #0x27
	ld	hl, #(_Test3 + 0x0037)
	ld	(hl), #0x27
	ld	hl, #(_Test3 + 0x0038)
	ld	(hl), #0x27
	ld	hl, #(_Test3 + 0x0039)
	ld	(hl), #0x27
	ld	hl, #(_Test3 + 0x003a)
	ld	(hl), #0x27
	ld	hl, #(_Test3 + 0x003b)
	ld	(hl), #0x27
;Splashscreens/intro1.c:25: unsigned char Intro1Map[] =
	ld	hl, #_Intro1Map
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0001)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0002)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0003)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0004)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0005)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0006)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0007)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0008)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0009)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x000a)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x000b)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x000c)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x000d)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x000e)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x000f)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0010)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0011)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0012)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0013)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0014)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0015)
	ld	(hl), #0x26
	ld	hl, #(_Intro1Map + 0x0016)
	ld	(hl), #0x16
	ld	hl, #(_Intro1Map + 0x0017)
	ld	(hl), #0x07
	ld	hl, #(_Intro1Map + 0x0018)
	ld	(hl), #0x04
	ld	hl, #(_Intro1Map + 0x0019)
	ld	(hl), #0x11
	ld	hl, #(_Intro1Map + 0x001a)
	ld	(hl), #0x04
	ld	hl, #(_Intro1Map + 0x001b)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x001c)
	ld	(hl), #0x00
	ld	hl, #(_Intro1Map + 0x001d)
	ld	(hl), #0x0c
	ld	hl, #(_Intro1Map + 0x001e)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x001f)
	ld	(hl), #0x08
	ld	hl, #(_Intro1Map + 0x0020)
	ld	(hl), #0x25
	ld	hl, #(_Intro1Map + 0x0021)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0022)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0023)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0024)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0025)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0026)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0027)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0028)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0029)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x002a)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x002b)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x002c)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x002d)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x002e)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x002f)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0030)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0031)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0032)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0033)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0034)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0035)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0036)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0037)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0038)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0039)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x003a)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x003b)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x003c)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x003d)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x003e)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x003f)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0040)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0041)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0042)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0043)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0044)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0045)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0046)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0047)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0048)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0049)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x004a)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x004b)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x004c)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x004d)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x004e)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x004f)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0050)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0051)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0052)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0053)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0054)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0055)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0056)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0057)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0058)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0059)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x005a)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x005b)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x005c)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x005d)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x005e)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x005f)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0060)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0061)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0062)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0063)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0064)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0065)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0066)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0067)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0068)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0069)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x006a)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x006b)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x006c)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x006d)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x006e)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x006f)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0070)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0071)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0072)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0073)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0074)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0075)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0076)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0077)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0078)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0079)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x007a)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x007b)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x007c)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x007d)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x007e)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x007f)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0080)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0081)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0082)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0083)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0084)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0085)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0086)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0087)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0088)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0089)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x008a)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x008b)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x008c)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x008d)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x008e)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x008f)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0090)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0091)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0092)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0093)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0094)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0095)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0096)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0097)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0098)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0099)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x009a)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x009b)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x009c)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x009d)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x009e)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x009f)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00a0)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00a1)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00a2)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00a3)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00a4)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00a5)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00a6)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00a7)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00a8)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00a9)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00aa)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00ab)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00ac)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00ad)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00ae)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00af)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00b0)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00b1)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00b2)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00b3)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00b4)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00b5)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00b6)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00b7)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00b8)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00b9)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00ba)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00bb)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00bc)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00bd)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00be)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00bf)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00c0)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00c1)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00c2)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00c3)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00c4)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00c5)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00c6)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00c7)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00c8)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00c9)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00ca)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00cb)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00cc)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00cd)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00ce)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00cf)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00d0)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00d1)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00d2)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00d3)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00d4)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00d5)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00d6)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00d7)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00d8)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00d9)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00da)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00db)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00dc)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00dd)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00de)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00df)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00e0)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00e1)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00e2)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00e3)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00e4)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00e5)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00e6)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00e7)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00e8)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00e9)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00ea)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00eb)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00ec)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00ed)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00ee)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00ef)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00f0)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00f1)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00f2)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00f3)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00f4)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00f5)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00f6)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00f7)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00f8)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00f9)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00fa)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00fb)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00fc)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00fd)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00fe)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x00ff)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0100)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0101)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0102)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0103)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0104)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0105)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0106)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0107)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0108)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0109)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x010a)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x010b)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x010c)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x010d)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x010e)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x010f)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0110)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0111)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0112)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0113)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0114)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0115)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0116)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0117)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0118)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0119)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x011a)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x011b)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x011c)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x011d)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x011e)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x011f)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0120)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0121)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0122)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0123)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0124)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0125)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0126)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0127)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0128)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0129)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x012a)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x012b)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x012c)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x012d)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x012e)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x012f)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0130)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0131)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0132)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0133)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0134)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0135)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0136)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0137)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0138)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0139)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x013a)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x013b)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x013c)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x013d)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x013e)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x013f)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0140)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0141)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0142)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0143)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0144)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0145)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0146)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0147)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0148)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0149)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x014a)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x014b)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x014c)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x014d)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x014e)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x014f)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0150)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0151)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0152)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0153)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0154)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0155)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0156)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0157)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0158)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0159)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x015a)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x015b)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x015c)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x015d)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x015e)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x015f)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0160)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0161)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0162)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0163)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0164)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0165)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0166)
	ld	(hl), #0x27
	ld	hl, #(_Intro1Map + 0x0167)
	ld	(hl), #0x27
;Splashscreens/intro2.c:25: unsigned char Intro2Map[] =
	ld	hl, #_Intro2Map
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0001)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0002)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0003)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0004)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0005)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0006)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0007)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0008)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0009)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x000a)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x000b)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x000c)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x000d)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x000e)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x000f)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0010)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0011)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0012)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0013)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0014)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0015)
	ld	(hl), #0x08
	ld	hl, #(_Intro2Map + 0x0016)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0017)
	ld	(hl), #0x16
	ld	hl, #(_Intro2Map + 0x0018)
	ld	(hl), #0x00
	ld	hl, #(_Intro2Map + 0x0019)
	ld	(hl), #0x12
	ld	hl, #(_Intro2Map + 0x001a)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x001b)
	ld	(hl), #0x0f
	ld	hl, #(_Intro2Map + 0x001c)
	ld	(hl), #0x0b
	ld	hl, #(_Intro2Map + 0x001d)
	ld	(hl), #0x00
	ld	hl, #(_Intro2Map + 0x001e)
	ld	(hl), #0x18
	ld	hl, #(_Intro2Map + 0x001f)
	ld	(hl), #0x08
	ld	hl, #(_Intro2Map + 0x0020)
	ld	(hl), #0x0d
	ld	hl, #(_Intro2Map + 0x0021)
	ld	(hl), #0x06
	ld	hl, #(_Intro2Map + 0x0022)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0023)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0024)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0025)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0026)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0027)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0028)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0029)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x002a)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x002b)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x002c)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x002d)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x002e)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x002f)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0030)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0031)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0032)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0033)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0034)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0035)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0036)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0037)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0038)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0039)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x003a)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x003b)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x003c)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x003d)
	ld	(hl), #0x0f
	ld	hl, #(_Intro2Map + 0x003e)
	ld	(hl), #0x0e
	ld	hl, #(_Intro2Map + 0x003f)
	ld	(hl), #0x0a
	ld	hl, #(_Intro2Map + 0x0040)
	ld	(hl), #0x04
	ld	hl, #(_Intro2Map + 0x0041)
	ld	(hl), #0x0c
	ld	hl, #(_Intro2Map + 0x0042)
	ld	(hl), #0x0e
	ld	hl, #(_Intro2Map + 0x0043)
	ld	(hl), #0x0d
	ld	hl, #(_Intro2Map + 0x0044)
	ld	(hl), #0x26
	ld	hl, #(_Intro2Map + 0x0045)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0046)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0047)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0048)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0049)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x004a)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x004b)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x004c)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x004d)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x004e)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x004f)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0050)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0051)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0052)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0053)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0054)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0055)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0056)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0057)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0058)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0059)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x005a)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x005b)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x005c)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x005d)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x005e)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x005f)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0060)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0061)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0062)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0063)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0064)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0065)
	ld	(hl), #0x08
	ld	hl, #(_Intro2Map + 0x0066)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0067)
	ld	(hl), #0x0c
	ld	hl, #(_Intro2Map + 0x0068)
	ld	(hl), #0x14
	ld	hl, #(_Intro2Map + 0x0069)
	ld	(hl), #0x12
	ld	hl, #(_Intro2Map + 0x006a)
	ld	(hl), #0x13
	ld	hl, #(_Intro2Map + 0x006b)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x006c)
	ld	(hl), #0x07
	ld	hl, #(_Intro2Map + 0x006d)
	ld	(hl), #0x00
	ld	hl, #(_Intro2Map + 0x006e)
	ld	(hl), #0x15
	ld	hl, #(_Intro2Map + 0x006f)
	ld	(hl), #0x04
	ld	hl, #(_Intro2Map + 0x0070)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0071)
	ld	(hl), #0x03
	ld	hl, #(_Intro2Map + 0x0072)
	ld	(hl), #0x0e
	ld	hl, #(_Intro2Map + 0x0073)
	ld	(hl), #0x19
	ld	hl, #(_Intro2Map + 0x0074)
	ld	(hl), #0x04
	ld	hl, #(_Intro2Map + 0x0075)
	ld	(hl), #0x03
	ld	hl, #(_Intro2Map + 0x0076)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0077)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0078)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0079)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x007a)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x007b)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x007c)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x007d)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x007e)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x007f)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0080)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0081)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0082)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0083)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0084)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0085)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0086)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0087)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0088)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0089)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x008a)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x008b)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x008c)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x008d)
	ld	(hl), #0x0e
	ld	hl, #(_Intro2Map + 0x008e)
	ld	(hl), #0x05
	ld	hl, #(_Intro2Map + 0x008f)
	ld	(hl), #0x05
	ld	hl, #(_Intro2Map + 0x0090)
	ld	(hl), #0x24
	ld	hl, #(_Intro2Map + 0x0091)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0092)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0093)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0094)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0095)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0096)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0097)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0098)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0099)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x009a)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x009b)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x009c)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x009d)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x009e)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x009f)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00a0)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00a1)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00a2)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00a3)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00a4)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00a5)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00a6)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00a7)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00a8)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00a9)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00aa)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00ab)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00ac)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00ad)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00ae)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00af)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00b0)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00b1)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00b2)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00b3)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00b4)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00b5)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00b6)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00b7)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00b8)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00b9)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00ba)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00bb)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00bc)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00bd)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00be)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00bf)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00c0)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00c1)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00c2)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00c3)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00c4)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00c5)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00c6)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00c7)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00c8)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00c9)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00ca)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00cb)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00cc)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00cd)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00ce)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00cf)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00d0)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00d1)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00d2)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00d3)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00d4)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00d5)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00d6)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00d7)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00d8)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00d9)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00da)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00db)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00dc)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00dd)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00de)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00df)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00e0)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00e1)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00e2)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00e3)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00e4)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00e5)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00e6)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00e7)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00e8)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00e9)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00ea)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00eb)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00ec)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00ed)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00ee)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00ef)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00f0)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00f1)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00f2)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00f3)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00f4)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00f5)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00f6)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00f7)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00f8)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00f9)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00fa)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00fb)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00fc)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00fd)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00fe)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x00ff)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0100)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0101)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0102)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0103)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0104)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0105)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0106)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0107)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0108)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0109)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x010a)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x010b)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x010c)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x010d)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x010e)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x010f)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0110)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0111)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0112)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0113)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0114)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0115)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0116)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0117)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0118)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0119)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x011a)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x011b)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x011c)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x011d)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x011e)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x011f)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0120)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0121)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0122)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0123)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0124)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0125)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0126)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0127)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0128)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0129)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x012a)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x012b)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x012c)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x012d)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x012e)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x012f)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0130)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0131)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0132)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0133)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0134)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0135)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0136)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0137)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0138)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0139)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x013a)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x013b)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x013c)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x013d)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x013e)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x013f)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0140)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0141)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0142)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0143)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0144)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0145)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0146)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0147)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0148)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0149)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x014a)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x014b)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x014c)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x014d)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x014e)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x014f)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0150)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0151)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0152)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0153)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0154)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0155)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0156)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0157)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0158)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0159)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x015a)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x015b)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x015c)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x015d)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x015e)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x015f)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0160)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0161)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0162)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0163)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0164)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0165)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0166)
	ld	(hl), #0x27
	ld	hl, #(_Intro2Map + 0x0167)
	ld	(hl), #0x27
;Splashscreens/intro3.c:25: unsigned char Intro3Map[] =
	ld	hl, #_Intro3Map
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0001)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0002)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0003)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0004)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0005)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0006)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0007)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0008)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0009)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x000a)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x000b)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x000c)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x000d)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x000e)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x000f)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0010)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0011)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0012)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0013)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0014)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0015)
	ld	(hl), #0x0e
	ld	hl, #(_Intro3Map + 0x0016)
	ld	(hl), #0x07
	ld	hl, #(_Intro3Map + 0x0017)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0018)
	ld	(hl), #0x08
	ld	hl, #(_Intro3Map + 0x0019)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x001a)
	ld	(hl), #0x12
	ld	hl, #(_Intro3Map + 0x001b)
	ld	(hl), #0x04
	ld	hl, #(_Intro3Map + 0x001c)
	ld	(hl), #0x04
	ld	hl, #(_Intro3Map + 0x001d)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x001e)
	ld	(hl), #0x12
	ld	hl, #(_Intro3Map + 0x001f)
	ld	(hl), #0x0e
	ld	hl, #(_Intro3Map + 0x0020)
	ld	(hl), #0x0c
	ld	hl, #(_Intro3Map + 0x0021)
	ld	(hl), #0x04
	ld	hl, #(_Intro3Map + 0x0022)
	ld	(hl), #0x0e
	ld	hl, #(_Intro3Map + 0x0023)
	ld	(hl), #0x0d
	ld	hl, #(_Intro3Map + 0x0024)
	ld	(hl), #0x04
	ld	hl, #(_Intro3Map + 0x0025)
	ld	(hl), #0x24
	ld	hl, #(_Intro3Map + 0x0026)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0027)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0028)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0029)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x002a)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x002b)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x002c)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x002d)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x002e)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x002f)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0030)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0031)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0032)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0033)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0034)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0035)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0036)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0037)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0038)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0039)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x003a)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x003b)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x003c)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x003d)
	ld	(hl), #0x08
	ld	hl, #(_Intro3Map + 0x003e)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x003f)
	ld	(hl), #0x16
	ld	hl, #(_Intro3Map + 0x0040)
	ld	(hl), #0x08
	ld	hl, #(_Intro3Map + 0x0041)
	ld	(hl), #0x0b
	ld	hl, #(_Intro3Map + 0x0042)
	ld	(hl), #0x0b
	ld	hl, #(_Intro3Map + 0x0043)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0044)
	ld	(hl), #0x00
	ld	hl, #(_Intro3Map + 0x0045)
	ld	(hl), #0x12
	ld	hl, #(_Intro3Map + 0x0046)
	ld	(hl), #0x0a
	ld	hl, #(_Intro3Map + 0x0047)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0048)
	ld	(hl), #0x13
	ld	hl, #(_Intro3Map + 0x0049)
	ld	(hl), #0x07
	ld	hl, #(_Intro3Map + 0x004a)
	ld	(hl), #0x04
	ld	hl, #(_Intro3Map + 0x004b)
	ld	(hl), #0x0c
	ld	hl, #(_Intro3Map + 0x004c)
	ld	(hl), #0x24
	ld	hl, #(_Intro3Map + 0x004d)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x004e)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x004f)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0050)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0051)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0052)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0053)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0054)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0055)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0056)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0057)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0058)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0059)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x005a)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x005b)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x005c)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x005d)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x005e)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x005f)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0060)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0061)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0062)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0063)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0064)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0065)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0066)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0067)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0068)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0069)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x006a)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x006b)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x006c)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x006d)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x006e)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x006f)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0070)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0071)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0072)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0073)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0074)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0075)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0076)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0077)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0078)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0079)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x007a)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x007b)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x007c)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x007d)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x007e)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x007f)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0080)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0081)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0082)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0083)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0084)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0085)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0086)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0087)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0088)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0089)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x008a)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x008b)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x008c)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x008d)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x008e)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x008f)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0090)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0091)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0092)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0093)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0094)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0095)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0096)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0097)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0098)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0099)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x009a)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x009b)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x009c)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x009d)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x009e)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x009f)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00a0)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00a1)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00a2)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00a3)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00a4)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00a5)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00a6)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00a7)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00a8)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00a9)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00aa)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00ab)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00ac)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00ad)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00ae)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00af)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00b0)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00b1)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00b2)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00b3)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00b4)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00b5)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00b6)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00b7)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00b8)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00b9)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00ba)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00bb)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00bc)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00bd)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00be)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00bf)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00c0)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00c1)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00c2)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00c3)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00c4)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00c5)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00c6)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00c7)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00c8)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00c9)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00ca)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00cb)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00cc)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00cd)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00ce)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00cf)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00d0)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00d1)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00d2)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00d3)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00d4)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00d5)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00d6)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00d7)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00d8)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00d9)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00da)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00db)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00dc)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00dd)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00de)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00df)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00e0)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00e1)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00e2)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00e3)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00e4)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00e5)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00e6)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00e7)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00e8)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00e9)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00ea)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00eb)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00ec)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00ed)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00ee)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00ef)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00f0)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00f1)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00f2)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00f3)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00f4)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00f5)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00f6)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00f7)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00f8)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00f9)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00fa)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00fb)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00fc)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00fd)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00fe)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x00ff)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0100)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0101)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0102)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0103)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0104)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0105)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0106)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0107)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0108)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0109)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x010a)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x010b)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x010c)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x010d)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x010e)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x010f)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0110)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0111)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0112)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0113)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0114)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0115)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0116)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0117)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0118)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0119)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x011a)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x011b)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x011c)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x011d)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x011e)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x011f)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0120)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0121)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0122)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0123)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0124)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0125)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0126)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0127)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0128)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0129)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x012a)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x012b)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x012c)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x012d)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x012e)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x012f)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0130)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0131)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0132)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0133)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0134)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0135)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0136)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0137)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0138)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0139)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x013a)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x013b)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x013c)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x013d)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x013e)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x013f)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0140)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0141)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0142)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0143)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0144)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0145)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0146)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0147)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0148)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0149)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x014a)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x014b)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x014c)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x014d)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x014e)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x014f)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0150)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0151)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0152)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0153)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0154)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0155)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0156)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0157)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0158)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0159)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x015a)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x015b)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x015c)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x015d)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x015e)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x015f)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0160)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0161)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0162)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0163)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0164)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0165)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0166)
	ld	(hl), #0x27
	ld	hl, #(_Intro3Map + 0x0167)
	ld	(hl), #0x27
;main.c:32: UBYTE spritesize = 8;
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
;main.c:78: void performantdelay(UINT8 numloops){
;	---------------------------------
; Function performantdelay
; ---------------------------------
_performantdelay::
;main.c:80: for(i=0;i<numloops;i++){
	ld	c, #0x00
00103$:
	ld	a, c
	ldhl	sp,	#2
	sub	a, (hl)
	ret	NC
;main.c:81: wait_vbl_done();
	call	_wait_vbl_done
;main.c:80: for(i=0;i<numloops;i++){
	inc	c
;main.c:83: }
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
;main.c:85: void movegamecharacter(struct GameCharacter* character, UINT8 x, UINT8 y){
;	---------------------------------
; Function movegamecharacter
; ---------------------------------
_movegamecharacter::
	add	sp, #-4
;main.c:86: move_sprite(character->spriteids[0], x, y);
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
;main.c:87: move_sprite(character->spriteids[1], x + spritesize, y);
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
;main.c:88: move_sprite(character->spriteids[2], x, y + spritesize);
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
;main.c:89: move_sprite(character->spriteids[3], x + spritesize, y + spritesize);
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
;main.c:90: move_sprite(character->spriteids[4], x, y + 2*spritesize);
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
;main.c:91: move_sprite(character->spriteids[5], x + spritesize, y + 2*spritesize);
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
;main.c:91: move_sprite(character->spriteids[5], x + spritesize, y + 2*spritesize);
;main.c:92: }
	add	sp, #4
	ret
;main.c:94: void setupbit(INT8 init_x, INT8 init_y){
;	---------------------------------
; Function setupbit
; ---------------------------------
_setupbit::
;main.c:95: bit.x = init_x;
	ld	bc, #_bit+0
	ld	de, #(_bit + 0x0006)
	ldhl	sp,	#2
	ld	a, (hl)
	ld	(de), a
;main.c:96: bit.y = init_y;
	ld	de, #(_bit + 0x0007)
	inc	hl
	ld	a, (hl)
	ld	(de), a
;main.c:97: bit.height = 32;
	ld	hl, #(_bit + 0x0009)
	ld	(hl), #0x20
;main.c:98: bit.width = 24;
	ld	hl, #(_bit + 0x0008)
	ld	(hl), #0x18
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0002)
	ld	(hl), #0x00
;main.c:102: bit.spriteids[0] = 0;
	xor	a, a
	ld	(bc), a
;c:/gbdk/include/gb/gb.h:1050: shadow_OAM[nb].prop=prop;
	ld	hl, #(_shadow_OAM + 0x0003)
	ld	(hl), #0x04
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0006)
	ld	(hl), #0x01
;main.c:105: bit.spriteids[1] = 1;
	ld	hl, #(_bit + 0x0001)
	ld	(hl), #0x01
;c:/gbdk/include/gb/gb.h:1050: shadow_OAM[nb].prop=prop;
	ld	hl, #(_shadow_OAM + 0x0007)
	ld	(hl), #0x04
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x000a)
	ld	(hl), #0x02
;main.c:108: bit.spriteids[2] = 2;
	ld	hl, #(_bit + 0x0002)
	ld	(hl), #0x02
;c:/gbdk/include/gb/gb.h:1050: shadow_OAM[nb].prop=prop;
	ld	hl, #(_shadow_OAM + 0x000b)
	ld	(hl), #0x01
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x000e)
	ld	(hl), #0x03
;main.c:111: bit.spriteids[3] = 3;
	ld	hl, #(_bit + 0x0003)
	ld	(hl), #0x03
;c:/gbdk/include/gb/gb.h:1050: shadow_OAM[nb].prop=prop;
	ld	hl, #(_shadow_OAM + 0x000f)
	ld	(hl), #0x01
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0012)
	ld	(hl), #0x04
;main.c:114: bit.spriteids[4] = 4; 
	ld	hl, #(_bit + 0x0004)
	ld	(hl), #0x04
;c:/gbdk/include/gb/gb.h:1050: shadow_OAM[nb].prop=prop;
	ld	hl, #(_shadow_OAM + 0x0013)
	ld	(hl), #0x07
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0016)
	ld	(hl), #0x05
;main.c:117: bit.spriteids[5] = 5; 
	ld	hl, #(_bit + 0x0005)
	ld	(hl), #0x05
;c:/gbdk/include/gb/gb.h:1050: shadow_OAM[nb].prop=prop;
	ld	hl, #(_shadow_OAM + 0x0017)
	ld	(hl), #0x07
;main.c:120: movegamecharacter(&bit, bit.x, bit.y); 
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
;main.c:122: }
	ret
;main.c:124: UINT8 setbit_forward(UINT8 step){
;	---------------------------------
; Function setbit_forward
; ---------------------------------
_setbit_forward::
;main.c:125: if (step == 1){
	ldhl	sp,	#2
	ld	a, (hl)
	dec	a
	jr	NZ, 00102$
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0002)
	ld	(hl), #0x00
;main.c:127: bit.spriteids[0] = 0;
	ld	hl, #_bit
	ld	(hl), #0x00
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0006)
	ld	(hl), #0x01
;main.c:129: bit.spriteids[1] = 1;
	ld	hl, #(_bit + 0x0001)
	ld	(hl), #0x01
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x000a)
	ld	(hl), #0x02
;main.c:131: bit.spriteids[2] = 2;    
	ld	hl, #(_bit + 0x0002)
	ld	(hl), #0x02
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x000e)
	ld	(hl), #0x03
;main.c:133: bit.spriteids[3] = 3;  
	ld	hl, #(_bit + 0x0003)
	ld	(hl), #0x03
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0012)
	ld	(hl), #0x06
;main.c:135: bit.spriteids[4] = 4; 
	ld	hl, #(_bit + 0x0004)
	ld	(hl), #0x04
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0016)
	ld	(hl), #0x07
;main.c:137: bit.spriteids[5] = 5;
	ld	hl, #(_bit + 0x0005)
	ld	(hl), #0x05
00102$:
;main.c:139: if (step == 0){
	ldhl	sp,	#2
	ld	a, (hl)
	or	a, a
	jr	NZ, 00104$
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0002)
	ld	(hl), #0x00
;main.c:141: bit.spriteids[0] = 0;
	ld	hl, #_bit
	ld	(hl), #0x00
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0006)
	ld	(hl), #0x01
;main.c:143: bit.spriteids[1] = 1;
	ld	hl, #(_bit + 0x0001)
	ld	(hl), #0x01
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x000a)
	ld	(hl), #0x02
;main.c:145: bit.spriteids[2] = 2;    
	ld	hl, #(_bit + 0x0002)
	ld	(hl), #0x02
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x000e)
	ld	(hl), #0x03
;main.c:147: bit.spriteids[3] = 3;  
	ld	hl, #(_bit + 0x0003)
	ld	(hl), #0x03
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0012)
	ld	(hl), #0x08
;main.c:149: bit.spriteids[4] = 4; 
	ld	hl, #(_bit + 0x0004)
	ld	(hl), #0x04
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0016)
	ld	(hl), #0x09
;main.c:151: bit.spriteids[5] = 5;   
	ld	hl, #(_bit + 0x0005)
	ld	(hl), #0x05
00104$:
;main.c:153: return (step + 1)%2;
	ldhl	sp,	#2
	ld	c, (hl)
	ld	b, #0x00
	inc	bc
	ld	hl, #0x0002
	push	hl
	push	bc
	call	__modsint
	add	sp, #4
;main.c:154: }
	ret
;main.c:156: UINT8 setbit_backward(UINT8 step){
;	---------------------------------
; Function setbit_backward
; ---------------------------------
_setbit_backward::
;main.c:157: if (step == 1){
	ldhl	sp,	#2
	ld	a, (hl)
	dec	a
	jr	NZ, 00102$
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0002)
	ld	(hl), #0x0a
;main.c:159: bit.spriteids[0] = 0;
	ld	hl, #_bit
	ld	(hl), #0x00
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0006)
	ld	(hl), #0x0b
;main.c:161: bit.spriteids[1] = 1;
	ld	hl, #(_bit + 0x0001)
	ld	(hl), #0x01
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x000a)
	ld	(hl), #0x0c
;main.c:163: bit.spriteids[2] = 2;    
	ld	hl, #(_bit + 0x0002)
	ld	(hl), #0x02
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x000e)
	ld	(hl), #0x0d
;main.c:165: bit.spriteids[3] = 3;  
	ld	hl, #(_bit + 0x0003)
	ld	(hl), #0x03
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0012)
	ld	(hl), #0x0e
;main.c:167: bit.spriteids[4] = 4; 
	ld	hl, #(_bit + 0x0004)
	ld	(hl), #0x04
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0016)
	ld	(hl), #0x0f
;main.c:169: bit.spriteids[5] = 5;
	ld	hl, #(_bit + 0x0005)
	ld	(hl), #0x05
00102$:
;main.c:171: if (step == 0){
	ldhl	sp,	#2
	ld	a, (hl)
	or	a, a
	jr	NZ, 00104$
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0002)
	ld	(hl), #0x0a
;main.c:173: bit.spriteids[0] = 0;
	ld	hl, #_bit
	ld	(hl), #0x00
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0006)
	ld	(hl), #0x0b
;main.c:175: bit.spriteids[1] = 1;
	ld	hl, #(_bit + 0x0001)
	ld	(hl), #0x01
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x000a)
	ld	(hl), #0x0c
;main.c:177: bit.spriteids[2] = 2;    
	ld	hl, #(_bit + 0x0002)
	ld	(hl), #0x02
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x000e)
	ld	(hl), #0x0d
;main.c:179: bit.spriteids[3] = 3;  
	ld	hl, #(_bit + 0x0003)
	ld	(hl), #0x03
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0012)
	ld	(hl), #0x10
;main.c:181: bit.spriteids[4] = 4; 
	ld	hl, #(_bit + 0x0004)
	ld	(hl), #0x04
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0016)
	ld	(hl), #0x11
;main.c:183: bit.spriteids[5] = 5;   
	ld	hl, #(_bit + 0x0005)
	ld	(hl), #0x05
00104$:
;main.c:185: return (step + 1)%2;
	ldhl	sp,	#2
	ld	c, (hl)
	ld	b, #0x00
	inc	bc
	ld	hl, #0x0002
	push	hl
	push	bc
	call	__modsint
	add	sp, #4
;main.c:186: }
	ret
;main.c:188: UINT8 setbit_right(UINT8 step){
;	---------------------------------
; Function setbit_right
; ---------------------------------
_setbit_right::
;main.c:189: if (step == 1){
	ldhl	sp,	#2
	ld	a, (hl)
	dec	a
	jr	NZ, 00102$
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0002)
	ld	(hl), #0x12
;main.c:191: bit.spriteids[0] = 0;
	ld	hl, #_bit
	ld	(hl), #0x00
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0006)
	ld	(hl), #0x13
;main.c:193: bit.spriteids[1] = 1;
	ld	hl, #(_bit + 0x0001)
	ld	(hl), #0x01
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x000a)
	ld	(hl), #0x14
;main.c:195: bit.spriteids[2] = 2;    
	ld	hl, #(_bit + 0x0002)
	ld	(hl), #0x02
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x000e)
	ld	(hl), #0x15
;main.c:197: bit.spriteids[3] = 3;  
	ld	hl, #(_bit + 0x0003)
	ld	(hl), #0x03
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0012)
	ld	(hl), #0x16
;main.c:199: bit.spriteids[4] = 4; 
	ld	hl, #(_bit + 0x0004)
	ld	(hl), #0x04
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0016)
	ld	(hl), #0x17
;main.c:201: bit.spriteids[5] = 5;
	ld	hl, #(_bit + 0x0005)
	ld	(hl), #0x05
00102$:
;main.c:203: if (step == 0){
	ldhl	sp,	#2
	ld	a, (hl)
	or	a, a
	jr	NZ, 00104$
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0002)
	ld	(hl), #0x1e
;main.c:205: bit.spriteids[0] = 0;
	ld	hl, #_bit
	ld	(hl), #0x00
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0006)
	ld	(hl), #0x1f
;main.c:207: bit.spriteids[1] = 1;
	ld	hl, #(_bit + 0x0001)
	ld	(hl), #0x01
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x000a)
	ld	(hl), #0x20
;main.c:209: bit.spriteids[2] = 2;    
	ld	hl, #(_bit + 0x0002)
	ld	(hl), #0x02
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x000e)
	ld	(hl), #0x21
;main.c:211: bit.spriteids[3] = 3;  
	ld	hl, #(_bit + 0x0003)
	ld	(hl), #0x03
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0012)
	ld	(hl), #0x22
;main.c:213: bit.spriteids[4] = 4; 
	ld	hl, #(_bit + 0x0004)
	ld	(hl), #0x04
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0016)
	ld	(hl), #0x23
;main.c:215: bit.spriteids[5] = 5;   
	ld	hl, #(_bit + 0x0005)
	ld	(hl), #0x05
00104$:
;main.c:217: return (step + 1)%2;
	ldhl	sp,	#2
	ld	c, (hl)
	ld	b, #0x00
	inc	bc
	ld	hl, #0x0002
	push	hl
	push	bc
	call	__modsint
	add	sp, #4
;main.c:218: }
	ret
;main.c:220: UINT8 setbit_left(UINT8 step){
;	---------------------------------
; Function setbit_left
; ---------------------------------
_setbit_left::
;main.c:221: if (step == 1){
	ldhl	sp,	#2
	ld	a, (hl)
	dec	a
	jr	NZ, 00102$
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0002)
	ld	(hl), #0x18
;main.c:223: bit.spriteids[0] = 0;
	ld	hl, #_bit
	ld	(hl), #0x00
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0006)
	ld	(hl), #0x19
;main.c:225: bit.spriteids[1] = 1;
	ld	hl, #(_bit + 0x0001)
	ld	(hl), #0x01
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x000a)
	ld	(hl), #0x1a
;main.c:227: bit.spriteids[2] = 2;    
	ld	hl, #(_bit + 0x0002)
	ld	(hl), #0x02
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x000e)
	ld	(hl), #0x1b
;main.c:229: bit.spriteids[3] = 3;  
	ld	hl, #(_bit + 0x0003)
	ld	(hl), #0x03
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0012)
	ld	(hl), #0x1c
;main.c:231: bit.spriteids[4] = 4; 
	ld	hl, #(_bit + 0x0004)
	ld	(hl), #0x04
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0016)
	ld	(hl), #0x1d
;main.c:233: bit.spriteids[5] = 5;
	ld	hl, #(_bit + 0x0005)
	ld	(hl), #0x05
00102$:
;main.c:235: if (step == 0){
	ldhl	sp,	#2
	ld	a, (hl)
	or	a, a
	jr	NZ, 00104$
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0002)
	ld	(hl), #0x24
;main.c:237: bit.spriteids[0] = 0;
	ld	hl, #_bit
	ld	(hl), #0x00
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0006)
	ld	(hl), #0x25
;main.c:239: bit.spriteids[1] = 1;
	ld	hl, #(_bit + 0x0001)
	ld	(hl), #0x01
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x000a)
	ld	(hl), #0x26
;main.c:241: bit.spriteids[2] = 2;    
	ld	hl, #(_bit + 0x0002)
	ld	(hl), #0x02
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x000e)
	ld	(hl), #0x27
;main.c:243: bit.spriteids[3] = 3;  
	ld	hl, #(_bit + 0x0003)
	ld	(hl), #0x03
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0012)
	ld	(hl), #0x28
;main.c:245: bit.spriteids[4] = 4; 
	ld	hl, #(_bit + 0x0004)
	ld	(hl), #0x04
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0016)
	ld	(hl), #0x29
;main.c:247: bit.spriteids[5] = 5;   
	ld	hl, #(_bit + 0x0005)
	ld	(hl), #0x05
00104$:
;main.c:249: return (step + 1)%2;
	ldhl	sp,	#2
	ld	c, (hl)
	ld	b, #0x00
	inc	bc
	ld	hl, #0x0002
	push	hl
	push	bc
	call	__modsint
	add	sp, #4
;main.c:250: }
	ret
;main.c:252: void reset_bit(){
;	---------------------------------
; Function reset_bit
; ---------------------------------
_reset_bit::
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0002)
	ld	(hl), #0x00
;main.c:254: bit.spriteids[0] = 0;
	ld	hl, #_bit
	ld	(hl), #0x00
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0006)
	ld	(hl), #0x01
;main.c:256: bit.spriteids[1] = 1;
	ld	hl, #(_bit + 0x0001)
	ld	(hl), #0x01
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x000a)
	ld	(hl), #0x02
;main.c:258: bit.spriteids[2] = 2;    
	ld	hl, #(_bit + 0x0002)
	ld	(hl), #0x02
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x000e)
	ld	(hl), #0x03
;main.c:260: bit.spriteids[3] = 3;  
	ld	hl, #(_bit + 0x0003)
	ld	(hl), #0x03
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0012)
	ld	(hl), #0x04
;main.c:262: bit.spriteids[4] = 4; 
	ld	hl, #(_bit + 0x0004)
	ld	(hl), #0x04
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0016)
	ld	(hl), #0x05
;main.c:264: bit.spriteids[5] = 5;   
	ld	hl, #(_bit + 0x0005)
	ld	(hl), #0x05
;main.c:265: }
	ret
;main.c:267: UINT8 special_tile(UINT16 player_loc){
;	---------------------------------
; Function special_tile
; ---------------------------------
_special_tile::
	dec	sp
;main.c:269: rtn = 0;
	xor	a, a
	ldhl	sp,	#0
	ld	(hl), a
;main.c:273: set_bkg_tiles(player_loc%20, player_loc/20, 1, 1, blankmap);
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
;main.c:270: if (player_loc == 329){
	ldhl	sp,	#3
	ld	a, (hl)
	sub	a, #0x49
	jr	NZ, 00108$
	inc	hl
	ld	a, (hl)
	dec	a
	jr	NZ, 00108$
;main.c:272: has_key = 1;
	ld	hl, #_has_key
	ld	(hl), #0x01
;main.c:273: set_bkg_tiles(player_loc%20, player_loc/20, 1, 1, blankmap);
	ld	hl, #_blankmap
	push	hl
	ld	hl, #0x0101
	push	hl
	ld	c, e
	push	bc
	call	_set_bkg_tiles
	add	sp, #6
;main.c:274: rtn = 1;
	ldhl	sp,	#0
	ld	(hl), #0x01
	jr	00109$
00108$:
;main.c:276: else if (player_loc == 168 && has_key){
	ldhl	sp,	#3
	ld	a, (hl)
	sub	a, #0xa8
	inc	hl
	or	a, (hl)
	jr	NZ, 00104$
	ld	a, (#_has_key)
	or	a, a
	jr	Z, 00104$
;main.c:278: open_door = 1;
	ld	hl, #_open_door
	ld	(hl), #0x01
;main.c:279: set_bkg_tiles(player_loc%20, player_loc/20, 1, 1, blankmap);
	ld	hl, #_blankmap
	push	hl
	ld	hl, #0x0101
	push	hl
	ld	c, e
	push	bc
	call	_set_bkg_tiles
	add	sp, #6
;main.c:280: rtn = 1;
	ldhl	sp,	#0
	ld	(hl), #0x01
	jr	00109$
00104$:
;main.c:282: else if (player_loc == 358){
	ldhl	sp,	#3
	ld	a, (hl)
	sub	a, #0x66
	jr	NZ, 00109$
	inc	hl
	ld	a, (hl)
	dec	a
	jr	NZ, 00109$
;main.c:284: game_running = 0;
	ld	hl, #_game_running
	ld	(hl), #0x00
;main.c:285: HIDE_SPRITES;
	ldh	a, (_LCDC_REG+0)
	and	a, #0xfd
	ldh	(_LCDC_REG+0),a
;main.c:286: printf("\n \n \n \n \n \n \n \n \n      YOU WIN!!!!");
	ld	hl, #___str_0
	push	hl
	call	_printf
	add	sp, #2
;main.c:287: rtn = 1;
	ldhl	sp,	#0
	ld	(hl), #0x01
00109$:
;main.c:289: return rtn;
	ldhl	sp,	#0
	ld	e, (hl)
;main.c:290: }
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
;main.c:292: UINT8 can_player_move(UINT16 newplayerx, UINT16 newplayery){
;	---------------------------------
; Function can_player_move
; ---------------------------------
_can_player_move::
	add	sp, #-6
;main.c:296: indexTLx = (newplayerx/8)%BackgroundMapWidth;
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
	ld	hl, #0x0028
	push	hl
	push	de
	call	__moduint
	add	sp, #4
	ldhl	sp,	#4
	ld	a, e
	ld	(hl+), a
	ld	(hl), d
;main.c:297: indexTLy = newplayery/8;
	ldhl	sp,#10
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	srl	b
	rr	c
	srl	b
	rr	c
	srl	b
	rr	c
;main.c:299: tileindexTL = BackgroundMapWidth*indexTLy + indexTLx; // x_width * y_index + x_index
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
	ldhl	sp,	#4
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, bc
	ld	c, l
	ld	b, h
	ldhl	sp,	#4
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
;main.c:301: result = 0; //special_tile(tileindexTL);
	xor	a, a
	ldhl	sp,	#2
	ld	(hl), a
;main.c:302: if (BackgroundMapPLN0[tileindexTL] == blankmap[0] && BackgroundMapPLN0[tileindexTL - 1] == blankmap[0]){
;c
	ld	de, #_BackgroundMapPLN0
	inc	hl
	inc	hl
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
	ld	c, (hl)
	ld	a, (#_blankmap + 0)
	ldhl	sp,	#3
	ld	(hl), a
	ldhl	sp,	#3
	ld	a, (hl)
	sub	a, c
	jr	NZ, 00102$
	ldhl	sp,#4
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0001
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ldhl	sp,	#1
	ld	(hl-), a
	ld	(hl), e
;c
	pop	de
	push	de
	ld	hl, #_BackgroundMapPLN0
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#6
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#5
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	(hl-), a
	dec	hl
	ld	a, (hl+)
	inc	hl
	sub	a, (hl)
	jr	NZ, 00102$
;main.c:303: result = 1;
	ldhl	sp,	#2
	ld	(hl), #0x01
00102$:
;main.c:305: if (newplayery < 16 || newplayery > 8 + BackgroundMapHeight*8){
	ldhl	sp,	#10
	ld	a, (hl)
	sub	a, #0x10
	inc	hl
	ld	a, (hl)
	sbc	a, #0x00
	jr	C, 00104$
	ldhl	sp,	#10
	ld	a, #0xa8
	sub	a, (hl)
	inc	hl
	ld	a, #0x00
	sbc	a, (hl)
	jr	NC, 00105$
00104$:
;main.c:306: result = 0;
	xor	a, a
	ldhl	sp,	#2
	ld	(hl), a
00105$:
;main.c:309: return result;
	ldhl	sp,	#2
	ld	e, (hl)
;main.c:310: }
	add	sp, #6
	ret
;main.c:312: void walk_without_background_movement(INT8 move_x, INT8 move_y, UINT8 *step){
;	---------------------------------
; Function walk_without_background_movement
; ---------------------------------
_walk_without_background_movement::
	add	sp, #-3
;main.c:313: while(move_x != 0){
00104$:
;main.c:314: bit.x += (move_x > 0 ? 2 : -2);
;main.c:316: *step = (move_x > 0 ? setbit_right(*step) : setbit_left(*step));
	ldhl	sp,	#7
	ld	a, (hl+)
	ld	e, (hl)
	ldhl	sp,	#0
	ld	(hl+), a
	ld	(hl), e
;main.c:313: while(move_x != 0){
	ldhl	sp,	#5
	ld	a, (hl)
	or	a, a
	jp	Z, 00140$
;main.c:314: bit.x += (move_x > 0 ? 2 : -2);
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
;main.c:315: if (move_x % 4 == 0 && move_x != 0){
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
;main.c:316: *step = (move_x > 0 ? setbit_right(*step) : setbit_left(*step));
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
;main.c:318: move_x += (move_x > 0 ? -2 : 2);
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
;main.c:319: movegamecharacter(&bit, bit.x, bit.y);
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
;main.c:320: performantdelay(2);
	ld	a, #0x02
	push	af
	inc	sp
	call	_performantdelay
	inc	sp
	jp	00104$
;main.c:322: while (move_y != 0){
00140$:
00110$:
	ldhl	sp,	#6
	ld	a, (hl)
	or	a, a
	jp	Z, 00113$
;main.c:323: bit.y += (move_y > 0 ? 2 : -2);
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
;main.c:324: if (move_y % 4 == 0 && move_y != 0){
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
;main.c:316: *step = (move_x > 0 ? setbit_right(*step) : setbit_left(*step));
	pop	de
	push	de
	ld	a, (de)
	ld	b, a
;main.c:325: *step = (move_y >  0 ? setbit_forward(*step) : setbit_backward(*step));
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
;main.c:327: move_y += (move_y > 0 ? -2 : 2);
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
;main.c:328: movegamecharacter(&bit, bit.x, bit.y);
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
;main.c:329: performantdelay(2);
	ld	a, #0x02
	push	af
	inc	sp
	call	_performantdelay
	inc	sp
	jp	00110$
00113$:
;main.c:331: }
	add	sp, #3
	ret
;main.c:333: void walk_background_movement(INT8 move_x, INT8 move_y, UINT8 *step){
;	---------------------------------
; Function walk_background_movement
; ---------------------------------
_walk_background_movement::
	dec	sp
;main.c:334: while(move_x != 0){
00104$:
	ldhl	sp,	#3
	ld	a, (hl)
	or	a, a
	jp	Z, 00110$
;main.c:335: scroll_bkg(move_x < 0 ? -2 : 2, 0);
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
;main.c:336: if (move_x % 4 == 0 && move_x != 0){
	ldhl	sp,	#3
	ld	a, (hl)
	ld	c, a
	rla
	sbc	a, a
	ld	b, a
	ld	hl, #0x0004
	push	hl
	push	bc
;main.c:337: *step = (move_x > 0 ? setbit_right(*step) : setbit_left(*step));
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
;main.c:336: if (move_x % 4 == 0 && move_x != 0){
	ld	a, b
	or	a, c
	jr	NZ, 00102$
	ldhl	sp,	#3
	ld	a, (hl)
	or	a, a
	jr	Z, 00102$
;main.c:337: *step = (move_x > 0 ? setbit_right(*step) : setbit_left(*step));
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
;main.c:339: move_x += (move_x > 0 ? -2 : 2);
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
;main.c:340: performantdelay(2);
	ld	a, #0x02
	push	af
	inc	sp
	call	_performantdelay
	inc	sp
	jp	00104$
;main.c:342: while (move_y != 0){
00110$:
	ldhl	sp,	#4
	ld	a, (hl)
	or	a, a
	jp	Z, 00115$
;main.c:343: scroll_bkg(0, move_y < 0 ? -2 : 2);
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
;main.c:344: if (move_y % 4 == 0 && move_y != 0){
	ldhl	sp,	#4
	ld	a, (hl)
	ld	c, a
	rla
	sbc	a, a
	ld	b, a
	ld	hl, #0x0004
	push	hl
	push	bc
;main.c:345: *step = (move_y >  0 ? setbit_forward(*step) : setbit_backward(*step));
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
;main.c:344: if (move_y % 4 == 0 && move_y != 0){
	ld	a, b
	or	a, c
	jr	NZ, 00108$
	ldhl	sp,	#4
	ld	a, (hl)
	or	a, a
	jr	Z, 00108$
;main.c:345: *step = (move_y >  0 ? setbit_forward(*step) : setbit_backward(*step));
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
;main.c:347: move_y += (move_y > 0 ? -2 : 2);
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
;main.c:348: performantdelay(2);
	ld	a, #0x02
	push	af
	inc	sp
	call	_performantdelay
	inc	sp
	jp	00110$
00115$:
;main.c:350: }
	inc	sp
	ret
;main.c:352: void move(UINT8 *step, UINT16 *player_loc_x, UINT16 *player_loc_y){
;	---------------------------------
; Function move
; ---------------------------------
_move::
	add	sp, #-6
;main.c:354: switch (joypad())
	call	_joypad
	ld	c, e
;main.c:357: if (can_player_move(*player_loc_x - tile, *player_loc_y)){
	ldhl	sp,	#12
	ld	a, (hl+)
	ld	e, (hl)
	ldhl	sp,	#2
	ld	(hl+), a
	ld	(hl), e
	ldhl	sp,	#10
	ld	a, (hl+)
	ld	e, (hl)
	ldhl	sp,	#4
	ld	(hl+), a
	ld	(hl), e
;main.c:362: *step = setbit_left(*step);
	ldhl	sp,	#8
	ld	a, (hl+)
	ld	e, (hl)
	ldhl	sp,	#0
	ld	(hl+), a
	ld	(hl), e
;main.c:354: switch (joypad())
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
;main.c:356: case (J_LEFT):
00101$:
;main.c:357: if (can_player_move(*player_loc_x - tile, *player_loc_y)){
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
	ld	b, a
	inc	hl
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
	jr	Z, 00103$
;main.c:358: walk_background_movement(-1*tile, 0, step);
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
;main.c:359: *player_loc_x -= tile;
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
;main.c:362: *step = setbit_left(*step);
	pop	de
	push	de
	ld	a, (de)
	push	af
	inc	sp
	call	_setbit_left
	inc	sp
	ld	c, e
	pop	hl
	push	hl
	ld	(hl), c
;main.c:364: break;
	jp	00125$
;main.c:366: case (J_RIGHT):
00105$:
;main.c:367: if (can_player_move(*player_loc_x + tile, *player_loc_y)){
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
	ld	b, a
	inc	hl
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
	jr	Z, 00107$
;main.c:368: walk_background_movement(tile, 0, step);
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
;main.c:369: *player_loc_x += tile;
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
;main.c:372: *step = setbit_right(*step);
	pop	de
	push	de
	ld	a, (de)
	push	af
	inc	sp
	call	_setbit_right
	inc	sp
	ld	c, e
	pop	hl
	push	hl
	ld	(hl), c
;main.c:374: break;
	jp	00125$
;main.c:376: case (J_UP):
00109$:
;main.c:377: if (can_player_move(*player_loc_x, *player_loc_y - tile)){
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
	inc	hl
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
	jr	Z, 00115$
;main.c:378: if (*player_loc_y < 96 || *player_loc_y > BackgroundMapHeight*8 - 56){
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	inc	hl
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
;main.c:379: walk_without_background_movement(0, -1*tile, step);
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
;main.c:380: *player_loc_y -= 8;
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
	jr	00115$
00111$:
;main.c:383: walk_background_movement(0, -1*tile, step);
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
;main.c:384: *player_loc_y -= 8;
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
00115$:
;main.c:387: *step = setbit_backward(*step);
	pop	de
	push	de
	ld	a, (de)
	push	af
	inc	sp
	call	_setbit_backward
	inc	sp
	ld	c, e
	pop	hl
	push	hl
	ld	(hl), c
;main.c:388: break;
	jp	00125$
;main.c:390: case (J_DOWN):
00116$:
;main.c:391: if (can_player_move(*player_loc_x, *player_loc_y + tile)){
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
	push	bc
	dec	hl
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	push	hl
	call	_can_player_move
	add	sp, #4
	ld	a, e
	or	a, a
	jr	Z, 00122$
;main.c:392: if (*player_loc_y < 88 || *player_loc_y > BackgroundMapHeight*8 - 64){
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
;main.c:393: walk_without_background_movement(0, tile, step);
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
;main.c:394: *player_loc_y += 8;
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
	ld	b, a
	ld	hl, #0x0008
	add	hl, bc
	ld	c, l
	ld	b, h
	ldhl	sp,	#2
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
	jr	00122$
00118$:
;main.c:397: walk_background_movement(0, tile, step);
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
;main.c:398: *player_loc_y += 8;
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
	ld	b, a
	ld	hl, #0x0008
	add	hl, bc
	ld	c, l
	ld	b, h
	ldhl	sp,	#2
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
00122$:
;main.c:401: reset_bit();
	call	_reset_bit
;main.c:406: }
00125$:
;main.c:407: }
	add	sp, #6
	ret
;main.c:409: void setup_splashscreen(){
;	---------------------------------
; Function setup_splashscreen
; ---------------------------------
_setup_splashscreen::
;main.c:410: set_win_data(0,45,Letter2Data);
	ld	hl, #_Letter2Data
	push	hl
	ld	a, #0x2d
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_set_win_data
	add	sp, #4
;main.c:411: set_win_tiles(0,0,Intro1MapWidth,Intro1MapHeight,Intro1Map);
	ld	hl, #_Intro1Map
	push	hl
	ld	de, #0x1214
	push	de
	xor	a, a
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_set_win_tiles
	add	sp, #6
;main.c:412: SHOW_WIN;
	ldh	a, (_LCDC_REG+0)
	or	a, #0x20
	ldh	(_LCDC_REG+0),a
;main.c:413: DISPLAY_ON;
	ldh	a, (_LCDC_REG+0)
	or	a, #0x80
	ldh	(_LCDC_REG+0),a
;main.c:414: waitpad(J_START);
	ld	a, #0x80
	push	af
	inc	sp
	call	_waitpad
	inc	sp
;main.c:415: waitpadup(); 
	call	_waitpadup
;main.c:416: set_win_tiles(0,0,Intro2MapWidth,Intro2MapHeight,Intro2Map);
	ld	hl, #_Intro2Map
	push	hl
	ld	de, #0x1214
	push	de
	xor	a, a
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_set_win_tiles
	add	sp, #6
;main.c:417: waitpad(J_START);
	ld	a, #0x80
	push	af
	inc	sp
	call	_waitpad
	inc	sp
;main.c:418: waitpadup(); 
	call	_waitpadup
;main.c:419: set_win_tiles(0,0,Intro3MapWidth,Intro3MapHeight,Intro3Map);
	ld	hl, #_Intro3Map
	push	hl
	ld	de, #0x1214
	push	de
	xor	a, a
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_set_win_tiles
	add	sp, #6
;main.c:420: waitpad(J_START);
	ld	a, #0x80
	push	af
	inc	sp
	call	_waitpad
	inc	sp
;main.c:421: waitpadup(); 
	call	_waitpadup
;main.c:422: HIDE_WIN;
	ldh	a, (_LCDC_REG+0)
	and	a, #0xdf
	ldh	(_LCDC_REG+0),a
;main.c:423: }
	ret
;main.c:425: void setup_map(UWORD *pallete, unsigned char *map_data, unsigned char *tiles_1, unsigned char *tiles_0, int character_x, int character_y, int data_size){
;	---------------------------------
; Function setup_map
; ---------------------------------
_setup_map::
;main.c:427: set_bkg_palette(0, 8, pallete);
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
;main.c:428: set_bkg_data(0, data_size, map_data);
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
;main.c:429: VBK_REG = 1;
	ld	a, #0x01
	ldh	(_VBK_REG+0),a
;main.c:430: set_bkg_tiles(0, 0, BackgroundMapWidth, BackgroundMapHeight, tiles_1);
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
;main.c:431: VBK_REG = 0;
	ld	a, #0x00
	ldh	(_VBK_REG+0),a
;main.c:432: set_bkg_tiles(0, 0, BackgroundMapWidth, BackgroundMapHeight, tiles_0);
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
;main.c:433: SHOW_BKG;
	ldh	a, (_LCDC_REG+0)
	or	a, #0x01
	ldh	(_LCDC_REG+0),a
;main.c:436: set_sprite_palette(0,8, &spritepalette[0]);
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
;main.c:437: set_sprite_data(0, 43, GameSprites);
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
;main.c:438: setupbit(character_x, character_y);
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
;main.c:439: player_location[0] = character_x;
	ld	de, #_player_location
	ldhl	sp,	#10
	ld	a, (hl)
	ld	(de), a
	inc	de
	inc	hl
	ld	a, (hl)
	ld	(de), a
;main.c:440: player_location[1] = character_y;
	ld	de, #(_player_location + 0x0002)
	inc	hl
	ld	a, (hl)
	ld	(de), a
	inc	de
	inc	hl
	ld	a, (hl)
	ld	(de), a
;main.c:441: SHOW_SPRITES;
	ldh	a, (_LCDC_REG+0)
	or	a, #0x02
	ldh	(_LCDC_REG+0),a
;main.c:442: DISPLAY_ON;
	ldh	a, (_LCDC_REG+0)
	or	a, #0x80
	ldh	(_LCDC_REG+0),a
;main.c:443: }
	ret
;main.c:445: void setup_dialogue(){
;	---------------------------------
; Function setup_dialogue
; ---------------------------------
_setup_dialogue::
;main.c:446: set_win_data(0,45,Letter2Data);
	ld	hl, #_Letter2Data
	push	hl
	ld	a, #0x2d
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_set_win_data
	add	sp, #4
;main.c:447: set_win_tiles(0,0,Test1Width,Test1Height,Test1);
	ld	hl, #_Test1
	push	hl
	ld	de, #0x0314
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
;main.c:449: SHOW_WIN;
	ldh	a, (_LCDC_REG+0)
	or	a, #0x20
	ldh	(_LCDC_REG+0),a
;main.c:450: waitpad(J_START);
	ld	a, #0x80
	push	af
	inc	sp
	call	_waitpad
	inc	sp
;main.c:451: waitpadup(); 
	call	_waitpadup
;main.c:452: set_win_tiles(0,0,Test2Width,Test2Height,Test2);
	ld	hl, #_Test2
	push	hl
	ld	de, #0x0314
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
;main.c:454: waitpad(J_START);
	ld	a, #0x80
	push	af
	inc	sp
	call	_waitpad
	inc	sp
;main.c:455: waitpadup(); 
	call	_waitpadup
;main.c:456: set_win_tiles(0,0,Test3Width,Test3Height,Test3);
	ld	hl, #_Test3
	push	hl
	ld	de, #0x0314
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
;main.c:457: move_win(7, 120);
;main.c:458: }
	ret
;main.c:460: void main(){
;	---------------------------------
; Function main
; ---------------------------------
_main::
	dec	sp
;main.c:462: game_running = 1;
	ld	hl, #_game_running
	ld	(hl), #0x01
;main.c:463: UINT8 step = 0;
	xor	a, a
	ldhl	sp,	#0
	ld	(hl), a
;main.c:464: UINT8 state = 0;
	ld	c, #0x00
;main.c:465: while(game_running){
00110$:
	ld	a, (#_game_running)
	or	a, a
	jp	Z, 00113$
;main.c:466: switch(state){
	ld	a, c
	or	a, a
	jr	Z, 00101$
	ld	a, c
	dec	a
	jr	Z, 00102$
	ld	a, c
	sub	a, #0x02
	jr	Z, 00108$
	jr	00109$
;main.c:467: case 0: 
00101$:
;main.c:468: setup_splashscreen();
	call	_setup_splashscreen
;main.c:469: setup_map(backgroundpalette, BackgroundData, BackgroundMapPLN1, BackgroundMapPLN0, 88, 88, 14);
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
;main.c:470: state = 1;
	ld	c, #0x01
;main.c:471: break;
	jr	00109$
;main.c:472: case 1:
00102$:
;main.c:473: move(&step, &player_location[0], &player_location[1]);
	ldhl	sp,	#0
	ld	e, l
	ld	d, h
	push	bc
	ld	hl, #(_player_location + 0x0002)
	push	hl
	ld	hl, #_player_location
	push	hl
	push	de
	call	_move
	add	sp, #6
	pop	bc
;main.c:474: if ((player_location[0] < 80 && player_location[0] > 60) && (player_location[1] < 100 && player_location[1] > 85)){
	ld	hl, #_player_location
	ld	a, (hl+)
	ld	b, a
	ld	l, (hl)
	ld	a, b
	sub	a, #0x50
	ld	a, l
	sbc	a, #0x00
	jr	NC, 00109$
	ld	a, #0x3c
	cp	a, b
	ld	a, #0x00
	sbc	a, l
	jr	NC, 00109$
	ld	hl, #(_player_location + 0x0002)
	ld	a, (hl+)
	ld	b, a
	ld	l, (hl)
	ld	a, b
	sub	a, #0x64
	ld	a, l
	sbc	a, #0x00
	jr	NC, 00109$
	ld	a, #0x55
	cp	a, b
	ld	a, #0x00
	sbc	a, l
	jr	NC, 00109$
;main.c:475: state = 2;
	ld	c, #0x02
;main.c:477: break;
	jr	00109$
;main.c:478: case 2:
00108$:
;main.c:479: setup_dialogue();
	push	bc
	call	_setup_dialogue
	pop	bc
;main.c:481: }
00109$:
;main.c:482: delay(100);
	push	bc
	ld	hl, #0x0064
	push	hl
	call	_delay
	add	sp, #2
	pop	bc
	jp	00110$
00113$:
;main.c:484: }
	inc	sp
	ret
	.area _CODE
	.area _CABS (ABS)
