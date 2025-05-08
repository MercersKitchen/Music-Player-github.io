Boolean quitDoubleClick=false;
//
void drawButtons() {
  background(black);
  quitButtonDrawing();
  //
} //End Draw Buttons
//
void quitButtonDrawing() {
  //Misc
  int i=0;
  if ( mouseX>divs[i] && mouseX<divs[i]+divs[i+2] && mouseY>divs[i+1] && mouseY<divs[i+1]+divs[i+3] ) { //i: 0-3
    colour = red;
  } else {
    colour = white;
  }
  fill(colour);
  rect( divs[i], divs[i+1], divs[i+2], divs[i+3] ); //i: 0-3
  fill(white);
  //
} //End Quit Button
//
void mouseInteractions() {
  quitButtonMouse();
} // End Mouse Interactions
//
void quitButtonMouse() {
  int i=0;
  if ( mouseX>divs[i] && mouseX<divs[i]+divs[i+2] && mouseY>divs[i+1] && mouseY<divs[i+1]+divs[i+3] ) { //i: 0-3
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
