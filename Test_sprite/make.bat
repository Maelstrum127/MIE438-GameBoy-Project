c:\gbdk\bin\lcc -Wa-l -Wl-m -Wl-j -DUSE_SFR_FOR_REG -c -o mainSprite.o mainSprite.c 
c:\gbdk\bin\lcc -Wa-l -Wl-m -Wl-j -DUSE_SFR_FOR_REG -o mainSprite.gb mainSprite.o

DEL *.lst
DEL *.o
DEL *.map
DEL *.sym