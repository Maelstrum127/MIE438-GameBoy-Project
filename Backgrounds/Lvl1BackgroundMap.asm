;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.7 #12016 (MINGW64)
;--------------------------------------------------------
	.module Lvl1BackgroundMap
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _Lvl1BackgroundMapPLN1
	.globl _Lvl1BackgroundMapPLN0
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_Lvl1BackgroundMapPLN0::
	.ds 460
_Lvl1BackgroundMapPLN1::
	.ds 460
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
;Backgrounds/Lvl1BackgroundMap.c:26: unsigned char Lvl1BackgroundMapPLN0[] =
	ld	hl, #_Lvl1BackgroundMapPLN0
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0001)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0002)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0003)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0004)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0005)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0006)
	ld	(hl), #0x3c
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0007)
	ld	(hl), #0x30
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0008)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0009)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x000a)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x000b)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x000c)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x000d)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x000e)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x000f)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0010)
	ld	(hl), #0x52
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0011)
	ld	(hl), #0x52
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0012)
	ld	(hl), #0x2e
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0013)
	ld	(hl), #0x3a
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0014)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0015)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0016)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0017)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0018)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0019)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x001a)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x001b)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x001c)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x001d)
	ld	(hl), #0x3c
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x001e)
	ld	(hl), #0x2e
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x001f)
	ld	(hl), #0x52
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0020)
	ld	(hl), #0x52
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0021)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0022)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0023)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0024)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0025)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0026)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0027)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0028)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0029)
	ld	(hl), #0x2e
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x002a)
	ld	(hl), #0x3a
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x002b)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x002c)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x002d)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x002e)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x002f)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0030)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0031)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0032)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0033)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0034)
	ld	(hl), #0x3c
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0035)
	ld	(hl), #0x2e
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0036)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0037)
	ld	(hl), #0x52
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0038)
	ld	(hl), #0x52
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0039)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x003a)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x003b)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x003c)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x003d)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x003e)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x003f)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0040)
	ld	(hl), #0x2c
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0041)
	ld	(hl), #0x3a
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0042)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0043)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0044)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0045)
	ld	(hl), #0x39
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0046)
	ld	(hl), #0x39
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0047)
	ld	(hl), #0x39
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0048)
	ld	(hl), #0x39
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0049)
	ld	(hl), #0x39
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x004a)
	ld	(hl), #0x39
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x004b)
	ld	(hl), #0x3d
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x004c)
	ld	(hl), #0x2e
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x004d)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x004e)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x004f)
	ld	(hl), #0x52
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0050)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0051)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0052)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0053)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0054)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0055)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0056)
	ld	(hl), #0x52
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0057)
	ld	(hl), #0x2e
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0058)
	ld	(hl), #0x3a
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0059)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x005a)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x005b)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x005c)
	ld	(hl), #0x29
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x005d)
	ld	(hl), #0x2a
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x005e)
	ld	(hl), #0x2a
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x005f)
	ld	(hl), #0x2a
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0060)
	ld	(hl), #0x29
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0061)
	ld	(hl), #0x2a
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0062)
	ld	(hl), #0x2a
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0063)
	ld	(hl), #0x2d
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0064)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0065)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0066)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0067)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0068)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0069)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x006a)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x006b)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x006c)
	ld	(hl), #0x52
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x006d)
	ld	(hl), #0x52
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x006e)
	ld	(hl), #0x2e
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x006f)
	ld	(hl), #0x3a
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0070)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0071)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0072)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0073)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0074)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0075)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0076)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0077)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0078)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0079)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x007a)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x007b)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x007c)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x007d)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x007e)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x007f)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0080)
	ld	(hl), #0x32
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0081)
	ld	(hl), #0x2a
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0082)
	ld	(hl), #0x29
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0083)
	ld	(hl), #0x4e
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0084)
	ld	(hl), #0x2a
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0085)
	ld	(hl), #0x2d
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0086)
	ld	(hl), #0x3a
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0087)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0088)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0089)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x008a)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x008b)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x008c)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x008d)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x008e)
	ld	(hl), #0x52
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x008f)
	ld	(hl), #0x52
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0090)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0091)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0092)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0093)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0094)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0095)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0096)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0097)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0098)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0099)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x009a)
	ld	(hl), #0x4f
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x009b)
	ld	(hl), #0x53
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x009c)
	ld	(hl), #0x2e
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x009d)
	ld	(hl), #0x3a
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x009e)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x009f)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00a0)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00a1)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00a2)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00a3)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00a4)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00a5)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00a6)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00a7)
	ld	(hl), #0x52
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00a8)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00a9)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00aa)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00ab)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00ac)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00ad)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00ae)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00af)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00b0)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00b1)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00b2)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00b3)
	ld	(hl), #0x2e
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00b4)
	ld	(hl), #0x3a
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00b5)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00b6)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00b7)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00b8)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00b9)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00ba)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00bb)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00bc)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00bd)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00be)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00bf)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00c0)
	ld	(hl), #0x52
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00c1)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00c2)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00c3)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00c4)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00c5)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00c6)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00c7)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00c8)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00c9)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00ca)
	ld	(hl), #0x2e
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00cb)
	ld	(hl), #0x3a
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00cc)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00cd)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00ce)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00cf)
	ld	(hl), #0x52
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00d0)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00d1)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00d2)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00d3)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00d4)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00d5)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00d6)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00d7)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00d8)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00d9)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00da)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00db)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00dc)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00dd)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00de)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00df)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00e0)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00e1)
	ld	(hl), #0x2c
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00e2)
	ld	(hl), #0x3a
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00e3)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00e4)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00e5)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00e6)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00e7)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00e8)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00e9)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00ea)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00eb)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00ec)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00ed)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00ee)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00ef)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00f0)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00f1)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00f2)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00f3)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00f4)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00f5)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00f6)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00f7)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00f8)
	ld	(hl), #0x2e
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00f9)
	ld	(hl), #0x3a
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00fa)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00fb)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00fc)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00fd)
	ld	(hl), #0x52
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00fe)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x00ff)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0100)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0101)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0102)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0103)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0104)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0105)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0106)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0107)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0108)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0109)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x010a)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x010b)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x010c)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x010d)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x010e)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x010f)
	ld	(hl), #0x2e
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0110)
	ld	(hl), #0x3a
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0111)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0112)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0113)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0114)
	ld	(hl), #0x52
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0115)
	ld	(hl), #0x52
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0116)
	ld	(hl), #0x52
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0117)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0118)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0119)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x011a)
	ld	(hl), #0x4a
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x011b)
	ld	(hl), #0x31
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x011c)
	ld	(hl), #0x41
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x011d)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x011e)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x011f)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0120)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0121)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0122)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0123)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0124)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0125)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0126)
	ld	(hl), #0x2e
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0127)
	ld	(hl), #0x3a
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0128)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0129)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x012a)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x012b)
	ld	(hl), #0x2a
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x012c)
	ld	(hl), #0x2a
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x012d)
	ld	(hl), #0x2a
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x012e)
	ld	(hl), #0x29
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x012f)
	ld	(hl), #0x2a
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0130)
	ld	(hl), #0x2a
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0131)
	ld	(hl), #0x2d
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0132)
	ld	(hl), #0x41
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0133)
	ld	(hl), #0x2e
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0134)
	ld	(hl), #0x52
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0135)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0136)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0137)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0138)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0139)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x013a)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x013b)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x013c)
	ld	(hl), #0x54
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x013d)
	ld	(hl), #0x4b
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x013e)
	ld	(hl), #0x3a
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x013f)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0140)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0141)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0142)
	ld	(hl), #0x3b
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0143)
	ld	(hl), #0x3b
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0144)
	ld	(hl), #0x3b
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0145)
	ld	(hl), #0x3b
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0146)
	ld	(hl), #0x3b
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0147)
	ld	(hl), #0x3b
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0148)
	ld	(hl), #0x3e
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0149)
	ld	(hl), #0x2e
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x014a)
	ld	(hl), #0x2e
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x014b)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x014c)
	ld	(hl), #0x52
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x014d)
	ld	(hl), #0x52
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x014e)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x014f)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0150)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0151)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0152)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0153)
	ld	(hl), #0x55
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0154)
	ld	(hl), #0x2e
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0155)
	ld	(hl), #0x3a
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0156)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0157)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0158)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0159)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x015a)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x015b)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x015c)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x015d)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x015e)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x015f)
	ld	(hl), #0x3c
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0160)
	ld	(hl), #0x2c
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0161)
	ld	(hl), #0x2e
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0162)
	ld	(hl), #0x52
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0163)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0164)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0165)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0166)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0167)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0168)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0169)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x016a)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x016b)
	ld	(hl), #0x2e
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x016c)
	ld	(hl), #0x3a
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x016d)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x016e)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x016f)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0170)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0171)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0172)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0173)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0174)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0175)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0176)
	ld	(hl), #0x3c
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0177)
	ld	(hl), #0x2e
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0178)
	ld	(hl), #0x2c
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0179)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x017a)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x017b)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x017c)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x017d)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x017e)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x017f)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0180)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0181)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0182)
	ld	(hl), #0x2e
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0183)
	ld	(hl), #0x3a
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0184)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0185)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0186)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0187)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0188)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0189)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x018a)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x018b)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x018c)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x018d)
	ld	(hl), #0x3c
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x018e)
	ld	(hl), #0x2e
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x018f)
	ld	(hl), #0x2e
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0190)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0191)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0192)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0193)
	ld	(hl), #0x52
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0194)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0195)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0196)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0197)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0198)
	ld	(hl), #0x52
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x0199)
	ld	(hl), #0x2c
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x019a)
	ld	(hl), #0x3a
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x019b)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x019c)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x019d)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x019e)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x019f)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x01a0)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x01a1)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x01a2)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x01a3)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x01a4)
	ld	(hl), #0x3c
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x01a5)
	ld	(hl), #0x2c
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x01a6)
	ld	(hl), #0x2e
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x01a7)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x01a8)
	ld	(hl), #0x52
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x01a9)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x01aa)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x01ab)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x01ac)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x01ad)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x01ae)
	ld	(hl), #0x52
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x01af)
	ld	(hl), #0x52
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x01b0)
	ld	(hl), #0x2c
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x01b1)
	ld	(hl), #0x3a
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x01b2)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x01b3)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x01b4)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x01b5)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x01b6)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x01b7)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x01b8)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x01b9)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x01ba)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x01bb)
	ld	(hl), #0x3c
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x01bc)
	ld	(hl), #0x2e
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x01bd)
	ld	(hl), #0x2e
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x01be)
	ld	(hl), #0x52
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x01bf)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x01c0)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x01c1)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x01c2)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x01c3)
	ld	(hl), #0x51
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x01c4)
	ld	(hl), #0x52
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x01c5)
	ld	(hl), #0x52
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x01c6)
	ld	(hl), #0x52
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x01c7)
	ld	(hl), #0x2e
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x01c8)
	ld	(hl), #0x3a
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x01c9)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x01ca)
	ld	(hl), #0x38
	ld	hl, #(_Lvl1BackgroundMapPLN0 + 0x01cb)
	ld	(hl), #0x38
