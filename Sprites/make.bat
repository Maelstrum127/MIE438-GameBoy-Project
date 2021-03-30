c:\gbdk\bin\lcc -Wa-l -Wl-m -Wl-j -c -o GameSprites.o GameSprites.c 
c:\gbdk\bin\lcc -Wa-l -Wl-m -Wl-j -c -o mainSprite.o mainSprite.c 
c:\gbdk\bin\lcc -Wa-l -Wl-m -Wl-j -c -o NewBackgroundData.o NewBackgroundData.c 
c:\gbdk\bin\lcc -Wa-l -Wl-m -Wl-j -c -o Lvl1BackgroundMap.o Lvl1BackgroundMap.c 
c:\gbdk\bin\lcc -Wa-l -Wl-m -Wl-j -c -o MemBackgroundMap.o MemBackgroundMap.c 
c:\gbdk\bin\lcc -Wa-l -Wl-m -Wf--debug -Wl-y -Wl-w -Wm-yc -o gbcSprite.gb GameSprites.o mainSprite.o NewBackgroundData.o Lvl1BackgroundMap.o MemBackgroundMap.o

DEL *.lst
DEL *.o
DEL *.map
DEL *.sym