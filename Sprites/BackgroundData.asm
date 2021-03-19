;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.7 #12016 (MINGW64)
;--------------------------------------------------------
	.module BackgroundData
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _BackgroundData
	.globl _BackgroundDataCGB
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_BackgroundDataCGB::
	.ds 13
_BackgroundData::
	.ds 208
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
;BackgroundData.c:26: unsigned char BackgroundDataCGB[] =
	ld	hl, #_BackgroundDataCGB
	ld	(hl), #0x00
	ld	hl, #(_BackgroundDataCGB + 0x0001)
	ld	(hl), #0x01
	ld	hl, #(_BackgroundDataCGB + 0x0002)
	ld	(hl), #0x00
	ld	hl, #(_BackgroundDataCGB + 0x0003)
	ld	(hl), #0x05
	ld	hl, #(_BackgroundDataCGB + 0x0004)
	ld	(hl), #0x05
	ld	hl, #(_BackgroundDataCGB + 0x0005)
	ld	(hl), #0x02
	ld	hl, #(_BackgroundDataCGB + 0x0006)
	ld	(hl), #0x01
	ld	hl, #(_BackgroundDataCGB + 0x0007)
	ld	(hl), #0x02
	ld	hl, #(_BackgroundDataCGB + 0x0008)
	ld	(hl), #0x02
	ld	hl, #(_BackgroundDataCGB + 0x0009)
	ld	(hl), #0x02
	ld	hl, #(_BackgroundDataCGB + 0x000a)
	ld	(hl), #0x02
	ld	hl, #(_BackgroundDataCGB + 0x000b)
	ld	(hl), #0x02
	ld	hl, #(_BackgroundDataCGB + 0x000c)
	ld	(hl), #0x02
