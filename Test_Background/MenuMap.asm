;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.7 #12016 (MINGW64)
;--------------------------------------------------------
	.module MenuMap
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _MenuMapPLN1
	.globl _MenuMapPLN0
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_MenuMapPLN0::
	.ds 72
_MenuMapPLN1::
	.ds 72
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
;Test_Background/MenuMap.c:26: unsigned char MenuMapPLN0[] =
	ld	hl, #_MenuMapPLN0
	ld	(hl), #0x1b
	ld	hl, #(_MenuMapPLN0 + 0x0001)
	ld	(hl), #0x20
	ld	hl, #(_MenuMapPLN0 + 0x0002)
	ld	(hl), #0x20
	ld	hl, #(_MenuMapPLN0 + 0x0003)
	ld	(hl), #0x20
	ld	hl, #(_MenuMapPLN0 + 0x0004)
	ld	(hl), #0x20
	ld	hl, #(_MenuMapPLN0 + 0x0005)
	ld	(hl), #0x20
	ld	hl, #(_MenuMapPLN0 + 0x0006)
	ld	(hl), #0x20
	ld	hl, #(_MenuMapPLN0 + 0x0007)
	ld	(hl), #0x1c
	ld	hl, #(_MenuMapPLN0 + 0x0008)
	ld	(hl), #0x1f
	ld	hl, #(_MenuMapPLN0 + 0x0009)
	ld	(hl), #0x21
	ld	hl, #(_MenuMapPLN0 + 0x000a)
	ld	(hl), #0x1a
	ld	hl, #(_MenuMapPLN0 + 0x000b)
	ld	(hl), #0x1a
	ld	hl, #(_MenuMapPLN0 + 0x000c)
	ld	(hl), #0x1a
	ld	hl, #(_MenuMapPLN0 + 0x000d)
	ld	(hl), #0x1a
	ld	hl, #(_MenuMapPLN0 + 0x000e)
	ld	(hl), #0x22
	ld	hl, #(_MenuMapPLN0 + 0x000f)
	ld	(hl), #0x1f
	ld	hl, #(_MenuMapPLN0 + 0x0010)
	ld	(hl), #0x1f
	ld	hl, #(_MenuMapPLN0 + 0x0011)
	ld	(hl), #0x1a
	ld	hl, #(_MenuMapPLN0 + 0x0012)
	ld	(hl), #0x01
	ld	hl, #(_MenuMapPLN0 + 0x0013)
	ld	(hl), #0x00
	ld	hl, #(_MenuMapPLN0 + 0x0014)
	ld	(hl), #0x02
	ld	hl, #(_MenuMapPLN0 + 0x0015)
	ld	(hl), #0x0a
	ld	hl, #(_MenuMapPLN0 + 0x0016)
	ld	(hl), #0x1a
	ld	hl, #(_MenuMapPLN0 + 0x0017)
	ld	(hl), #0x1f
	ld	hl, #(_MenuMapPLN0 + 0x0018)
	ld	(hl), #0x1f
	ld	hl, #(_MenuMapPLN0 + 0x0019)
	ld	(hl), #0x1a
	ld	hl, #(_MenuMapPLN0 + 0x001a)
	ld	(hl), #0x1a
	ld	hl, #(_MenuMapPLN0 + 0x001b)
	ld	(hl), #0x1a
	ld	hl, #(_MenuMapPLN0 + 0x001c)
	ld	(hl), #0x1a
	ld	hl, #(_MenuMapPLN0 + 0x001d)
	ld	(hl), #0x1a
	ld	hl, #(_MenuMapPLN0 + 0x001e)
	ld	(hl), #0x1a
	ld	hl, #(_MenuMapPLN0 + 0x001f)
	ld	(hl), #0x1f
	ld	hl, #(_MenuMapPLN0 + 0x0020)
	ld	(hl), #0x1f
	ld	hl, #(_MenuMapPLN0 + 0x0021)
	ld	(hl), #0x1a
	ld	hl, #(_MenuMapPLN0 + 0x0022)
	ld	(hl), #0x12
	ld	hl, #(_MenuMapPLN0 + 0x0023)
	ld	(hl), #0x0a
	ld	hl, #(_MenuMapPLN0 + 0x0024)
	ld	(hl), #0x08
	ld	hl, #(_MenuMapPLN0 + 0x0025)
	ld	(hl), #0x0f
	ld	hl, #(_MenuMapPLN0 + 0x0026)
	ld	(hl), #0x1a
	ld	hl, #(_MenuMapPLN0 + 0x0027)
	ld	(hl), #0x1f
	ld	hl, #(_MenuMapPLN0 + 0x0028)
	ld	(hl), #0x1f
	ld	hl, #(_MenuMapPLN0 + 0x0029)
	ld	(hl), #0x1a
	ld	hl, #(_MenuMapPLN0 + 0x002a)
	ld	(hl), #0x1a
	ld	hl, #(_MenuMapPLN0 + 0x002b)
	ld	(hl), #0x1a
	ld	hl, #(_MenuMapPLN0 + 0x002c)
	ld	(hl), #0x1a
	ld	hl, #(_MenuMapPLN0 + 0x002d)
	ld	(hl), #0x1a
	ld	hl, #(_MenuMapPLN0 + 0x002e)
	ld	(hl), #0x1a
	ld	hl, #(_MenuMapPLN0 + 0x002f)
	ld	(hl), #0x1f
	ld	hl, #(_MenuMapPLN0 + 0x0030)
	ld	(hl), #0x1f
	ld	hl, #(_MenuMapPLN0 + 0x0031)
	ld	(hl), #0x1a
	ld	hl, #(_MenuMapPLN0 + 0x0032)
	ld	(hl), #0x04
	ld	hl, #(_MenuMapPLN0 + 0x0033)
	ld	(hl), #0x17
	ld	hl, #(_MenuMapPLN0 + 0x0034)
	ld	(hl), #0x08
	ld	hl, #(_MenuMapPLN0 + 0x0035)
	ld	(hl), #0x13
	ld	hl, #(_MenuMapPLN0 + 0x0036)
	ld	(hl), #0x1a
	ld	hl, #(_MenuMapPLN0 + 0x0037)
	ld	(hl), #0x1f
	ld	hl, #(_MenuMapPLN0 + 0x0038)
	ld	(hl), #0x1f
	ld	hl, #(_MenuMapPLN0 + 0x0039)
	ld	(hl), #0x23
	ld	hl, #(_MenuMapPLN0 + 0x003a)
	ld	(hl), #0x1a
	ld	hl, #(_MenuMapPLN0 + 0x003b)
	ld	(hl), #0x1a
	ld	hl, #(_MenuMapPLN0 + 0x003c)
	ld	(hl), #0x1a
	ld	hl, #(_MenuMapPLN0 + 0x003d)
	ld	(hl), #0x1a
	ld	hl, #(_MenuMapPLN0 + 0x003e)
	ld	(hl), #0x24
	ld	hl, #(_MenuMapPLN0 + 0x003f)
	ld	(hl), #0x1f
	ld	hl, #(_MenuMapPLN0 + 0x0040)
	ld	(hl), #0x1d
	ld	hl, #(_MenuMapPLN0 + 0x0041)
	ld	(hl), #0x20
	ld	hl, #(_MenuMapPLN0 + 0x0042)
	ld	(hl), #0x20
	ld	hl, #(_MenuMapPLN0 + 0x0043)
	ld	(hl), #0x20
	ld	hl, #(_MenuMapPLN0 + 0x0044)
	ld	(hl), #0x20
	ld	hl, #(_MenuMapPLN0 + 0x0045)
	ld	(hl), #0x20
	ld	hl, #(_MenuMapPLN0 + 0x0046)
	ld	(hl), #0x20
	ld	hl, #(_MenuMapPLN0 + 0x0047)
	ld	(hl), #0x1e
