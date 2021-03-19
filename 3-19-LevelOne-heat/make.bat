c:\gbdk\bin\lcc -Wa-l -Wl-m -Wl-j -c -o GameSprites.o GameSprites.c 
c:\gbdk\bin\lcc -Wa-l -Wl-m -Wl-j -c -o main.o main.c 
c:\gbdk\bin\lcc -Wa-l -Wl-m -Wf--debug -Wl-y -Wl-w -Wm-yc -o gbcSprite.gb GameSprites.o main.o

DEL *.lst
DEL *.o
DEL *.map
DEL *.sym