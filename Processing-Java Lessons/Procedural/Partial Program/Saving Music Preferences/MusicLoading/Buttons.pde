Boolean quitDoubleClick=false;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
color colour, black=#000000, red=#FF0000, white=#FFFFFF;
//
void drawButtons() {
  background(black);
  quitButton();
  //
} //End Draw Buttons
//
void quitButton() {
  //Misc
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) {
    colour = red;
  } else {
    colour = white;
  }
  fill(colour);
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  fill(white);
  //
} //End Quit Button
//
void mousePressedQuitButton() {
  if ( quitDoubleClick==false ) {
    println("Saving Strings .txt");
    saveCurrentSong();
  }
  noLoop(); //First QUIT Click enables printScreen in OS
  if ( quitDoubleClick==true ) exit(); //Second QUIT Closes CANVAS
  quitDoubleClick=true;
} //End Mouse Pressed Quit Button
//
void simpleNextButton() {
  //Simple NEXT Button
  playList[ currentSong ].pause();
  playList[ currentSong ].rewind();
  if ( currentSong >= numberOfSongs-1 ) {
    currentSong=0;
  } else {
    currentSong++;
  }
  playList[ currentSong ].play();
} //End Simle NEXT Button
//End Buttons Subprogram
