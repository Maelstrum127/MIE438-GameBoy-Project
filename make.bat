@REM c:\gbdk\bin\lcc -Wa-l -Wl-m -Wl-j -DUSE_SFR_FOR_REG -c -o main.o main.c
@REM c:\gbdk\bin\lcc -Wa-l -Wl-m -Wl-j -DUSE_SFR_FOR_REG -o main.gb main.o

c:\gbdk\bin\lcc -Wa-l -Wl-m -Wl-j -c -o Test_Background/Lvl1BackgroundMenuData.o Test_Background/Lvl1BackgroundMenuData.c 
c:\gbdk\bin\lcc -Wa-l -Wl-m -Wl-j -c -o Test_Background/Lvl1BackgroundMap.o Test_Background/Lvl1BackgroundMap.c 
c:\gbdk\bin\lcc -Wa-l -Wl-m -Wl-j -c -o Test_Background/MenuMap.o Test_Background/MenuMap.c 
c:\gbdk\bin\lcc -Wa-l -Wl-m -Wl-j -c -o main.o main.c 
c:\gbdk\bin\lcc -Wa-l -Wl-m -Wf--debug -Wl-y -Wl-w -Wm-yc -o Test_Background/gbcbackground_v2.gb Test_Background/Lvl1BackgroundMenuData.o Test_Background/Lvl1BackgroundMap.o Test_Background/MenuMap.o main.o

@REM DEL *.lst
@REM DEL *.o
@REM DEL *.map
@REM DEL *.sym