# MIE438-GameBoy-Project
Main project for University of Toronto's course MIE438: Microcontrollers and Embedded Processors.

## Game Overview
This repository contains an original RPG Pong-Style game for the Original Game Boy, coded using ```gdbk``` package in C.  
    
![](https://github.com/Maelstrum127/MIE438-GameBoy-Project/blob/master/Images/win.gif)

## Setup 
Download mGBA [here](https://mgba.io/) and follow the installation instructions   
1. Clone the repository    
```
git clone https://github.com/Maelstrum127/MIE438-GameBoy-Project.git 
```
2. Make sure that you are on the master branch on your local machine. If you are on any other branch, switch to Master by typing the command 
```
git checkout master 
```
3. Open *bits_adventures.gb* in the repository- it should default open using mGBA emulator. If this doesn't happen, open mGBA, click "Load ROM" and open the *bits_adventures.gb* file.  

## Game Play Instructions 
* To skip through screens and dialogue, click “Enter” (Note: this replaces the classic A and B buttons for simplicity despite on screen text used for authenticity) 
* To move around maps and participate in combat, use the arrow keys:
* Main map: all arrow keys 
* Combat: left and right 
The game is finished once the “Mal has been defeated!” text is displayed
