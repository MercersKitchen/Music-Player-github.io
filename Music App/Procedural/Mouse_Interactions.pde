Boolean quitDoubleClick=false;
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
void mouseInteractions() {
  quitButton();
} // End Mouse Interactions
//
void quitButton() {
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) {
    if ( quitDoubleClick==false ) {
      println("Saving Strings .txt");
      //Prompt of small menu to Double Click Quit Button
      saveCurrentSong();
    }
    noLoop(); //First QUIT Click enables printScreen in OS
    if ( quitDoubleClick==true ) exit(); //Second QUIT Closes CANVAS
    quitDoubleClick=true;
  } //End Quit Button
}//End Quit Button
//
// End Subprogram Mouse Interactions
