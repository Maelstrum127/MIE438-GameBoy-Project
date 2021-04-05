 C:\gbdk\bin\lcc -Wa-l -Wl-m -Wl-j -c -o Lvl1BackgroundData.o Backgrounds/Lvl1BackgroundData.c 
C:\gbdk\bin\lcc -Wa-l -Wl-m -Wl-j -c -o Lvl1BackgroundMap.o Backgrounds/Lvl1BackgroundMap.c 
C:\gbdk\bin\lcc -Wa-l -Wl-m -Wl-j -c -o GameSprites.o Sprites/GameSprites.c 
C:\gbdk\bin\lcc -Wa-l -Wl-m -Wl-j -DUSE_SFR_FOR_REG -c -o main.o main.c
C:\gbdk\bin\lcc -Wa-l -Wl-m -Wl-j -DUSE_SFR_FOR_REG -Wf-bo2 -c -o bank2.o bank2.c
C:\gbdk\bin\lcc -Wa-l -Wl-m -Wl-j -Wf-bo3 -c -o bank3.o bank3.c
C:\gbdk\bin\lcc -Wa-l -Wl-m -Wf--debug -Wl-y -Wl-w -Wm-yc -Wl-j -Wl-yt0x01 -Wl-yo4 -o test_game.gb Lvl1BackgroundMap.o Lvl1BackgroundData.o main.o GameSprites.o bank2.o bank3.o

DEL *.lst
DEL *.o
DEL *.map
DEL *.sym