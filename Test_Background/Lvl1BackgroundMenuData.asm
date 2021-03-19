;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.7 #12016 (MINGW64)
;--------------------------------------------------------
	.module Lvl1BackgroundMenuData
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TileLabel
	.globl _TileLabelCGB
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_TileLabelCGB::
	.ds 84
_TileLabel::
	.ds 1344
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
;Test_Background/Lvl1BackgroundMenuData.c:26: unsigned char TileLabelCGB[] =
	ld	hl, #_TileLabelCGB
	ld	(hl), #0x05
	ld	hl, #(_TileLabelCGB + 0x0001)
	ld	(hl), #0x05
	ld	hl, #(_TileLabelCGB + 0x0002)
	ld	(hl), #0x05
	ld	hl, #(_TileLabelCGB + 0x0003)
	ld	(hl), #0x05
	ld	hl, #(_TileLabelCGB + 0x0004)
	ld	(hl), #0x05
	ld	hl, #(_TileLabelCGB + 0x0005)
	ld	(hl), #0x05
	ld	hl, #(_TileLabelCGB + 0x0006)
	ld	(hl), #0x05
	ld	hl, #(_TileLabelCGB + 0x0007)
	ld	(hl), #0x05
	ld	hl, #(_TileLabelCGB + 0x0008)
	ld	(hl), #0x05
	ld	hl, #(_TileLabelCGB + 0x0009)
	ld	(hl), #0x05
	ld	hl, #(_TileLabelCGB + 0x000a)
	ld	(hl), #0x05
	ld	hl, #(_TileLabelCGB + 0x000b)
	ld	(hl), #0x05
	ld	hl, #(_TileLabelCGB + 0x000c)
	ld	(hl), #0x05
	ld	hl, #(_TileLabelCGB + 0x000d)
	ld	(hl), #0x05
	ld	hl, #(_TileLabelCGB + 0x000e)
	ld	(hl), #0x05
	ld	hl, #(_TileLabelCGB + 0x000f)
	ld	(hl), #0x05
	ld	hl, #(_TileLabelCGB + 0x0010)
	ld	(hl), #0x05
	ld	hl, #(_TileLabelCGB + 0x0011)
	ld	(hl), #0x05
	ld	hl, #(_TileLabelCGB + 0x0012)
	ld	(hl), #0x05
	ld	hl, #(_TileLabelCGB + 0x0013)
	ld	(hl), #0x05
	ld	hl, #(_TileLabelCGB + 0x0014)
	ld	(hl), #0x05
	ld	hl, #(_TileLabelCGB + 0x0015)
	ld	(hl), #0x05
	ld	hl, #(_TileLabelCGB + 0x0016)
	ld	(hl), #0x05
	ld	hl, #(_TileLabelCGB + 0x0017)
	ld	(hl), #0x05
	ld	hl, #(_TileLabelCGB + 0x0018)
	ld	(hl), #0x05
	ld	hl, #(_TileLabelCGB + 0x0019)
	ld	(hl), #0x05
	ld	hl, #(_TileLabelCGB + 0x001a)
	ld	(hl), #0x05
	ld	hl, #(_TileLabelCGB + 0x001b)
	ld	(hl), #0x05
	ld	hl, #(_TileLabelCGB + 0x001c)
	ld	(hl), #0x05
	ld	hl, #(_TileLabelCGB + 0x001d)
	ld	(hl), #0x05
	ld	hl, #(_TileLabelCGB + 0x001e)
	ld	(hl), #0x05
	ld	hl, #(_TileLabelCGB + 0x001f)
	ld	(hl), #0x05
	ld	hl, #(_TileLabelCGB + 0x0020)
	ld	(hl), #0x05
	ld	hl, #(_TileLabelCGB + 0x0021)
	ld	(hl), #0x05
	ld	hl, #(_TileLabelCGB + 0x0022)
	ld	(hl), #0x05
	ld	hl, #(_TileLabelCGB + 0x0023)
	ld	(hl), #0x05
	ld	hl, #(_TileLabelCGB + 0x0024)
	ld	(hl), #0x05
	ld	hl, #(_TileLabelCGB + 0x0025)
	ld	(hl), #0x00
	ld	hl, #(_TileLabelCGB + 0x0026)
	ld	(hl), #0x00
	ld	hl, #(_TileLabelCGB + 0x0027)
	ld	(hl), #0x00
	ld	hl, #(_TileLabelCGB + 0x0028)
	ld	(hl), #0x01
	ld	hl, #(_TileLabelCGB + 0x0029)
	ld	(hl), #0x01
	ld	hl, #(_TileLabelCGB + 0x002a)
	ld	(hl), #0x01
	ld	hl, #(_TileLabelCGB + 0x002b)
	ld	(hl), #0x01
	ld	hl, #(_TileLabelCGB + 0x002c)
	ld	(hl), #0x01
	ld	hl, #(_TileLabelCGB + 0x002d)
	ld	(hl), #0x01
	ld	hl, #(_TileLabelCGB + 0x002e)
	ld	(hl), #0x01
	ld	hl, #(_TileLabelCGB + 0x002f)
	ld	(hl), #0x01
	ld	hl, #(_TileLabelCGB + 0x0030)
	ld	(hl), #0x01
	ld	hl, #(_TileLabelCGB + 0x0031)
	ld	(hl), #0x01
	ld	hl, #(_TileLabelCGB + 0x0032)
	ld	(hl), #0x04
	ld	hl, #(_TileLabelCGB + 0x0033)
	ld	(hl), #0x04
	ld	hl, #(_TileLabelCGB + 0x0034)
	ld	(hl), #0x04
	ld	hl, #(_TileLabelCGB + 0x0035)
	ld	(hl), #0x04
	ld	hl, #(_TileLabelCGB + 0x0036)
	ld	(hl), #0x04
	ld	hl, #(_TileLabelCGB + 0x0037)
	ld	(hl), #0x04
	ld	hl, #(_TileLabelCGB + 0x0038)
	ld	(hl), #0x01
	ld	hl, #(_TileLabelCGB + 0x0039)
	ld	(hl), #0x04
	ld	hl, #(_TileLabelCGB + 0x003a)
	ld	(hl), #0x04
	ld	hl, #(_TileLabelCGB + 0x003b)
	ld	(hl), #0x04
	ld	hl, #(_TileLabelCGB + 0x003c)
	ld	(hl), #0x04
	ld	hl, #(_TileLabelCGB + 0x003d)
	ld	(hl), #0x04
	ld	hl, #(_TileLabelCGB + 0x003e)
	ld	(hl), #0x04
	ld	hl, #(_TileLabelCGB + 0x003f)
	ld	(hl), #0x04
	ld	hl, #(_TileLabelCGB + 0x0040)
	ld	(hl), #0x04
	ld	hl, #(_TileLabelCGB + 0x0041)
	ld	(hl), #0x01
	ld	hl, #(_TileLabelCGB + 0x0042)
	ld	(hl), #0x04
	ld	hl, #(_TileLabelCGB + 0x0043)
	ld	(hl), #0x04
	ld	hl, #(_TileLabelCGB + 0x0044)
	ld	(hl), #0x04
	ld	hl, #(_TileLabelCGB + 0x0045)
	ld	(hl), #0x04
	ld	hl, #(_TileLabelCGB + 0x0046)
	ld	(hl), #0x04
	ld	hl, #(_TileLabelCGB + 0x0047)
	ld	(hl), #0x04
	ld	hl, #(_TileLabelCGB + 0x0048)
	ld	(hl), #0x04
	ld	hl, #(_TileLabelCGB + 0x0049)
	ld	(hl), #0x04
	ld	hl, #(_TileLabelCGB + 0x004a)
	ld	(hl), #0x00
	ld	hl, #(_TileLabelCGB + 0x004b)
	ld	(hl), #0x00
	ld	hl, #(_TileLabelCGB + 0x004c)
	ld	(hl), #0x00
	ld	hl, #(_TileLabelCGB + 0x004d)
	ld	(hl), #0x00
	ld	hl, #(_TileLabelCGB + 0x004e)
	ld	(hl), #0x00
	ld	hl, #(_TileLabelCGB + 0x004f)
	ld	(hl), #0x00
	ld	hl, #(_TileLabelCGB + 0x0050)
	ld	(hl), #0x03
	ld	hl, #(_TileLabelCGB + 0x0051)
	ld	(hl), #0x01
	ld	hl, #(_TileLabelCGB + 0x0052)
	ld	(hl), #0x01
	ld	hl, #(_TileLabelCGB + 0x0053)
	ld	(hl), #0x01
