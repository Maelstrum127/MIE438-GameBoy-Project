c:\gbdk\bin\lcc -Wa-l -Wl-m -Wl-j -c -o Backgrounds/Lvl1BackgroundData.o Backgrounds/Lvl1BackgroundData.c 
c:\gbdk\bin\lcc -Wa-l -Wl-m -Wl-j -c -o Backgrounds/Lvl1BackgroundMap.o Backgrounds/Lvl1BackgroundMap.c 
c:\gbdk\bin\lcc -Wa-l -Wl-m -Wl-j -c -o main.o main.c 
c:\gbdk\bin\lcc -Wa-l -Wl-m -Wf--debug -Wl-y -Wl-w -Wm-yc -o main.gb Backgrounds/Lvl1BackgroundData.o Backgrounds/Lvl1BackgroundMap.o main.o

@REM DEL *.lst
@REM DEL *.o
@REM DEL *.map
@REM DEL *.sym