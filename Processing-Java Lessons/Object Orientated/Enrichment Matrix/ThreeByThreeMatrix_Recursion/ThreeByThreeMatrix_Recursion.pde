void setup() {
  size(700, 500);
  //fullScreen(); //displayWidth //displayHeight
  int appWidth = width;
  int appHeight = height;
  //
  int numberofSquares = 9; //can be defined at anytime
  int parameters = 4; //strict to rect()
  float[] rectVar = new float[numberofSquares*parameters];
  int columns = 3; //can be defined at anytime
  int rows = 3; //can be defined at anytime
  //
  populateRectDIV( rectVar, rectVar.length-1, appWidth, appHeight, appWidth/columns, appHeight/rows, columns-1, rows-1);
  drawRectangles(rectVar, rectVar.length-1);
  //
  //printArray(rectVar);
  //
}//End setup

void draw() {
}//End Draw
//
//End MAIN