;Test_Background/MenuMap.c:38: unsigned char MenuMapPLN1[] =
	ld	hl, #_MenuMapPLN1
	ld	(hl), #0x05
	ld	hl, #(_MenuMapPLN1 + 0x0001)
	ld	(hl), #0x05
	ld	hl, #(_MenuMapPLN1 + 0x0002)
	ld	(hl), #0x05
	ld	hl, #(_MenuMapPLN1 + 0x0003)
	ld	(hl), #0x05
	ld	hl, #(_MenuMapPLN1 + 0x0004)
	ld	(hl), #0x05
	ld	hl, #(_MenuMapPLN1 + 0x0005)
	ld	(hl), #0x05
	ld	hl, #(_MenuMapPLN1 + 0x0006)
	ld	(hl), #0x05
	ld	hl, #(_MenuMapPLN1 + 0x0007)
	ld	(hl), #0x05
	ld	hl, #(_MenuMapPLN1 + 0x0008)
	ld	(hl), #0x05
	ld	hl, #(_MenuMapPLN1 + 0x0009)
	ld	(hl), #0x05
	ld	hl, #(_MenuMapPLN1 + 0x000a)
	ld	(hl), #0x05
	ld	hl, #(_MenuMapPLN1 + 0x000b)
	ld	(hl), #0x05
	ld	hl, #(_MenuMapPLN1 + 0x000c)
	ld	(hl), #0x05
	ld	hl, #(_MenuMapPLN1 + 0x000d)
	ld	(hl), #0x05
	ld	hl, #(_MenuMapPLN1 + 0x000e)
	ld	(hl), #0x05
	ld	hl, #(_MenuMapPLN1 + 0x000f)
	ld	(hl), #0x05
	ld	hl, #(_MenuMapPLN1 + 0x0010)
	ld	(hl), #0x05
	ld	hl, #(_MenuMapPLN1 + 0x0011)
	ld	(hl), #0x05
	ld	hl, #(_MenuMapPLN1 + 0x0012)
	ld	(hl), #0x05
	ld	hl, #(_MenuMapPLN1 + 0x0013)
	ld	(hl), #0x05
	ld	hl, #(_MenuMapPLN1 + 0x0014)
	ld	(hl), #0x05
	ld	hl, #(_MenuMapPLN1 + 0x0015)
	ld	(hl), #0x05
	ld	hl, #(_MenuMapPLN1 + 0x0016)
	ld	(hl), #0x05
	ld	hl, #(_MenuMapPLN1 + 0x0017)
	ld	(hl), #0x05
	ld	hl, #(_MenuMapPLN1 + 0x0018)
	ld	(hl), #0x05
	ld	hl, #(_MenuMapPLN1 + 0x0019)
	ld	(hl), #0x05
	ld	hl, #(_MenuMapPLN1 + 0x001a)
	ld	(hl), #0x05
	ld	hl, #(_MenuMapPLN1 + 0x001b)
	ld	(hl), #0x05
	ld	hl, #(_MenuMapPLN1 + 0x001c)
	ld	(hl), #0x05
	ld	hl, #(_MenuMapPLN1 + 0x001d)
	ld	(hl), #0x05
	ld	hl, #(_MenuMapPLN1 + 0x001e)
	ld	(hl), #0x05
	ld	hl, #(_MenuMapPLN1 + 0x001f)
	ld	(hl), #0x05
	ld	hl, #(_MenuMapPLN1 + 0x0020)
	ld	(hl), #0x05
	ld	hl, #(_MenuMapPLN1 + 0x0021)
	ld	(hl), #0x05
	ld	hl, #(_MenuMapPLN1 + 0x0022)
	ld	(hl), #0x05
	ld	hl, #(_MenuMapPLN1 + 0x0023)
	ld	(hl), #0x05
	ld	hl, #(_MenuMapPLN1 + 0x0024)
	ld	(hl), #0x05
	ld	hl, #(_MenuMapPLN1 + 0x0025)
	ld	(hl), #0x05
	ld	hl, #(_MenuMapPLN1 + 0x0026)
	ld	(hl), #0x05
	ld	hl, #(_MenuMapPLN1 + 0x0027)
	ld	(hl), #0x05
	ld	hl, #(_MenuMapPLN1 + 0x0028)
	ld	(hl), #0x05
	ld	hl, #(_MenuMapPLN1 + 0x0029)
	ld	(hl), #0x05
	ld	hl, #(_MenuMapPLN1 + 0x002a)
	ld	(hl), #0x05
	ld	hl, #(_MenuMapPLN1 + 0x002b)
	ld	(hl), #0x05
	ld	hl, #(_MenuMapPLN1 + 0x002c)
	ld	(hl), #0x05
	ld	hl, #(_MenuMapPLN1 + 0x002d)
	ld	(hl), #0x05
	ld	hl, #(_MenuMapPLN1 + 0x002e)
	ld	(hl), #0x05
	ld	hl, #(_MenuMapPLN1 + 0x002f)
	ld	(hl), #0x05
	ld	hl, #(_MenuMapPLN1 + 0x0030)
	ld	(hl), #0x05
	ld	hl, #(_MenuMapPLN1 + 0x0031)
	ld	(hl), #0x05
	ld	hl, #(_MenuMapPLN1 + 0x0032)
	ld	(hl), #0x05
	ld	hl, #(_MenuMapPLN1 + 0x0033)
	ld	(hl), #0x05
	ld	hl, #(_MenuMapPLN1 + 0x0034)
	ld	(hl), #0x05
	ld	hl, #(_MenuMapPLN1 + 0x0035)
	ld	(hl), #0x05
	ld	hl, #(_MenuMapPLN1 + 0x0036)
	ld	(hl), #0x05
	ld	hl, #(_MenuMapPLN1 + 0x0037)
	ld	(hl), #0x05
	ld	hl, #(_MenuMapPLN1 + 0x0038)
	ld	(hl), #0x05
	ld	hl, #(_MenuMapPLN1 + 0x0039)
	ld	(hl), #0x05
	ld	hl, #(_MenuMapPLN1 + 0x003a)
	ld	(hl), #0x05
	ld	hl, #(_MenuMapPLN1 + 0x003b)
	ld	(hl), #0x05
	ld	hl, #(_MenuMapPLN1 + 0x003c)
	ld	(hl), #0x05
	ld	hl, #(_MenuMapPLN1 + 0x003d)
	ld	(hl), #0x05
	ld	hl, #(_MenuMapPLN1 + 0x003e)
	ld	(hl), #0x05
	ld	hl, #(_MenuMapPLN1 + 0x003f)
	ld	(hl), #0x05
	ld	hl, #(_MenuMapPLN1 + 0x0040)
	ld	(hl), #0x05
	ld	hl, #(_MenuMapPLN1 + 0x0041)
	ld	(hl), #0x05
	ld	hl, #(_MenuMapPLN1 + 0x0042)
	ld	(hl), #0x05
	ld	hl, #(_MenuMapPLN1 + 0x0043)
	ld	(hl), #0x05
	ld	hl, #(_MenuMapPLN1 + 0x0044)
	ld	(hl), #0x05
	ld	hl, #(_MenuMapPLN1 + 0x0045)
	ld	(hl), #0x05
	ld	hl, #(_MenuMapPLN1 + 0x0046)
	ld	(hl), #0x05
	ld	hl, #(_MenuMapPLN1 + 0x0047)
	ld	(hl), #0x05
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
	.area _CODE
	.area _CABS (ABS)
