Boolean randomStart=false;
//
color colour, black=#000000, red=#FF0000, white=#FFFFFF;
//
int numberOfButtons = 1;
float[] divs = new float[ numberOfButtons *4 ];
//
void population() {
  quitDIV();
} //End Start Up Population
//
// Population: refers to a Cunstructor in Advanced CS
void quitDIV() {
  //These are prototyped as local and then loaded into Button DIV Data for drawing & use
  int quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
  divs[0] = quitButtonX = appWidth - (appShorterSide*1/20);
  divs[1] = quitButtonY = appShorterSide*0;
  divs[2] = quitButtonWidth = appShorterSide*1/20;
  divs[3] = quitButtonHeight = quitButtonWidth;
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  //
} //End Population
//




//End Subprogram Startup Variables