;BackgroundData.c:32: unsigned char BackgroundData[] =
	ld	hl, #_BackgroundData
	ld	(hl), #0x00
	ld	hl, #(_BackgroundData + 0x0001)
	ld	(hl), #0x00
	ld	hl, #(_BackgroundData + 0x0002)
	ld	(hl), #0x00
	ld	hl, #(_BackgroundData + 0x0003)
	ld	(hl), #0x00
	ld	hl, #(_BackgroundData + 0x0004)
	ld	(hl), #0x00
	ld	hl, #(_BackgroundData + 0x0005)
	ld	(hl), #0x00
	ld	hl, #(_BackgroundData + 0x0006)
	ld	(hl), #0x00
	ld	hl, #(_BackgroundData + 0x0007)
	ld	(hl), #0x00
	ld	hl, #(_BackgroundData + 0x0008)
	ld	(hl), #0x00
	ld	hl, #(_BackgroundData + 0x0009)
	ld	(hl), #0x00
	ld	hl, #(_BackgroundData + 0x000a)
	ld	(hl), #0x00
	ld	hl, #(_BackgroundData + 0x000b)
	ld	(hl), #0x00
	ld	hl, #(_BackgroundData + 0x000c)
	ld	(hl), #0x00
	ld	hl, #(_BackgroundData + 0x000d)
	ld	(hl), #0x00
	ld	hl, #(_BackgroundData + 0x000e)
	ld	(hl), #0x00
	ld	hl, #(_BackgroundData + 0x000f)
	ld	(hl), #0x00
	ld	hl, #(_BackgroundData + 0x0010)
	ld	(hl), #0xff
	ld	hl, #(_BackgroundData + 0x0011)
	ld	(hl), #0x00
	ld	hl, #(_BackgroundData + 0x0012)
	ld	(hl), #0x02
	ld	hl, #(_BackgroundData + 0x0013)
	ld	(hl), #0x00
	ld	hl, #(_BackgroundData + 0x0014)
	ld	(hl), #0x02
	ld	hl, #(_BackgroundData + 0x0015)
	ld	(hl), #0x00
	ld	hl, #(_BackgroundData + 0x0016)
	ld	(hl), #0x02
	ld	hl, #(_BackgroundData + 0x0017)
	ld	(hl), #0x00
	ld	hl, #(_BackgroundData + 0x0018)
	ld	(hl), #0xff
	ld	hl, #(_BackgroundData + 0x0019)
	ld	(hl), #0x00
	ld	hl, #(_BackgroundData + 0x001a)
	ld	(hl), #0x40
	ld	hl, #(_BackgroundData + 0x001b)
	ld	(hl), #0x00
	ld	hl, #(_BackgroundData + 0x001c)
	ld	(hl), #0x40
	ld	hl, #(_BackgroundData + 0x001d)
	ld	(hl), #0x00
	ld	hl, #(_BackgroundData + 0x001e)
	ld	(hl), #0x40
	ld	hl, #(_BackgroundData + 0x001f)
	ld	(hl), #0x00
	ld	hl, #(_BackgroundData + 0x0020)
	ld	(hl), #0xff
	ld	hl, #(_BackgroundData + 0x0021)
	ld	(hl), #0x00
	ld	hl, #(_BackgroundData + 0x0022)
	ld	(hl), #0x02
	ld	hl, #(_BackgroundData + 0x0023)
	ld	(hl), #0x00
	ld	hl, #(_BackgroundData + 0x0024)
	ld	(hl), #0x02
	ld	hl, #(_BackgroundData + 0x0025)
	ld	(hl), #0x00
	ld	hl, #(_BackgroundData + 0x0026)
	ld	(hl), #0x02
	ld	hl, #(_BackgroundData + 0x0027)
	ld	(hl), #0x00
	ld	hl, #(_BackgroundData + 0x0028)
	ld	(hl), #0xff
	ld	hl, #(_BackgroundData + 0x0029)
	ld	(hl), #0x00
	ld	hl, #(_BackgroundData + 0x002a)
	ld	(hl), #0x40
	ld	hl, #(_BackgroundData + 0x002b)
	ld	(hl), #0x00
	ld	hl, #(_BackgroundData + 0x002c)
	ld	(hl), #0x40
	ld	hl, #(_BackgroundData + 0x002d)
	ld	(hl), #0x00
	ld	hl, #(_BackgroundData + 0x002e)
	ld	(hl), #0x40
	ld	hl, #(_BackgroundData + 0x002f)
	ld	(hl), #0x00
	ld	hl, #(_BackgroundData + 0x0030)
	ld	(hl), #0xff
	ld	hl, #(_BackgroundData + 0x0031)
	ld	(hl), #0x00
	ld	hl, #(_BackgroundData + 0x0032)
	ld	(hl), #0xc3
	ld	hl, #(_BackgroundData + 0x0033)
	ld	(hl), #0x20
	ld	hl, #(_BackgroundData + 0x0034)
	ld	(hl), #0x81
	ld	hl, #(_BackgroundData + 0x0035)
	ld	(hl), #0x68
	ld	hl, #(_BackgroundData + 0x0036)
	ld	(hl), #0xc1
	ld	hl, #(_BackgroundData + 0x0037)
	ld	(hl), #0x50
	ld	hl, #(_BackgroundData + 0x0038)
	ld	(hl), #0xc1
	ld	hl, #(_BackgroundData + 0x0039)
	ld	(hl), #0x58
	ld	hl, #(_BackgroundData + 0x003a)
	ld	(hl), #0xe1
	ld	hl, #(_BackgroundData + 0x003b)
	ld	(hl), #0x68
	ld	hl, #(_BackgroundData + 0x003c)
	ld	(hl), #0xff
	ld	hl, #(_BackgroundData + 0x003d)
	ld	(hl), #0x3c
	ld	hl, #(_BackgroundData + 0x003e)
	ld	(hl), #0xff
	ld	hl, #(_BackgroundData + 0x003f)
	ld	(hl), #0x00
	ld	hl, #(_BackgroundData + 0x0040)
	ld	(hl), #0xff
	ld	hl, #(_BackgroundData + 0x0041)
	ld	(hl), #0x00
	ld	hl, #(_BackgroundData + 0x0042)
	ld	(hl), #0xd1
	ld	hl, #(_BackgroundData + 0x0043)
	ld	(hl), #0x16
	ld	hl, #(_BackgroundData + 0x0044)
	ld	(hl), #0xa3
	ld	hl, #(_BackgroundData + 0x0045)
	ld	(hl), #0x24
	ld	hl, #(_BackgroundData + 0x0046)
	ld	(hl), #0xa1
	ld	hl, #(_BackgroundData + 0x0047)
	ld	(hl), #0x68
	ld	hl, #(_BackgroundData + 0x0048)
	ld	(hl), #0x89
	ld	hl, #(_BackgroundData + 0x0049)
	ld	(hl), #0x52
	ld	hl, #(_BackgroundData + 0x004a)
	ld	(hl), #0x93
	ld	hl, #(_BackgroundData + 0x004b)
	ld	(hl), #0x36
	ld	hl, #(_BackgroundData + 0x004c)
	ld	(hl), #0xb3
	ld	hl, #(_BackgroundData + 0x004d)
	ld	(hl), #0x64
	ld	hl, #(_BackgroundData + 0x004e)
	ld	(hl), #0xff
	ld	hl, #(_BackgroundData + 0x004f)
	ld	(hl), #0x00
	ld	hl, #(_BackgroundData + 0x0050)
	ld	(hl), #0x2a
	ld	hl, #(_BackgroundData + 0x0051)
	ld	(hl), #0xff
	ld	hl, #(_BackgroundData + 0x0052)
	ld	(hl), #0xfe
	ld	hl, #(_BackgroundData + 0x0053)
	ld	(hl), #0x81
	ld	hl, #(_BackgroundData + 0x0054)
	ld	(hl), #0x43
	ld	hl, #(_BackgroundData + 0x0055)
	ld	(hl), #0x81
	ld	hl, #(_BackgroundData + 0x0056)
	ld	(hl), #0xc2
	ld	hl, #(_BackgroundData + 0x0057)
	ld	(hl), #0x81
	ld	hl, #(_BackgroundData + 0x0058)
	ld	(hl), #0x43
	ld	hl, #(_BackgroundData + 0x0059)
	ld	(hl), #0x81
	ld	hl, #(_BackgroundData + 0x005a)
	ld	(hl), #0xc2
	ld	hl, #(_BackgroundData + 0x005b)
	ld	(hl), #0x81
	ld	hl, #(_BackgroundData + 0x005c)
	ld	(hl), #0x7f
	ld	hl, #(_BackgroundData + 0x005d)
	ld	(hl), #0x81
	ld	hl, #(_BackgroundData + 0x005e)
	ld	(hl), #0x54
	ld	hl, #(_BackgroundData + 0x005f)
	ld	(hl), #0xff
	ld	hl, #(_BackgroundData + 0x0060)
	ld	(hl), #0xff
	ld	hl, #(_BackgroundData + 0x0061)
	ld	(hl), #0x00
	ld	hl, #(_BackgroundData + 0x0062)
	ld	(hl), #0x00
	ld	hl, #(_BackgroundData + 0x0063)
	ld	(hl), #0x00
	ld	hl, #(_BackgroundData + 0x0064)
	ld	(hl), #0x66
	ld	hl, #(_BackgroundData + 0x0065)
	ld	(hl), #0x66
	ld	hl, #(_BackgroundData + 0x0066)
	ld	(hl), #0x95
	ld	hl, #(_BackgroundData + 0x0067)
	ld	(hl), #0x95
	ld	hl, #(_BackgroundData + 0x0068)
	ld	(hl), #0x86
	ld	hl, #(_BackgroundData + 0x0069)
	ld	(hl), #0x86
	ld	hl, #(_BackgroundData + 0x006a)
	ld	(hl), #0xb5
	ld	hl, #(_BackgroundData + 0x006b)
	ld	(hl), #0xb5
	ld	hl, #(_BackgroundData + 0x006c)
	ld	(hl), #0x66
	ld	hl, #(_BackgroundData + 0x006d)
	ld	(hl), #0x66
	ld	hl, #(_BackgroundData + 0x006e)
	ld	(hl), #0xff
	ld	hl, #(_BackgroundData + 0x006f)
	ld	(hl), #0x00
	ld	hl, #(_BackgroundData + 0x0070)
	ld	(hl), #0xfc
	ld	hl, #(_BackgroundData + 0x0071)
	ld	(hl), #0xf9
	ld	hl, #(_BackgroundData + 0x0072)
	ld	(hl), #0xfe
	ld	hl, #(_BackgroundData + 0x0073)
	ld	(hl), #0xfb
	ld	hl, #(_BackgroundData + 0x0074)
	ld	(hl), #0xfc
	ld	hl, #(_BackgroundData + 0x0075)
	ld	(hl), #0xf9
	ld	hl, #(_BackgroundData + 0x0076)
	ld	(hl), #0xfe
	ld	hl, #(_BackgroundData + 0x0077)
	ld	(hl), #0xfb
	ld	hl, #(_BackgroundData + 0x0078)
	ld	(hl), #0xfc
	ld	hl, #(_BackgroundData + 0x0079)
	ld	(hl), #0xf9
	ld	hl, #(_BackgroundData + 0x007a)
	ld	(hl), #0xfe
	ld	hl, #(_BackgroundData + 0x007b)
	ld	(hl), #0xfb
	ld	hl, #(_BackgroundData + 0x007c)
	ld	(hl), #0xfc
	ld	hl, #(_BackgroundData + 0x007d)
	ld	(hl), #0xf9
	ld	hl, #(_BackgroundData + 0x007e)
	ld	(hl), #0xfe
	ld	hl, #(_BackgroundData + 0x007f)
	ld	(hl), #0xfb
	ld	hl, #(_BackgroundData + 0x0080)
	ld	(hl), #0x3f
	ld	hl, #(_BackgroundData + 0x0081)
	ld	(hl), #0x9f
	ld	hl, #(_BackgroundData + 0x0082)
	ld	(hl), #0x7f
	ld	hl, #(_BackgroundData + 0x0083)
	ld	(hl), #0xdf
	ld	hl, #(_BackgroundData + 0x0084)
	ld	(hl), #0x3f
	ld	hl, #(_BackgroundData + 0x0085)
	ld	(hl), #0x9f
	ld	hl, #(_BackgroundData + 0x0086)
	ld	(hl), #0x7f
	ld	hl, #(_BackgroundData + 0x0087)
	ld	(hl), #0xdf
	ld	hl, #(_BackgroundData + 0x0088)
	ld	(hl), #0x3f
	ld	hl, #(_BackgroundData + 0x0089)
	ld	(hl), #0x9f
	ld	hl, #(_BackgroundData + 0x008a)
	ld	(hl), #0x7f
	ld	hl, #(_BackgroundData + 0x008b)
	ld	(hl), #0xdf
	ld	hl, #(_BackgroundData + 0x008c)
	ld	(hl), #0x3f
	ld	hl, #(_BackgroundData + 0x008d)
	ld	(hl), #0x9f
	ld	hl, #(_BackgroundData + 0x008e)
	ld	(hl), #0x7f
	ld	hl, #(_BackgroundData + 0x008f)
	ld	(hl), #0xdf
	ld	hl, #(_BackgroundData + 0x0090)
	ld	(hl), #0x00
	ld	hl, #(_BackgroundData + 0x0091)
	ld	(hl), #0x00
	ld	hl, #(_BackgroundData + 0x0092)
	ld	(hl), #0x00
	ld	hl, #(_BackgroundData + 0x0093)
	ld	(hl), #0x00
	ld	hl, #(_BackgroundData + 0x0094)
	ld	(hl), #0x00
	ld	hl, #(_BackgroundData + 0x0095)
	ld	(hl), #0x00
	ld	hl, #(_BackgroundData + 0x0096)
	ld	(hl), #0x00
	ld	hl, #(_BackgroundData + 0x0097)
	ld	(hl), #0x00
	ld	hl, #(_BackgroundData + 0x0098)
	ld	(hl), #0x00
	ld	hl, #(_BackgroundData + 0x0099)
	ld	(hl), #0x00
	ld	hl, #(_BackgroundData + 0x009a)
	ld	(hl), #0x00
	ld	hl, #(_BackgroundData + 0x009b)
	ld	(hl), #0x00
	ld	hl, #(_BackgroundData + 0x009c)
	ld	(hl), #0x00
	ld	hl, #(_BackgroundData + 0x009d)
	ld	(hl), #0x00
	ld	hl, #(_BackgroundData + 0x009e)
	ld	(hl), #0x00
	ld	hl, #(_BackgroundData + 0x009f)
	ld	(hl), #0x00
	ld	hl, #(_BackgroundData + 0x00a0)
	ld	(hl), #0x00
	ld	hl, #(_BackgroundData + 0x00a1)
	ld	(hl), #0xff
	ld	hl, #(_BackgroundData + 0x00a2)
	ld	(hl), #0xaa
	ld	hl, #(_BackgroundData + 0x00a3)
	ld	(hl), #0xaa
	ld	hl, #(_BackgroundData + 0x00a4)
	ld	(hl), #0xff
	ld	hl, #(_BackgroundData + 0x00a5)
	ld	(hl), #0x00
	ld	hl, #(_BackgroundData + 0x00a6)
	ld	(hl), #0xff
	ld	hl, #(_BackgroundData + 0x00a7)
	ld	(hl), #0xff
	ld	hl, #(_BackgroundData + 0x00a8)
	ld	(hl), #0xff
	ld	hl, #(_BackgroundData + 0x00a9)
	ld	(hl), #0xff
	ld	hl, #(_BackgroundData + 0x00aa)
	ld	(hl), #0xff
	ld	hl, #(_BackgroundData + 0x00ab)
	ld	(hl), #0xff
	ld	hl, #(_BackgroundData + 0x00ac)
	ld	(hl), #0xff
	ld	hl, #(_BackgroundData + 0x00ad)
	ld	(hl), #0xff
	ld	hl, #(_BackgroundData + 0x00ae)
	ld	(hl), #0xff
	ld	hl, #(_BackgroundData + 0x00af)
	ld	(hl), #0xff
	ld	hl, #(_BackgroundData + 0x00b0)
	ld	(hl), #0xff
	ld	hl, #(_BackgroundData + 0x00b1)
	ld	(hl), #0xff
	ld	hl, #(_BackgroundData + 0x00b2)
	ld	(hl), #0xff
	ld	hl, #(_BackgroundData + 0x00b3)
	ld	(hl), #0xff
	ld	hl, #(_BackgroundData + 0x00b4)
	ld	(hl), #0xff
	ld	hl, #(_BackgroundData + 0x00b5)
	ld	(hl), #0xff
	ld	hl, #(_BackgroundData + 0x00b6)
	ld	(hl), #0xff
	ld	hl, #(_BackgroundData + 0x00b7)
	ld	(hl), #0xff
	ld	hl, #(_BackgroundData + 0x00b8)
	ld	(hl), #0xff
	ld	hl, #(_BackgroundData + 0x00b9)
	ld	(hl), #0xff
	ld	hl, #(_BackgroundData + 0x00ba)
	ld	(hl), #0xff
	ld	hl, #(_BackgroundData + 0x00bb)
	ld	(hl), #0x00
	ld	hl, #(_BackgroundData + 0x00bc)
	ld	(hl), #0xaa
	ld	hl, #(_BackgroundData + 0x00bd)
	ld	(hl), #0xaa
	ld	hl, #(_BackgroundData + 0x00be)
	ld	(hl), #0x00
	ld	hl, #(_BackgroundData + 0x00bf)
	ld	(hl), #0xff
	ld	hl, #(_BackgroundData + 0x00c0)
	ld	(hl), #0xff
	ld	hl, #(_BackgroundData + 0x00c1)
	ld	(hl), #0xff
	ld	hl, #(_BackgroundData + 0x00c2)
	ld	(hl), #0xff
	ld	hl, #(_BackgroundData + 0x00c3)
	ld	(hl), #0xff
	ld	hl, #(_BackgroundData + 0x00c4)
	ld	(hl), #0xff
	ld	hl, #(_BackgroundData + 0x00c5)
	ld	(hl), #0xff
	ld	hl, #(_BackgroundData + 0x00c6)
	ld	(hl), #0xff
	ld	hl, #(_BackgroundData + 0x00c7)
	ld	(hl), #0xff
	ld	hl, #(_BackgroundData + 0x00c8)
	ld	(hl), #0xff
	ld	hl, #(_BackgroundData + 0x00c9)
	ld	(hl), #0xff
	ld	hl, #(_BackgroundData + 0x00ca)
	ld	(hl), #0xff
	ld	hl, #(_BackgroundData + 0x00cb)
	ld	(hl), #0xff
	ld	hl, #(_BackgroundData + 0x00cc)
	ld	(hl), #0xff
	ld	hl, #(_BackgroundData + 0x00cd)
	ld	(hl), #0xff
	ld	hl, #(_BackgroundData + 0x00ce)
	ld	(hl), #0xff
	ld	hl, #(_BackgroundData + 0x00cf)
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
