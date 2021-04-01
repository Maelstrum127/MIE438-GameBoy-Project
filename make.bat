c:\gbdk\bin\lcc -Wa-l -Wl-m -Wl-j -c -o Lvl1BackgroundData.o Lvl1BackgroundData.c 
c:\gbdk\bin\lcc -Wa-l -Wl-m -Wl-j -c -o Lvl1BackgroundMap.o Lvl1BackgroundMap.c 
c:\gbdk\bin\lcc -Wa-l -Wl-m -Wl-j -c -o GameSprites.o GameSprites.c 
c:\gbdk\bin\lcc -Wa-l -Wl-m -Wl-j -DUSE_SFR_FOR_REG -c -o main.o main.c
c:\gbdk\bin\lcc -Wa-l -Wl-m -Wf--debug -Wl-y -Wl-w -Wm-yc -o test_game.gb Lvl1BackgroundMap.o Lvl1BackgroundData.o main.o GameSprites.o

DEL *.lst
DEL *.o
DEL *.map
DEL *.sym