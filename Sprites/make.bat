c:\gbdk\bin\lcc -Wa-l -Wl-m -Wl-j -c -o GameSprites.o GameSprites.c 
c:\gbdk\bin\lcc -Wa-l -Wl-m -Wl-j -c -o mainSprite.o mainSprite.c 
c:\gbdk\bin\lcc -Wa-l -Wl-m -Wl-j -c -o BackgroundData.o BackgroundData.c 
c:\gbdk\bin\lcc -Wa-l -Wl-m -Wl-j -c -o BackgroundMap.o BackgroundMap.c 
c:\gbdk\bin\lcc -Wa-l -Wl-m -Wf--debug -Wl-y -Wl-w -Wm-yc -o gbcSprite.gb GameSprites.o mainSprite.o BackgroundData.o BackgroundMap.o

DEL *.lst
DEL *.o
DEL *.map
DEL *.sym