;Backgrounds/Lvl1BackgroundMap.c:76: unsigned char Lvl1BackgroundMapPLN1[] =
	ld	hl, #_Lvl1BackgroundMapPLN1
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0001)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0002)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0003)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0004)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0005)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0006)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0007)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0008)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0009)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x000a)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x000b)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x000c)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x000d)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x000e)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x000f)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0010)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0011)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0012)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0013)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0014)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0015)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0016)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0017)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0018)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0019)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x001a)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x001b)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x001c)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x001d)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x001e)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x001f)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0020)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0021)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0022)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0023)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0024)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0025)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0026)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0027)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0028)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0029)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x002a)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x002b)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x002c)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x002d)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x002e)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x002f)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0030)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0031)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0032)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0033)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0034)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0035)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0036)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0037)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0038)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0039)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x003a)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x003b)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x003c)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x003d)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x003e)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x003f)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0040)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0041)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0042)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0043)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0044)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0045)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0046)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0047)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0048)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0049)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x004a)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x004b)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x004c)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x004d)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x004e)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x004f)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0050)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0051)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0052)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0053)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0054)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0055)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0056)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0057)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0058)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0059)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x005a)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x005b)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x005c)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x005d)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x005e)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x005f)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0060)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0061)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0062)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0063)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0064)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0065)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0066)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0067)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0068)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0069)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x006a)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x006b)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x006c)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x006d)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x006e)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x006f)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0070)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0071)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0072)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0073)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0074)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0075)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0076)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0077)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0078)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0079)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x007a)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x007b)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x007c)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x007d)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x007e)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x007f)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0080)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0081)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0082)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0083)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0084)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0085)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0086)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0087)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0088)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0089)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x008a)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x008b)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x008c)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x008d)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x008e)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x008f)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0090)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0091)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0092)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0093)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0094)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0095)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0096)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0097)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0098)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0099)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x009a)
	ld	(hl), #0x05
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x009b)
	ld	(hl), #0x05
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x009c)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x009d)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x009e)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x009f)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00a0)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00a1)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00a2)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00a3)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00a4)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00a5)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00a6)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00a7)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00a8)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00a9)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00aa)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00ab)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00ac)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00ad)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00ae)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00af)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00b0)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00b1)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00b2)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00b3)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00b4)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00b5)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00b6)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00b7)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00b8)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00b9)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00ba)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00bb)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00bc)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00bd)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00be)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00bf)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00c0)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00c1)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00c2)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00c3)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00c4)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00c5)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00c6)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00c7)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00c8)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00c9)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00ca)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00cb)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00cc)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00cd)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00ce)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00cf)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00d0)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00d1)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00d2)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00d3)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00d4)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00d5)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00d6)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00d7)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00d8)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00d9)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00da)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00db)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00dc)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00dd)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00de)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00df)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00e0)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00e1)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00e2)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00e3)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00e4)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00e5)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00e6)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00e7)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00e8)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00e9)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00ea)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00eb)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00ec)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00ed)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00ee)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00ef)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00f0)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00f1)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00f2)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00f3)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00f4)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00f5)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00f6)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00f7)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00f8)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00f9)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00fa)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00fb)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00fc)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00fd)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00fe)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x00ff)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0100)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0101)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0102)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0103)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0104)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0105)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0106)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0107)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0108)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0109)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x010a)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x010b)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x010c)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x010d)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x010e)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x010f)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0110)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0111)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0112)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0113)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0114)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0115)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0116)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0117)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0118)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0119)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x011a)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x011b)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x011c)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x011d)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x011e)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x011f)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0120)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0121)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0122)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0123)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0124)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0125)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0126)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0127)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0128)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0129)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x012a)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x012b)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x012c)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x012d)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x012e)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x012f)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0130)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0131)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0132)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0133)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0134)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0135)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0136)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0137)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0138)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0139)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x013a)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x013b)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x013c)
	ld	(hl), #0x05
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x013d)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x013e)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x013f)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0140)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0141)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0142)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0143)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0144)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0145)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0146)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0147)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0148)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0149)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x014a)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x014b)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x014c)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x014d)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x014e)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x014f)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0150)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0151)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0152)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0153)
	ld	(hl), #0x05
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0154)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0155)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0156)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0157)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0158)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0159)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x015a)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x015b)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x015c)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x015d)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x015e)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x015f)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0160)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0161)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0162)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0163)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0164)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0165)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0166)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0167)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0168)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0169)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x016a)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x016b)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x016c)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x016d)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x016e)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x016f)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0170)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0171)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0172)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0173)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0174)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0175)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0176)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0177)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0178)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0179)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x017a)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x017b)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x017c)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x017d)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x017e)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x017f)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0180)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0181)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0182)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0183)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0184)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0185)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0186)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0187)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0188)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0189)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x018a)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x018b)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x018c)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x018d)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x018e)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x018f)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0190)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0191)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0192)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0193)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0194)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0195)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0196)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0197)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0198)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x0199)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x019a)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x019b)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x019c)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x019d)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x019e)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x019f)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x01a0)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x01a1)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x01a2)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x01a3)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x01a4)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x01a5)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x01a6)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x01a7)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x01a8)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x01a9)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x01aa)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x01ab)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x01ac)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x01ad)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x01ae)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x01af)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x01b0)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x01b1)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x01b2)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x01b3)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x01b4)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x01b5)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x01b6)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x01b7)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x01b8)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x01b9)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x01ba)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x01bb)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x01bc)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x01bd)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x01be)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x01bf)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x01c0)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x01c1)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x01c2)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x01c3)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x01c4)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x01c5)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x01c6)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x01c7)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x01c8)
	ld	(hl), #0x04
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x01c9)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x01ca)
	ld	(hl), #0x01
	ld	hl, #(_Lvl1BackgroundMapPLN1 + 0x01cb)
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
	.area _CODE
	.area _CABS (ABS)