;Test_Background/Lvl1BackgroundMenuData.c:41: unsigned char TileLabel[] =
	ld	hl, #_TileLabel
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0001)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0002)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0003)
	ld	(hl), #0x3c
	ld	hl, #(_TileLabel + 0x0004)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0005)
	ld	(hl), #0x24
	ld	hl, #(_TileLabel + 0x0006)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0007)
	ld	(hl), #0x3c
	ld	hl, #(_TileLabel + 0x0008)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0009)
	ld	(hl), #0x24
	ld	hl, #(_TileLabel + 0x000a)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x000b)
	ld	(hl), #0x24
	ld	hl, #(_TileLabel + 0x000c)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x000d)
	ld	(hl), #0x24
	ld	hl, #(_TileLabel + 0x000e)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x000f)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0010)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0011)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0012)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0013)
	ld	(hl), #0x38
	ld	hl, #(_TileLabel + 0x0014)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0015)
	ld	(hl), #0x24
	ld	hl, #(_TileLabel + 0x0016)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0017)
	ld	(hl), #0x38
	ld	hl, #(_TileLabel + 0x0018)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0019)
	ld	(hl), #0x24
	ld	hl, #(_TileLabel + 0x001a)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x001b)
	ld	(hl), #0x24
	ld	hl, #(_TileLabel + 0x001c)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x001d)
	ld	(hl), #0x38
	ld	hl, #(_TileLabel + 0x001e)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x001f)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0020)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0021)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0022)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0023)
	ld	(hl), #0x3c
	ld	hl, #(_TileLabel + 0x0024)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0025)
	ld	(hl), #0x20
	ld	hl, #(_TileLabel + 0x0026)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0027)
	ld	(hl), #0x20
	ld	hl, #(_TileLabel + 0x0028)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0029)
	ld	(hl), #0x20
	ld	hl, #(_TileLabel + 0x002a)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x002b)
	ld	(hl), #0x20
	ld	hl, #(_TileLabel + 0x002c)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x002d)
	ld	(hl), #0x3c
	ld	hl, #(_TileLabel + 0x002e)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x002f)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0030)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0031)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0032)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0033)
	ld	(hl), #0x38
	ld	hl, #(_TileLabel + 0x0034)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0035)
	ld	(hl), #0x24
	ld	hl, #(_TileLabel + 0x0036)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0037)
	ld	(hl), #0x24
	ld	hl, #(_TileLabel + 0x0038)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0039)
	ld	(hl), #0x24
	ld	hl, #(_TileLabel + 0x003a)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x003b)
	ld	(hl), #0x24
	ld	hl, #(_TileLabel + 0x003c)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x003d)
	ld	(hl), #0x38
	ld	hl, #(_TileLabel + 0x003e)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x003f)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0040)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0041)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0042)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0043)
	ld	(hl), #0x3c
	ld	hl, #(_TileLabel + 0x0044)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0045)
	ld	(hl), #0x20
	ld	hl, #(_TileLabel + 0x0046)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0047)
	ld	(hl), #0x38
	ld	hl, #(_TileLabel + 0x0048)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0049)
	ld	(hl), #0x20
	ld	hl, #(_TileLabel + 0x004a)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x004b)
	ld	(hl), #0x20
	ld	hl, #(_TileLabel + 0x004c)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x004d)
	ld	(hl), #0x3c
	ld	hl, #(_TileLabel + 0x004e)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x004f)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0050)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0051)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0052)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0053)
	ld	(hl), #0x3c
	ld	hl, #(_TileLabel + 0x0054)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0055)
	ld	(hl), #0x20
	ld	hl, #(_TileLabel + 0x0056)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0057)
	ld	(hl), #0x38
	ld	hl, #(_TileLabel + 0x0058)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0059)
	ld	(hl), #0x20
	ld	hl, #(_TileLabel + 0x005a)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x005b)
	ld	(hl), #0x20
	ld	hl, #(_TileLabel + 0x005c)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x005d)
	ld	(hl), #0x20
	ld	hl, #(_TileLabel + 0x005e)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x005f)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0060)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0061)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0062)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0063)
	ld	(hl), #0x3c
	ld	hl, #(_TileLabel + 0x0064)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0065)
	ld	(hl), #0x20
	ld	hl, #(_TileLabel + 0x0066)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0067)
	ld	(hl), #0x20
	ld	hl, #(_TileLabel + 0x0068)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0069)
	ld	(hl), #0x2c
	ld	hl, #(_TileLabel + 0x006a)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x006b)
	ld	(hl), #0x24
	ld	hl, #(_TileLabel + 0x006c)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x006d)
	ld	(hl), #0x3c
	ld	hl, #(_TileLabel + 0x006e)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x006f)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0070)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0071)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0072)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0073)
	ld	(hl), #0x24
	ld	hl, #(_TileLabel + 0x0074)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0075)
	ld	(hl), #0x24
	ld	hl, #(_TileLabel + 0x0076)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0077)
	ld	(hl), #0x3c
	ld	hl, #(_TileLabel + 0x0078)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0079)
	ld	(hl), #0x24
	ld	hl, #(_TileLabel + 0x007a)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x007b)
	ld	(hl), #0x24
	ld	hl, #(_TileLabel + 0x007c)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x007d)
	ld	(hl), #0x24
	ld	hl, #(_TileLabel + 0x007e)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x007f)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0080)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0081)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0082)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0083)
	ld	(hl), #0x3e
	ld	hl, #(_TileLabel + 0x0084)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0085)
	ld	(hl), #0x08
	ld	hl, #(_TileLabel + 0x0086)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0087)
	ld	(hl), #0x08
	ld	hl, #(_TileLabel + 0x0088)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0089)
	ld	(hl), #0x08
	ld	hl, #(_TileLabel + 0x008a)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x008b)
	ld	(hl), #0x08
	ld	hl, #(_TileLabel + 0x008c)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x008d)
	ld	(hl), #0x3e
	ld	hl, #(_TileLabel + 0x008e)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x008f)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0090)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0091)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0092)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0093)
	ld	(hl), #0x1e
	ld	hl, #(_TileLabel + 0x0094)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0095)
	ld	(hl), #0x04
	ld	hl, #(_TileLabel + 0x0096)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0097)
	ld	(hl), #0x04
	ld	hl, #(_TileLabel + 0x0098)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0099)
	ld	(hl), #0x04
	ld	hl, #(_TileLabel + 0x009a)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x009b)
	ld	(hl), #0x24
	ld	hl, #(_TileLabel + 0x009c)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x009d)
	ld	(hl), #0x3c
	ld	hl, #(_TileLabel + 0x009e)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x009f)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x00a0)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x00a1)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x00a2)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x00a3)
	ld	(hl), #0x24
	ld	hl, #(_TileLabel + 0x00a4)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x00a5)
	ld	(hl), #0x28
	ld	hl, #(_TileLabel + 0x00a6)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x00a7)
	ld	(hl), #0x30
	ld	hl, #(_TileLabel + 0x00a8)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x00a9)
	ld	(hl), #0x28
	ld	hl, #(_TileLabel + 0x00aa)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x00ab)
	ld	(hl), #0x24
	ld	hl, #(_TileLabel + 0x00ac)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x00ad)
	ld	(hl), #0x24
	ld	hl, #(_TileLabel + 0x00ae)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x00af)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x00b0)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x00b1)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x00b2)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x00b3)
	ld	(hl), #0x20
	ld	hl, #(_TileLabel + 0x00b4)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x00b5)
	ld	(hl), #0x20
	ld	hl, #(_TileLabel + 0x00b6)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x00b7)
	ld	(hl), #0x20
	ld	hl, #(_TileLabel + 0x00b8)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x00b9)
	ld	(hl), #0x20
	ld	hl, #(_TileLabel + 0x00ba)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x00bb)
	ld	(hl), #0x20
	ld	hl, #(_TileLabel + 0x00bc)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x00bd)
	ld	(hl), #0x3c
	ld	hl, #(_TileLabel + 0x00be)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x00bf)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x00c0)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x00c1)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x00c2)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x00c3)
	ld	(hl), #0x3e
	ld	hl, #(_TileLabel + 0x00c4)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x00c5)
	ld	(hl), #0x2a
	ld	hl, #(_TileLabel + 0x00c6)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x00c7)
	ld	(hl), #0x2a
	ld	hl, #(_TileLabel + 0x00c8)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x00c9)
	ld	(hl), #0x22
	ld	hl, #(_TileLabel + 0x00ca)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x00cb)
	ld	(hl), #0x22
	ld	hl, #(_TileLabel + 0x00cc)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x00cd)
	ld	(hl), #0x22
	ld	hl, #(_TileLabel + 0x00ce)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x00cf)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x00d0)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x00d1)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x00d2)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x00d3)
	ld	(hl), #0x3c
	ld	hl, #(_TileLabel + 0x00d4)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x00d5)
	ld	(hl), #0x24
	ld	hl, #(_TileLabel + 0x00d6)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x00d7)
	ld	(hl), #0x24
	ld	hl, #(_TileLabel + 0x00d8)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x00d9)
	ld	(hl), #0x24
	ld	hl, #(_TileLabel + 0x00da)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x00db)
	ld	(hl), #0x24
	ld	hl, #(_TileLabel + 0x00dc)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x00dd)
	ld	(hl), #0x24
	ld	hl, #(_TileLabel + 0x00de)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x00df)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x00e0)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x00e1)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x00e2)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x00e3)
	ld	(hl), #0x3c
	ld	hl, #(_TileLabel + 0x00e4)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x00e5)
	ld	(hl), #0x24
	ld	hl, #(_TileLabel + 0x00e6)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x00e7)
	ld	(hl), #0x24
	ld	hl, #(_TileLabel + 0x00e8)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x00e9)
	ld	(hl), #0x24
	ld	hl, #(_TileLabel + 0x00ea)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x00eb)
	ld	(hl), #0x24
	ld	hl, #(_TileLabel + 0x00ec)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x00ed)
	ld	(hl), #0x3c
	ld	hl, #(_TileLabel + 0x00ee)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x00ef)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x00f0)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x00f1)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x00f2)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x00f3)
	ld	(hl), #0x3c
	ld	hl, #(_TileLabel + 0x00f4)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x00f5)
	ld	(hl), #0x24
	ld	hl, #(_TileLabel + 0x00f6)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x00f7)
	ld	(hl), #0x3c
	ld	hl, #(_TileLabel + 0x00f8)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x00f9)
	ld	(hl), #0x20
	ld	hl, #(_TileLabel + 0x00fa)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x00fb)
	ld	(hl), #0x20
	ld	hl, #(_TileLabel + 0x00fc)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x00fd)
	ld	(hl), #0x20
	ld	hl, #(_TileLabel + 0x00fe)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x00ff)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0100)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0101)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0102)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0103)
	ld	(hl), #0x3c
	ld	hl, #(_TileLabel + 0x0104)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0105)
	ld	(hl), #0x24
	ld	hl, #(_TileLabel + 0x0106)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0107)
	ld	(hl), #0x24
	ld	hl, #(_TileLabel + 0x0108)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0109)
	ld	(hl), #0x24
	ld	hl, #(_TileLabel + 0x010a)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x010b)
	ld	(hl), #0x2c
	ld	hl, #(_TileLabel + 0x010c)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x010d)
	ld	(hl), #0x3c
	ld	hl, #(_TileLabel + 0x010e)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x010f)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0110)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0111)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0112)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0113)
	ld	(hl), #0x3c
	ld	hl, #(_TileLabel + 0x0114)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0115)
	ld	(hl), #0x24
	ld	hl, #(_TileLabel + 0x0116)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0117)
	ld	(hl), #0x3c
	ld	hl, #(_TileLabel + 0x0118)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0119)
	ld	(hl), #0x28
	ld	hl, #(_TileLabel + 0x011a)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x011b)
	ld	(hl), #0x24
	ld	hl, #(_TileLabel + 0x011c)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x011d)
	ld	(hl), #0x24
	ld	hl, #(_TileLabel + 0x011e)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x011f)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0120)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0121)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0122)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0123)
	ld	(hl), #0x3c
	ld	hl, #(_TileLabel + 0x0124)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0125)
	ld	(hl), #0x20
	ld	hl, #(_TileLabel + 0x0126)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0127)
	ld	(hl), #0x3c
	ld	hl, #(_TileLabel + 0x0128)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0129)
	ld	(hl), #0x04
	ld	hl, #(_TileLabel + 0x012a)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x012b)
	ld	(hl), #0x04
	ld	hl, #(_TileLabel + 0x012c)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x012d)
	ld	(hl), #0x3c
	ld	hl, #(_TileLabel + 0x012e)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x012f)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0130)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0131)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0132)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0133)
	ld	(hl), #0x3e
	ld	hl, #(_TileLabel + 0x0134)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0135)
	ld	(hl), #0x08
	ld	hl, #(_TileLabel + 0x0136)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0137)
	ld	(hl), #0x08
	ld	hl, #(_TileLabel + 0x0138)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0139)
	ld	(hl), #0x08
	ld	hl, #(_TileLabel + 0x013a)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x013b)
	ld	(hl), #0x08
	ld	hl, #(_TileLabel + 0x013c)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x013d)
	ld	(hl), #0x08
	ld	hl, #(_TileLabel + 0x013e)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x013f)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0140)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0141)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0142)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0143)
	ld	(hl), #0x24
	ld	hl, #(_TileLabel + 0x0144)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0145)
	ld	(hl), #0x24
	ld	hl, #(_TileLabel + 0x0146)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0147)
	ld	(hl), #0x24
	ld	hl, #(_TileLabel + 0x0148)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0149)
	ld	(hl), #0x24
	ld	hl, #(_TileLabel + 0x014a)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x014b)
	ld	(hl), #0x24
	ld	hl, #(_TileLabel + 0x014c)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x014d)
	ld	(hl), #0x3c
	ld	hl, #(_TileLabel + 0x014e)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x014f)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0150)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0151)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0152)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0153)
	ld	(hl), #0x22
	ld	hl, #(_TileLabel + 0x0154)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0155)
	ld	(hl), #0x22
	ld	hl, #(_TileLabel + 0x0156)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0157)
	ld	(hl), #0x22
	ld	hl, #(_TileLabel + 0x0158)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0159)
	ld	(hl), #0x22
	ld	hl, #(_TileLabel + 0x015a)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x015b)
	ld	(hl), #0x14
	ld	hl, #(_TileLabel + 0x015c)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x015d)
	ld	(hl), #0x08
	ld	hl, #(_TileLabel + 0x015e)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x015f)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0160)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0161)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0162)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0163)
	ld	(hl), #0x22
	ld	hl, #(_TileLabel + 0x0164)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0165)
	ld	(hl), #0x22
	ld	hl, #(_TileLabel + 0x0166)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0167)
	ld	(hl), #0x22
	ld	hl, #(_TileLabel + 0x0168)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0169)
	ld	(hl), #0x2a
	ld	hl, #(_TileLabel + 0x016a)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x016b)
	ld	(hl), #0x2a
	ld	hl, #(_TileLabel + 0x016c)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x016d)
	ld	(hl), #0x3e
	ld	hl, #(_TileLabel + 0x016e)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x016f)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0170)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0171)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0172)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0173)
	ld	(hl), #0x22
	ld	hl, #(_TileLabel + 0x0174)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0175)
	ld	(hl), #0x14
	ld	hl, #(_TileLabel + 0x0176)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0177)
	ld	(hl), #0x08
	ld	hl, #(_TileLabel + 0x0178)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0179)
	ld	(hl), #0x14
	ld	hl, #(_TileLabel + 0x017a)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x017b)
	ld	(hl), #0x22
	ld	hl, #(_TileLabel + 0x017c)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x017d)
	ld	(hl), #0x22
	ld	hl, #(_TileLabel + 0x017e)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x017f)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0180)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0181)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0182)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0183)
	ld	(hl), #0x22
	ld	hl, #(_TileLabel + 0x0184)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0185)
	ld	(hl), #0x22
	ld	hl, #(_TileLabel + 0x0186)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0187)
	ld	(hl), #0x14
	ld	hl, #(_TileLabel + 0x0188)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0189)
	ld	(hl), #0x08
	ld	hl, #(_TileLabel + 0x018a)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x018b)
	ld	(hl), #0x08
	ld	hl, #(_TileLabel + 0x018c)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x018d)
	ld	(hl), #0x08
	ld	hl, #(_TileLabel + 0x018e)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x018f)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0190)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0191)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0192)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0193)
	ld	(hl), #0x3e
	ld	hl, #(_TileLabel + 0x0194)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0195)
	ld	(hl), #0x02
	ld	hl, #(_TileLabel + 0x0196)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0197)
	ld	(hl), #0x04
	ld	hl, #(_TileLabel + 0x0198)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0199)
	ld	(hl), #0x08
	ld	hl, #(_TileLabel + 0x019a)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x019b)
	ld	(hl), #0x10
	ld	hl, #(_TileLabel + 0x019c)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x019d)
	ld	(hl), #0x3e
	ld	hl, #(_TileLabel + 0x019e)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x019f)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x01a0)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x01a1)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x01a2)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x01a3)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x01a4)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x01a5)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x01a6)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x01a7)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x01a8)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x01a9)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x01aa)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x01ab)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x01ac)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x01ad)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x01ae)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x01af)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x01b0)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x01b1)
	ld	(hl), #0x7f
	ld	hl, #(_TileLabel + 0x01b2)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x01b3)
	ld	(hl), #0xc0
	ld	hl, #(_TileLabel + 0x01b4)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x01b5)
	ld	(hl), #0x9f
	ld	hl, #(_TileLabel + 0x01b6)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x01b7)
	ld	(hl), #0xbf
	ld	hl, #(_TileLabel + 0x01b8)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x01b9)
	ld	(hl), #0xb0
	ld	hl, #(_TileLabel + 0x01ba)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x01bb)
	ld	(hl), #0xb7
	ld	hl, #(_TileLabel + 0x01bc)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x01bd)
	ld	(hl), #0xb4
	ld	hl, #(_TileLabel + 0x01be)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x01bf)
	ld	(hl), #0xb4
	ld	hl, #(_TileLabel + 0x01c0)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x01c1)
	ld	(hl), #0xf8
	ld	hl, #(_TileLabel + 0x01c2)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x01c3)
	ld	(hl), #0x0c
	ld	hl, #(_TileLabel + 0x01c4)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x01c5)
	ld	(hl), #0xe4
	ld	hl, #(_TileLabel + 0x01c6)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x01c7)
	ld	(hl), #0xf4
	ld	hl, #(_TileLabel + 0x01c8)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x01c9)
	ld	(hl), #0x34
	ld	hl, #(_TileLabel + 0x01ca)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x01cb)
	ld	(hl), #0xb4
	ld	hl, #(_TileLabel + 0x01cc)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x01cd)
	ld	(hl), #0xb4
	ld	hl, #(_TileLabel + 0x01ce)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x01cf)
	ld	(hl), #0xb4
	ld	hl, #(_TileLabel + 0x01d0)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x01d1)
	ld	(hl), #0xb7
	ld	hl, #(_TileLabel + 0x01d2)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x01d3)
	ld	(hl), #0xb0
	ld	hl, #(_TileLabel + 0x01d4)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x01d5)
	ld	(hl), #0xbf
	ld	hl, #(_TileLabel + 0x01d6)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x01d7)
	ld	(hl), #0x9f
	ld	hl, #(_TileLabel + 0x01d8)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x01d9)
	ld	(hl), #0xc0
	ld	hl, #(_TileLabel + 0x01da)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x01db)
	ld	(hl), #0x7f
	ld	hl, #(_TileLabel + 0x01dc)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x01dd)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x01de)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x01df)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x01e0)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x01e1)
	ld	(hl), #0xb4
	ld	hl, #(_TileLabel + 0x01e2)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x01e3)
	ld	(hl), #0x34
	ld	hl, #(_TileLabel + 0x01e4)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x01e5)
	ld	(hl), #0xf4
	ld	hl, #(_TileLabel + 0x01e6)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x01e7)
	ld	(hl), #0xe4
	ld	hl, #(_TileLabel + 0x01e8)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x01e9)
	ld	(hl), #0x0c
	ld	hl, #(_TileLabel + 0x01ea)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x01eb)
	ld	(hl), #0xf8
	ld	hl, #(_TileLabel + 0x01ec)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x01ed)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x01ee)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x01ef)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x01f0)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x01f1)
	ld	(hl), #0xb4
	ld	hl, #(_TileLabel + 0x01f2)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x01f3)
	ld	(hl), #0xb4
	ld	hl, #(_TileLabel + 0x01f4)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x01f5)
	ld	(hl), #0xb4
	ld	hl, #(_TileLabel + 0x01f6)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x01f7)
	ld	(hl), #0xb4
	ld	hl, #(_TileLabel + 0x01f8)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x01f9)
	ld	(hl), #0xb4
	ld	hl, #(_TileLabel + 0x01fa)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x01fb)
	ld	(hl), #0xb4
	ld	hl, #(_TileLabel + 0x01fc)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x01fd)
	ld	(hl), #0xb4
	ld	hl, #(_TileLabel + 0x01fe)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x01ff)
	ld	(hl), #0xb4
	ld	hl, #(_TileLabel + 0x0200)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0201)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0202)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0203)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0204)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0205)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0206)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0207)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0208)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0209)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x020a)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x020b)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x020c)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x020d)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x020e)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x020f)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0210)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0211)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0212)
	ld	(hl), #0x7e
	ld	hl, #(_TileLabel + 0x0213)
	ld	(hl), #0x7e
	ld	hl, #(_TileLabel + 0x0214)
	ld	(hl), #0x60
	ld	hl, #(_TileLabel + 0x0215)
	ld	(hl), #0x60
	ld	hl, #(_TileLabel + 0x0216)
	ld	(hl), #0x40
	ld	hl, #(_TileLabel + 0x0217)
	ld	(hl), #0x40
	ld	hl, #(_TileLabel + 0x0218)
	ld	(hl), #0x40
	ld	hl, #(_TileLabel + 0x0219)
	ld	(hl), #0x40
	ld	hl, #(_TileLabel + 0x021a)
	ld	(hl), #0x40
	ld	hl, #(_TileLabel + 0x021b)
	ld	(hl), #0x40
	ld	hl, #(_TileLabel + 0x021c)
	ld	(hl), #0x40
	ld	hl, #(_TileLabel + 0x021d)
	ld	(hl), #0x40
	ld	hl, #(_TileLabel + 0x021e)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x021f)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0220)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0221)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0222)
	ld	(hl), #0x7e
	ld	hl, #(_TileLabel + 0x0223)
	ld	(hl), #0x7e
	ld	hl, #(_TileLabel + 0x0224)
	ld	(hl), #0x06
	ld	hl, #(_TileLabel + 0x0225)
	ld	(hl), #0x06
	ld	hl, #(_TileLabel + 0x0226)
	ld	(hl), #0x02
	ld	hl, #(_TileLabel + 0x0227)
	ld	(hl), #0x02
	ld	hl, #(_TileLabel + 0x0228)
	ld	(hl), #0x02
	ld	hl, #(_TileLabel + 0x0229)
	ld	(hl), #0x02
	ld	hl, #(_TileLabel + 0x022a)
	ld	(hl), #0x02
	ld	hl, #(_TileLabel + 0x022b)
	ld	(hl), #0x02
	ld	hl, #(_TileLabel + 0x022c)
	ld	(hl), #0x02
	ld	hl, #(_TileLabel + 0x022d)
	ld	(hl), #0x02
	ld	hl, #(_TileLabel + 0x022e)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x022f)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0230)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0231)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0232)
	ld	(hl), #0x40
	ld	hl, #(_TileLabel + 0x0233)
	ld	(hl), #0x40
	ld	hl, #(_TileLabel + 0x0234)
	ld	(hl), #0x40
	ld	hl, #(_TileLabel + 0x0235)
	ld	(hl), #0x40
	ld	hl, #(_TileLabel + 0x0236)
	ld	(hl), #0x40
	ld	hl, #(_TileLabel + 0x0237)
	ld	(hl), #0x40
	ld	hl, #(_TileLabel + 0x0238)
	ld	(hl), #0x40
	ld	hl, #(_TileLabel + 0x0239)
	ld	(hl), #0x40
	ld	hl, #(_TileLabel + 0x023a)
	ld	(hl), #0x60
	ld	hl, #(_TileLabel + 0x023b)
	ld	(hl), #0x60
	ld	hl, #(_TileLabel + 0x023c)
	ld	(hl), #0x7e
	ld	hl, #(_TileLabel + 0x023d)
	ld	(hl), #0x7e
	ld	hl, #(_TileLabel + 0x023e)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x023f)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0240)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0241)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0242)
	ld	(hl), #0x02
	ld	hl, #(_TileLabel + 0x0243)
	ld	(hl), #0x02
	ld	hl, #(_TileLabel + 0x0244)
	ld	(hl), #0x02
	ld	hl, #(_TileLabel + 0x0245)
	ld	(hl), #0x02
	ld	hl, #(_TileLabel + 0x0246)
	ld	(hl), #0x02
	ld	hl, #(_TileLabel + 0x0247)
	ld	(hl), #0x02
	ld	hl, #(_TileLabel + 0x0248)
	ld	(hl), #0x02
	ld	hl, #(_TileLabel + 0x0249)
	ld	(hl), #0x02
	ld	hl, #(_TileLabel + 0x024a)
	ld	(hl), #0x06
	ld	hl, #(_TileLabel + 0x024b)
	ld	(hl), #0x06
	ld	hl, #(_TileLabel + 0x024c)
	ld	(hl), #0x7e
	ld	hl, #(_TileLabel + 0x024d)
	ld	(hl), #0x7e
	ld	hl, #(_TileLabel + 0x024e)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x024f)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0250)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0251)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0252)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0253)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0254)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0255)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0256)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0257)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0258)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0259)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x025a)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x025b)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x025c)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x025d)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x025e)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x025f)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0260)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0261)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0262)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0263)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0264)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0265)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0266)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0267)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0268)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0269)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x026a)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x026b)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x026c)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x026d)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x026e)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x026f)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0270)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0271)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0272)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0273)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0274)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0275)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0276)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0277)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0278)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0279)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x027a)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x027b)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x027c)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x027d)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x027e)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x027f)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0280)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0281)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0282)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0283)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0284)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0285)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0286)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0287)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0288)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0289)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x028a)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x028b)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x028c)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x028d)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x028e)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x028f)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0290)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0291)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0292)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0293)
	ld	(hl), #0x3e
	ld	hl, #(_TileLabel + 0x0294)
	ld	(hl), #0xe3
	ld	hl, #(_TileLabel + 0x0295)
	ld	(hl), #0xe3
	ld	hl, #(_TileLabel + 0x0296)
	ld	(hl), #0x2a
	ld	hl, #(_TileLabel + 0x0297)
	ld	(hl), #0x3e
	ld	hl, #(_TileLabel + 0x0298)
	ld	(hl), #0x22
	ld	hl, #(_TileLabel + 0x0299)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x029a)
	ld	(hl), #0x2a
	ld	hl, #(_TileLabel + 0x029b)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x029c)
	ld	(hl), #0xe3
	ld	hl, #(_TileLabel + 0x029d)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x029e)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x029f)
	ld	(hl), #0x3e
	ld	hl, #(_TileLabel + 0x02a0)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x02a1)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x02a2)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x02a3)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x02a4)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x02a5)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x02a6)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x02a7)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x02a8)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x02a9)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x02aa)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x02ab)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x02ac)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x02ad)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x02ae)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x02af)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x02b0)
	ld	(hl), #0xe3
	ld	hl, #(_TileLabel + 0x02b1)
	ld	(hl), #0x3a
	ld	hl, #(_TileLabel + 0x02b2)
	ld	(hl), #0xe3
	ld	hl, #(_TileLabel + 0x02b3)
	ld	(hl), #0x3a
	ld	hl, #(_TileLabel + 0x02b4)
	ld	(hl), #0xe3
	ld	hl, #(_TileLabel + 0x02b5)
	ld	(hl), #0xfa
	ld	hl, #(_TileLabel + 0x02b6)
	ld	(hl), #0x03
	ld	hl, #(_TileLabel + 0x02b7)
	ld	(hl), #0x1a
	ld	hl, #(_TileLabel + 0x02b8)
	ld	(hl), #0x03
	ld	hl, #(_TileLabel + 0x02b9)
	ld	(hl), #0xfe
	ld	hl, #(_TileLabel + 0x02ba)
	ld	(hl), #0x03
	ld	hl, #(_TileLabel + 0x02bb)
	ld	(hl), #0xfe
	ld	hl, #(_TileLabel + 0x02bc)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x02bd)
	ld	(hl), #0xfe
	ld	hl, #(_TileLabel + 0x02be)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x02bf)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x02c0)
	ld	(hl), #0xe3
	ld	hl, #(_TileLabel + 0x02c1)
	ld	(hl), #0x3a
	ld	hl, #(_TileLabel + 0x02c2)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x02c3)
	ld	(hl), #0x7f
	ld	hl, #(_TileLabel + 0x02c4)
	ld	(hl), #0xc1
	ld	hl, #(_TileLabel + 0x02c5)
	ld	(hl), #0x7d
	ld	hl, #(_TileLabel + 0x02c6)
	ld	(hl), #0xd5
	ld	hl, #(_TileLabel + 0x02c7)
	ld	(hl), #0x7d
	ld	hl, #(_TileLabel + 0x02c8)
	ld	(hl), #0xc1
	ld	hl, #(_TileLabel + 0x02c9)
	ld	(hl), #0x7d
	ld	hl, #(_TileLabel + 0x02ca)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x02cb)
	ld	(hl), #0x7f
	ld	hl, #(_TileLabel + 0x02cc)
	ld	(hl), #0xe3
	ld	hl, #(_TileLabel + 0x02cd)
	ld	(hl), #0x3a
	ld	hl, #(_TileLabel + 0x02ce)
	ld	(hl), #0xe3
	ld	hl, #(_TileLabel + 0x02cf)
	ld	(hl), #0x3a
	ld	hl, #(_TileLabel + 0x02d0)
	ld	(hl), #0xe3
	ld	hl, #(_TileLabel + 0x02d1)
	ld	(hl), #0x3a
	ld	hl, #(_TileLabel + 0x02d2)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x02d3)
	ld	(hl), #0x7f
	ld	hl, #(_TileLabel + 0x02d4)
	ld	(hl), #0xe3
	ld	hl, #(_TileLabel + 0x02d5)
	ld	(hl), #0xfb
	ld	hl, #(_TileLabel + 0x02d6)
	ld	(hl), #0x41
	ld	hl, #(_TileLabel + 0x02d7)
	ld	(hl), #0xdf
	ld	hl, #(_TileLabel + 0x02d8)
	ld	(hl), #0x49
	ld	hl, #(_TileLabel + 0x02d9)
	ld	(hl), #0xdf
	ld	hl, #(_TileLabel + 0x02da)
	ld	(hl), #0x41
	ld	hl, #(_TileLabel + 0x02db)
	ld	(hl), #0xdf
	ld	hl, #(_TileLabel + 0x02dc)
	ld	(hl), #0xe3
	ld	hl, #(_TileLabel + 0x02dd)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x02de)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x02df)
	ld	(hl), #0x7f
	ld	hl, #(_TileLabel + 0x02e0)
	ld	(hl), #0xe3
	ld	hl, #(_TileLabel + 0x02e1)
	ld	(hl), #0x3a
	ld	hl, #(_TileLabel + 0x02e2)
	ld	(hl), #0xe3
	ld	hl, #(_TileLabel + 0x02e3)
	ld	(hl), #0x3a
	ld	hl, #(_TileLabel + 0x02e4)
	ld	(hl), #0xe3
	ld	hl, #(_TileLabel + 0x02e5)
	ld	(hl), #0x3a
	ld	hl, #(_TileLabel + 0x02e6)
	ld	(hl), #0xe3
	ld	hl, #(_TileLabel + 0x02e7)
	ld	(hl), #0x3a
	ld	hl, #(_TileLabel + 0x02e8)
	ld	(hl), #0xe3
	ld	hl, #(_TileLabel + 0x02e9)
	ld	(hl), #0x3a
	ld	hl, #(_TileLabel + 0x02ea)
	ld	(hl), #0xe3
	ld	hl, #(_TileLabel + 0x02eb)
	ld	(hl), #0x3a
	ld	hl, #(_TileLabel + 0x02ec)
	ld	(hl), #0xe3
	ld	hl, #(_TileLabel + 0x02ed)
	ld	(hl), #0x3a
	ld	hl, #(_TileLabel + 0x02ee)
	ld	(hl), #0xe3
	ld	hl, #(_TileLabel + 0x02ef)
	ld	(hl), #0x3a
	ld	hl, #(_TileLabel + 0x02f0)
	ld	(hl), #0xe3
	ld	hl, #(_TileLabel + 0x02f1)
	ld	(hl), #0x3a
	ld	hl, #(_TileLabel + 0x02f2)
	ld	(hl), #0xe3
	ld	hl, #(_TileLabel + 0x02f3)
	ld	(hl), #0x3a
	ld	hl, #(_TileLabel + 0x02f4)
	ld	(hl), #0xe3
	ld	hl, #(_TileLabel + 0x02f5)
	ld	(hl), #0x3b
	ld	hl, #(_TileLabel + 0x02f6)
	ld	(hl), #0xe0
	ld	hl, #(_TileLabel + 0x02f7)
	ld	(hl), #0x3f
	ld	hl, #(_TileLabel + 0x02f8)
	ld	(hl), #0xe0
	ld	hl, #(_TileLabel + 0x02f9)
	ld	(hl), #0x3f
	ld	hl, #(_TileLabel + 0x02fa)
	ld	(hl), #0xe0
	ld	hl, #(_TileLabel + 0x02fb)
	ld	(hl), #0x30
	ld	hl, #(_TileLabel + 0x02fc)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x02fd)
	ld	(hl), #0x3f
	ld	hl, #(_TileLabel + 0x02fe)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x02ff)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0300)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0301)
	ld	(hl), #0x7f
	ld	hl, #(_TileLabel + 0x0302)
	ld	(hl), #0xc1
	ld	hl, #(_TileLabel + 0x0303)
	ld	(hl), #0x7d
	ld	hl, #(_TileLabel + 0x0304)
	ld	(hl), #0xdd
	ld	hl, #(_TileLabel + 0x0305)
	ld	(hl), #0x7d
	ld	hl, #(_TileLabel + 0x0306)
	ld	(hl), #0xe3
	ld	hl, #(_TileLabel + 0x0307)
	ld	(hl), #0x7b
	ld	hl, #(_TileLabel + 0x0308)
	ld	(hl), #0xe3
	ld	hl, #(_TileLabel + 0x0309)
	ld	(hl), #0x7b
	ld	hl, #(_TileLabel + 0x030a)
	ld	(hl), #0xe3
	ld	hl, #(_TileLabel + 0x030b)
	ld	(hl), #0x3a
	ld	hl, #(_TileLabel + 0x030c)
	ld	(hl), #0xe3
	ld	hl, #(_TileLabel + 0x030d)
	ld	(hl), #0x3a
	ld	hl, #(_TileLabel + 0x030e)
	ld	(hl), #0xe3
	ld	hl, #(_TileLabel + 0x030f)
	ld	(hl), #0x3a
	ld	hl, #(_TileLabel + 0x0310)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0311)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0312)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0313)
	ld	(hl), #0x1f
	ld	hl, #(_TileLabel + 0x0314)
	ld	(hl), #0xf9
	ld	hl, #(_TileLabel + 0x0315)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0316)
	ld	(hl), #0x05
	ld	hl, #(_TileLabel + 0x0317)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0318)
	ld	(hl), #0x05
	ld	hl, #(_TileLabel + 0x0319)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x031a)
	ld	(hl), #0x05
	ld	hl, #(_TileLabel + 0x031b)
	ld	(hl), #0x07
	ld	hl, #(_TileLabel + 0x031c)
	ld	(hl), #0xf9
	ld	hl, #(_TileLabel + 0x031d)
	ld	(hl), #0xf9
	ld	hl, #(_TileLabel + 0x031e)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x031f)
	ld	(hl), #0x1f
	ld	hl, #(_TileLabel + 0x0320)
	ld	(hl), #0x70
	ld	hl, #(_TileLabel + 0x0321)
	ld	(hl), #0x80
	ld	hl, #(_TileLabel + 0x0322)
	ld	(hl), #0x38
	ld	hl, #(_TileLabel + 0x0323)
	ld	(hl), #0xc0
	ld	hl, #(_TileLabel + 0x0324)
	ld	(hl), #0xbe
	ld	hl, #(_TileLabel + 0x0325)
	ld	(hl), #0xc0
	ld	hl, #(_TileLabel + 0x0326)
	ld	(hl), #0x8e
	ld	hl, #(_TileLabel + 0x0327)
	ld	(hl), #0xf0
	ld	hl, #(_TileLabel + 0x0328)
	ld	(hl), #0xc7
	ld	hl, #(_TileLabel + 0x0329)
	ld	(hl), #0xf8
	ld	hl, #(_TileLabel + 0x032a)
	ld	(hl), #0xc8
	ld	hl, #(_TileLabel + 0x032b)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x032c)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x032d)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x032e)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x032f)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0330)
	ld	(hl), #0x0e
	ld	hl, #(_TileLabel + 0x0331)
	ld	(hl), #0x01
	ld	hl, #(_TileLabel + 0x0332)
	ld	(hl), #0x3c
	ld	hl, #(_TileLabel + 0x0333)
	ld	(hl), #0x03
	ld	hl, #(_TileLabel + 0x0334)
	ld	(hl), #0x39
	ld	hl, #(_TileLabel + 0x0335)
	ld	(hl), #0x07
	ld	hl, #(_TileLabel + 0x0336)
	ld	(hl), #0x7b
	ld	hl, #(_TileLabel + 0x0337)
	ld	(hl), #0x07
	ld	hl, #(_TileLabel + 0x0338)
	ld	(hl), #0xe1
	ld	hl, #(_TileLabel + 0x0339)
	ld	(hl), #0x1f
	ld	hl, #(_TileLabel + 0x033a)
	ld	(hl), #0x23
	ld	hl, #(_TileLabel + 0x033b)
	ld	(hl), #0xdf
	ld	hl, #(_TileLabel + 0x033c)
	ld	(hl), #0xaf
	ld	hl, #(_TileLabel + 0x033d)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x033e)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x033f)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0340)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0341)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0342)
	ld	(hl), #0x80
	ld	hl, #(_TileLabel + 0x0343)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0344)
	ld	(hl), #0xdb
	ld	hl, #(_TileLabel + 0x0345)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0346)
	ld	(hl), #0x7e
	ld	hl, #(_TileLabel + 0x0347)
	ld	(hl), #0x81
	ld	hl, #(_TileLabel + 0x0348)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0349)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x034a)
	ld	(hl), #0xb3
	ld	hl, #(_TileLabel + 0x034b)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x034c)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x034d)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x034e)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x034f)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0350)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0351)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0352)
	ld	(hl), #0x80
	ld	hl, #(_TileLabel + 0x0353)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0354)
	ld	(hl), #0xdb
	ld	hl, #(_TileLabel + 0x0355)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0356)
	ld	(hl), #0xfe
	ld	hl, #(_TileLabel + 0x0357)
	ld	(hl), #0x01
	ld	hl, #(_TileLabel + 0x0358)
	ld	(hl), #0x80
	ld	hl, #(_TileLabel + 0x0359)
	ld	(hl), #0x7f
	ld	hl, #(_TileLabel + 0x035a)
	ld	(hl), #0x33
	ld	hl, #(_TileLabel + 0x035b)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x035c)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x035d)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x035e)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x035f)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0360)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0361)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0362)
	ld	(hl), #0x18
	ld	hl, #(_TileLabel + 0x0363)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0364)
	ld	(hl), #0x24
	ld	hl, #(_TileLabel + 0x0365)
	ld	(hl), #0x18
	ld	hl, #(_TileLabel + 0x0366)
	ld	(hl), #0x5a
	ld	hl, #(_TileLabel + 0x0367)
	ld	(hl), #0x3c
	ld	hl, #(_TileLabel + 0x0368)
	ld	(hl), #0x59
	ld	hl, #(_TileLabel + 0x0369)
	ld	(hl), #0x3e
	ld	hl, #(_TileLabel + 0x036a)
	ld	(hl), #0x1c
	ld	hl, #(_TileLabel + 0x036b)
	ld	(hl), #0x7f
	ld	hl, #(_TileLabel + 0x036c)
	ld	(hl), #0x7e
	ld	hl, #(_TileLabel + 0x036d)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x036e)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x036f)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0370)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0371)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0372)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0373)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0374)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0375)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0376)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0377)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0378)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0379)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x037a)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x037b)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x037c)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x037d)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x037e)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x037f)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0380)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0381)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0382)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0383)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0384)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0385)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0386)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0387)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0388)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0389)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x038a)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x038b)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x038c)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x038d)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x038e)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x038f)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0390)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0391)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0392)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0393)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0394)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0395)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0396)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0397)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0398)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0399)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x039a)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x039b)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x039c)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x039d)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x039e)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x039f)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x03a0)
	ld	(hl), #0xe7
	ld	hl, #(_TileLabel + 0x03a1)
	ld	(hl), #0x1f
	ld	hl, #(_TileLabel + 0x03a2)
	ld	(hl), #0xe7
	ld	hl, #(_TileLabel + 0x03a3)
	ld	(hl), #0x1f
	ld	hl, #(_TileLabel + 0x03a4)
	ld	(hl), #0xe7
	ld	hl, #(_TileLabel + 0x03a5)
	ld	(hl), #0x1f
	ld	hl, #(_TileLabel + 0x03a6)
	ld	(hl), #0xe7
	ld	hl, #(_TileLabel + 0x03a7)
	ld	(hl), #0x1f
	ld	hl, #(_TileLabel + 0x03a8)
	ld	(hl), #0xe7
	ld	hl, #(_TileLabel + 0x03a9)
	ld	(hl), #0x1f
	ld	hl, #(_TileLabel + 0x03aa)
	ld	(hl), #0xe7
	ld	hl, #(_TileLabel + 0x03ab)
	ld	(hl), #0x1f
	ld	hl, #(_TileLabel + 0x03ac)
	ld	(hl), #0xe7
	ld	hl, #(_TileLabel + 0x03ad)
	ld	(hl), #0x1f
	ld	hl, #(_TileLabel + 0x03ae)
	ld	(hl), #0xe7
	ld	hl, #(_TileLabel + 0x03af)
	ld	(hl), #0x1f
	ld	hl, #(_TileLabel + 0x03b0)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x03b1)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x03b2)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x03b3)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x03b4)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x03b5)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x03b6)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x03b7)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x03b8)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x03b9)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x03ba)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x03bb)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x03bc)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x03bd)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x03be)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x03bf)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x03c0)
	ld	(hl), #0xe7
	ld	hl, #(_TileLabel + 0x03c1)
	ld	(hl), #0xf8
	ld	hl, #(_TileLabel + 0x03c2)
	ld	(hl), #0xe7
	ld	hl, #(_TileLabel + 0x03c3)
	ld	(hl), #0xf8
	ld	hl, #(_TileLabel + 0x03c4)
	ld	(hl), #0xe7
	ld	hl, #(_TileLabel + 0x03c5)
	ld	(hl), #0xf8
	ld	hl, #(_TileLabel + 0x03c6)
	ld	(hl), #0xe7
	ld	hl, #(_TileLabel + 0x03c7)
	ld	(hl), #0xf8
	ld	hl, #(_TileLabel + 0x03c8)
	ld	(hl), #0xe7
	ld	hl, #(_TileLabel + 0x03c9)
	ld	(hl), #0xf8
	ld	hl, #(_TileLabel + 0x03ca)
	ld	(hl), #0xe7
	ld	hl, #(_TileLabel + 0x03cb)
	ld	(hl), #0xf8
	ld	hl, #(_TileLabel + 0x03cc)
	ld	(hl), #0xe7
	ld	hl, #(_TileLabel + 0x03cd)
	ld	(hl), #0xf8
	ld	hl, #(_TileLabel + 0x03ce)
	ld	(hl), #0xe7
	ld	hl, #(_TileLabel + 0x03cf)
	ld	(hl), #0xf8
	ld	hl, #(_TileLabel + 0x03d0)
	ld	(hl), #0xe7
	ld	hl, #(_TileLabel + 0x03d1)
	ld	(hl), #0xf8
	ld	hl, #(_TileLabel + 0x03d2)
	ld	(hl), #0xe7
	ld	hl, #(_TileLabel + 0x03d3)
	ld	(hl), #0xf8
	ld	hl, #(_TileLabel + 0x03d4)
	ld	(hl), #0xe7
	ld	hl, #(_TileLabel + 0x03d5)
	ld	(hl), #0xf8
	ld	hl, #(_TileLabel + 0x03d6)
	ld	(hl), #0x07
	ld	hl, #(_TileLabel + 0x03d7)
	ld	(hl), #0xf8
	ld	hl, #(_TileLabel + 0x03d8)
	ld	(hl), #0x07
	ld	hl, #(_TileLabel + 0x03d9)
	ld	(hl), #0xf8
	ld	hl, #(_TileLabel + 0x03da)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x03db)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x03dc)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x03dd)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x03de)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x03df)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x03e0)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x03e1)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x03e2)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x03e3)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x03e4)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x03e5)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x03e6)
	ld	(hl), #0x07
	ld	hl, #(_TileLabel + 0x03e7)
	ld	(hl), #0xf8
	ld	hl, #(_TileLabel + 0x03e8)
	ld	(hl), #0x07
	ld	hl, #(_TileLabel + 0x03e9)
	ld	(hl), #0xf8
	ld	hl, #(_TileLabel + 0x03ea)
	ld	(hl), #0xe7
	ld	hl, #(_TileLabel + 0x03eb)
	ld	(hl), #0xf8
	ld	hl, #(_TileLabel + 0x03ec)
	ld	(hl), #0xe7
	ld	hl, #(_TileLabel + 0x03ed)
	ld	(hl), #0xf8
	ld	hl, #(_TileLabel + 0x03ee)
	ld	(hl), #0xe7
	ld	hl, #(_TileLabel + 0x03ef)
	ld	(hl), #0xf8
	ld	hl, #(_TileLabel + 0x03f0)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x03f1)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x03f2)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x03f3)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x03f4)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x03f5)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x03f6)
	ld	(hl), #0xe0
	ld	hl, #(_TileLabel + 0x03f7)
	ld	(hl), #0x1f
	ld	hl, #(_TileLabel + 0x03f8)
	ld	(hl), #0xe0
	ld	hl, #(_TileLabel + 0x03f9)
	ld	(hl), #0x1f
	ld	hl, #(_TileLabel + 0x03fa)
	ld	(hl), #0xe7
	ld	hl, #(_TileLabel + 0x03fb)
	ld	(hl), #0x1f
	ld	hl, #(_TileLabel + 0x03fc)
	ld	(hl), #0xe7
	ld	hl, #(_TileLabel + 0x03fd)
	ld	(hl), #0x1f
	ld	hl, #(_TileLabel + 0x03fe)
	ld	(hl), #0xe7
	ld	hl, #(_TileLabel + 0x03ff)
	ld	(hl), #0x1f
	ld	hl, #(_TileLabel + 0x0400)
	ld	(hl), #0xe7
	ld	hl, #(_TileLabel + 0x0401)
	ld	(hl), #0x1f
	ld	hl, #(_TileLabel + 0x0402)
	ld	(hl), #0xe7
	ld	hl, #(_TileLabel + 0x0403)
	ld	(hl), #0x1f
	ld	hl, #(_TileLabel + 0x0404)
	ld	(hl), #0xe7
	ld	hl, #(_TileLabel + 0x0405)
	ld	(hl), #0x1f
	ld	hl, #(_TileLabel + 0x0406)
	ld	(hl), #0xe0
	ld	hl, #(_TileLabel + 0x0407)
	ld	(hl), #0x1f
	ld	hl, #(_TileLabel + 0x0408)
	ld	(hl), #0xe0
	ld	hl, #(_TileLabel + 0x0409)
	ld	(hl), #0x1f
	ld	hl, #(_TileLabel + 0x040a)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x040b)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x040c)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x040d)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x040e)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x040f)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0410)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0411)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0412)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0413)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0414)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0415)
	ld	(hl), #0xfe
	ld	hl, #(_TileLabel + 0x0416)
	ld	(hl), #0x03
	ld	hl, #(_TileLabel + 0x0417)
	ld	(hl), #0x02
	ld	hl, #(_TileLabel + 0x0418)
	ld	(hl), #0x03
	ld	hl, #(_TileLabel + 0x0419)
	ld	(hl), #0xfa
	ld	hl, #(_TileLabel + 0x041a)
	ld	(hl), #0x03
	ld	hl, #(_TileLabel + 0x041b)
	ld	(hl), #0xfa
	ld	hl, #(_TileLabel + 0x041c)
	ld	(hl), #0xe3
	ld	hl, #(_TileLabel + 0x041d)
	ld	(hl), #0xfa
	ld	hl, #(_TileLabel + 0x041e)
	ld	(hl), #0xe3
	ld	hl, #(_TileLabel + 0x041f)
	ld	(hl), #0x3a
	ld	hl, #(_TileLabel + 0x0420)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0421)
	ld	(hl), #0x3f
	ld	hl, #(_TileLabel + 0x0422)
	ld	(hl), #0xf0
	ld	hl, #(_TileLabel + 0x0423)
	ld	(hl), #0x3f
	ld	hl, #(_TileLabel + 0x0424)
	ld	(hl), #0xf0
	ld	hl, #(_TileLabel + 0x0425)
	ld	(hl), #0x3f
	ld	hl, #(_TileLabel + 0x0426)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0427)
	ld	(hl), #0x3f
	ld	hl, #(_TileLabel + 0x0428)
	ld	(hl), #0xe4
	ld	hl, #(_TileLabel + 0x0429)
	ld	(hl), #0x3f
	ld	hl, #(_TileLabel + 0x042a)
	ld	(hl), #0xe4
	ld	hl, #(_TileLabel + 0x042b)
	ld	(hl), #0x3f
	ld	hl, #(_TileLabel + 0x042c)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x042d)
	ld	(hl), #0x3f
	ld	hl, #(_TileLabel + 0x042e)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x042f)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0430)
	ld	(hl), #0xe0
	ld	hl, #(_TileLabel + 0x0431)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0432)
	ld	(hl), #0x20
	ld	hl, #(_TileLabel + 0x0433)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0434)
	ld	(hl), #0x2c
	ld	hl, #(_TileLabel + 0x0435)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0436)
	ld	(hl), #0xec
	ld	hl, #(_TileLabel + 0x0437)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0438)
	ld	(hl), #0x20
	ld	hl, #(_TileLabel + 0x0439)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x043a)
	ld	(hl), #0x20
	ld	hl, #(_TileLabel + 0x043b)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x043c)
	ld	(hl), #0xe0
	ld	hl, #(_TileLabel + 0x043d)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x043e)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x043f)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0440)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0441)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0442)
	ld	(hl), #0x84
	ld	hl, #(_TileLabel + 0x0443)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0444)
	ld	(hl), #0x84
	ld	hl, #(_TileLabel + 0x0445)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0446)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0447)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0448)
	ld	(hl), #0x21
	ld	hl, #(_TileLabel + 0x0449)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x044a)
	ld	(hl), #0x21
	ld	hl, #(_TileLabel + 0x044b)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x044c)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x044d)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x044e)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x044f)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0450)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0451)
	ld	(hl), #0xfc
	ld	hl, #(_TileLabel + 0x0452)
	ld	(hl), #0x0f
	ld	hl, #(_TileLabel + 0x0453)
	ld	(hl), #0xfc
	ld	hl, #(_TileLabel + 0x0454)
	ld	(hl), #0x0f
	ld	hl, #(_TileLabel + 0x0455)
	ld	(hl), #0xfc
	ld	hl, #(_TileLabel + 0x0456)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0457)
	ld	(hl), #0xfc
	ld	hl, #(_TileLabel + 0x0458)
	ld	(hl), #0x27
	ld	hl, #(_TileLabel + 0x0459)
	ld	(hl), #0xfc
	ld	hl, #(_TileLabel + 0x045a)
	ld	(hl), #0x27
	ld	hl, #(_TileLabel + 0x045b)
	ld	(hl), #0xfc
	ld	hl, #(_TileLabel + 0x045c)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x045d)
	ld	(hl), #0xfc
	ld	hl, #(_TileLabel + 0x045e)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x045f)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0460)
	ld	(hl), #0x07
	ld	hl, #(_TileLabel + 0x0461)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0462)
	ld	(hl), #0x04
	ld	hl, #(_TileLabel + 0x0463)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0464)
	ld	(hl), #0x04
	ld	hl, #(_TileLabel + 0x0465)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0466)
	ld	(hl), #0x07
	ld	hl, #(_TileLabel + 0x0467)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0468)
	ld	(hl), #0x04
	ld	hl, #(_TileLabel + 0x0469)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x046a)
	ld	(hl), #0x04
	ld	hl, #(_TileLabel + 0x046b)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x046c)
	ld	(hl), #0x07
	ld	hl, #(_TileLabel + 0x046d)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x046e)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x046f)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0470)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0471)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0472)
	ld	(hl), #0x20
	ld	hl, #(_TileLabel + 0x0473)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0474)
	ld	(hl), #0x20
	ld	hl, #(_TileLabel + 0x0475)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0476)
	ld	(hl), #0xe0
	ld	hl, #(_TileLabel + 0x0477)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0478)
	ld	(hl), #0x20
	ld	hl, #(_TileLabel + 0x0479)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x047a)
	ld	(hl), #0x20
	ld	hl, #(_TileLabel + 0x047b)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x047c)
	ld	(hl), #0xe0
	ld	hl, #(_TileLabel + 0x047d)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x047e)
	ld	(hl), #0x20
	ld	hl, #(_TileLabel + 0x047f)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0480)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0481)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0482)
	ld	(hl), #0x04
	ld	hl, #(_TileLabel + 0x0483)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0484)
	ld	(hl), #0x04
	ld	hl, #(_TileLabel + 0x0485)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0486)
	ld	(hl), #0x07
	ld	hl, #(_TileLabel + 0x0487)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0488)
	ld	(hl), #0x04
	ld	hl, #(_TileLabel + 0x0489)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x048a)
	ld	(hl), #0x04
	ld	hl, #(_TileLabel + 0x048b)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x048c)
	ld	(hl), #0x07
	ld	hl, #(_TileLabel + 0x048d)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x048e)
	ld	(hl), #0x04
	ld	hl, #(_TileLabel + 0x048f)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0490)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0491)
	ld	(hl), #0x3f
	ld	hl, #(_TileLabel + 0x0492)
	ld	(hl), #0xf0
	ld	hl, #(_TileLabel + 0x0493)
	ld	(hl), #0x3f
	ld	hl, #(_TileLabel + 0x0494)
	ld	(hl), #0xf0
	ld	hl, #(_TileLabel + 0x0495)
	ld	(hl), #0x3f
	ld	hl, #(_TileLabel + 0x0496)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0497)
	ld	(hl), #0x3f
	ld	hl, #(_TileLabel + 0x0498)
	ld	(hl), #0xe4
	ld	hl, #(_TileLabel + 0x0499)
	ld	(hl), #0x3f
	ld	hl, #(_TileLabel + 0x049a)
	ld	(hl), #0xe4
	ld	hl, #(_TileLabel + 0x049b)
	ld	(hl), #0x3f
	ld	hl, #(_TileLabel + 0x049c)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x049d)
	ld	(hl), #0x3f
	ld	hl, #(_TileLabel + 0x049e)
	ld	(hl), #0xe0
	ld	hl, #(_TileLabel + 0x049f)
	ld	(hl), #0x3f
	ld	hl, #(_TileLabel + 0x04a0)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04a1)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04a2)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04a3)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04a4)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04a5)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04a6)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04a7)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04a8)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04a9)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04aa)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04ab)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04ac)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04ad)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04ae)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04af)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04b0)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04b1)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04b2)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04b3)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04b4)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04b5)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04b6)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04b7)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04b8)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04b9)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04ba)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04bb)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04bc)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04bd)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04be)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04bf)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04c0)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04c1)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04c2)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04c3)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04c4)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04c5)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04c6)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04c7)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04c8)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04c9)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04ca)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04cb)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04cc)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04cd)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04ce)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04cf)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04d0)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04d1)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04d2)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04d3)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04d4)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04d5)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04d6)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04d7)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04d8)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04d9)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04da)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04db)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04dc)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04dd)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04de)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04df)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04e0)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04e1)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04e2)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04e3)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04e4)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04e5)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04e6)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04e7)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04e8)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04e9)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04ea)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04eb)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04ec)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04ed)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04ee)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04ef)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04f0)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04f1)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04f2)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04f3)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04f4)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04f5)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04f6)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04f7)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04f8)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04f9)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04fa)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04fb)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04fc)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04fd)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04fe)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x04ff)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0500)
	ld	(hl), #0xdb
	ld	hl, #(_TileLabel + 0x0501)
	ld	(hl), #0x90
	ld	hl, #(_TileLabel + 0x0502)
	ld	(hl), #0xf6
	ld	hl, #(_TileLabel + 0x0503)
	ld	(hl), #0xe6
	ld	hl, #(_TileLabel + 0x0504)
	ld	(hl), #0x49
	ld	hl, #(_TileLabel + 0x0505)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0506)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0507)
	ld	(hl), #0xa8
	ld	hl, #(_TileLabel + 0x0508)
	ld	(hl), #0x92
	ld	hl, #(_TileLabel + 0x0509)
	ld	(hl), #0x82
	ld	hl, #(_TileLabel + 0x050a)
	ld	(hl), #0x49
	ld	hl, #(_TileLabel + 0x050b)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x050c)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x050d)
	ld	(hl), #0x94
	ld	hl, #(_TileLabel + 0x050e)
	ld	(hl), #0x92
	ld	hl, #(_TileLabel + 0x050f)
	ld	(hl), #0x82
	ld	hl, #(_TileLabel + 0x0510)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0511)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0512)
	ld	(hl), #0x81
	ld	hl, #(_TileLabel + 0x0513)
	ld	(hl), #0x7e
	ld	hl, #(_TileLabel + 0x0514)
	ld	(hl), #0xa5
	ld	hl, #(_TileLabel + 0x0515)
	ld	(hl), #0x7e
	ld	hl, #(_TileLabel + 0x0516)
	ld	(hl), #0x81
	ld	hl, #(_TileLabel + 0x0517)
	ld	(hl), #0x7e
	ld	hl, #(_TileLabel + 0x0518)
	ld	(hl), #0x81
	ld	hl, #(_TileLabel + 0x0519)
	ld	(hl), #0x7e
	ld	hl, #(_TileLabel + 0x051a)
	ld	(hl), #0xa5
	ld	hl, #(_TileLabel + 0x051b)
	ld	(hl), #0x7e
	ld	hl, #(_TileLabel + 0x051c)
	ld	(hl), #0x81
	ld	hl, #(_TileLabel + 0x051d)
	ld	(hl), #0x7e
	ld	hl, #(_TileLabel + 0x051e)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x051f)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0520)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0521)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0522)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0523)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0524)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0525)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0526)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0527)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0528)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0529)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x052a)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x052b)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x052c)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x052d)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x052e)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x052f)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0530)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0531)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0532)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0533)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0534)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0535)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0536)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0537)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x0538)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x0539)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x053a)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x053b)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x053c)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x053d)
	ld	(hl), #0xff
	ld	hl, #(_TileLabel + 0x053e)
	ld	(hl), #0x00
	ld	hl, #(_TileLabel + 0x053f)
	ld	(hl), #0xff
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
