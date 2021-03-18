c:\gbdk\bin\lcc -Wa-l -Wl-m -Wl-j -c -o BackgroundData.o BackgroundData.c 
c:\gbdk\bin\lcc -Wa-l -Wl-m -Wl-j -c -o BackgroundMap.o BackgroundMap.c 
c:\gbdk\bin\lcc -Wa-l -Wl-m -Wl-j -DUSE_SFR_FOR_REG -c -o main.o main.c
c:\gbdk\bin\lcc -Wa-l -Wl-m -Wf--debug -Wl-y -Wl-w -Wm-yc -o gbcbackground_v2.gb BackgroundMap.o BackgroundData.o main.o

DEL *.lst
DEL *.o
DEL *.map
DEL *.sym