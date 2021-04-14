#include<gb/gb.h>
#include "Splashscreens/intro1.c"
#include "Splashscreens/intro2.c"
#include "Splashscreens/intro3.c"
#include "Dialogues/letter2Data.c"
#include "Dialogues/Diag1.c"
#include "Dialogues/Diag2.c"
#include "Dialogues/Diag3.c"
#include "Dialogues/Diag4.c"

//other stuff
void setup_windows(unsigned char *win_data, unsigned char *win_map, int data_size, unsigned int MapHeight, unsigned int MapWidth, unsigned int MapX, unsigned int MapY){
    DISPLAY_OFF;
	set_win_data(0,data_size,win_data);
	set_win_tiles(0,0,MapWidth,MapHeight,win_map);
    move_win(MapX, MapY);
	wait_vbl_done();
    SHOW_WIN;
	DISPLAY_ON;
	waitpad(J_START);
    waitpadup(); 
}

void setup_splashscreen(){
	setup_windows(Letter2Data, Intro1Map, 40, Intro1MapHeight, Intro1MapWidth, 7, 7);
    setup_windows(Letter2Data, Intro2Map, 40, Intro2MapHeight, Intro2MapWidth, 7, 7);
    setup_windows(Letter2Data, Intro3Map, 40, Intro3MapHeight, Intro3MapWidth, 7, 7);
    HIDE_WIN;
}

void setup_dialogues(){
    setup_windows(Letter2Data, Diag1, 41, Diag1Height, Diag1Width, 7, 104);
    setup_windows(Letter2Data, Diag2, 41, Diag2Height, Diag2Width, 7, 104);
    setup_windows(Letter2Data, Diag3, 41, Diag3Height, Diag3Width, 7, 104);
    setup_windows(Letter2Data, Diag4, 41, Diag4Height, Diag4Width, 7, 104);
    HIDE_WIN;
}
