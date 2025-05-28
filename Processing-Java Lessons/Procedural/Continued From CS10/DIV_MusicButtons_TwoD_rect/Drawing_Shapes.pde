/* Abstracting Formulae and Terms
 - including: 1, 0
 - subtracting: -1, 1 (1 is for adding)
 */
//
//Global Variables
float[] musicButton;
//
void stopShape() {
  square(0, musicButtonDivX[0], musicButtonDivY, musicButtonDivWidth, musicButtonDivHeight); //0-3
} //End Stop Shape
//
void muteShape() {
  square(4, musicButtonDivX[1], musicButtonDivY, musicButtonDivWidth, musicButtonDivHeight); //4-7
  diagonalSquare(8, musicButton[4], musicButton[4]+musicButton[6], musicButton[5], musicButton[5]+musicButton[7]); //8-15
} //End Mute Shape
//
void previousShape() {
  triangle(16, 1, 1, musicButtonDivX[2], musicButtonDivY, 1, 1, musicButtonDivWidth, musicButtonDivHeight, -1, 0, 1); //16-21
  rectangle(22, 0, 1, musicButton[16+2], musicButton[17], musicButtonDivWidth, musicButtonDivHeight); //22-25
} //End Previous Shape
//
void fastRewind() {
  triangle(26, 1, 1, musicButtonDivX[3], musicButtonDivY, 1, 1, musicButtonDivWidth, musicButtonDivHeight, -1, 0, 1); //26-31
  triangle(32, 0, 1, musicButtonDivX[3], musicButtonDivY, 1, 1, musicButtonDivWidth, musicButtonDivHeight, -1, 0, 1); //32-37
} //End Fast Rewind
//
void pauseShape() {
  rectangle(38, 1, 0, startingX(musicButtonDivX[4], 1, musicButtonDivWidth, 0, 0, 0), startingY(musicButtonDivY, 1, musicButtonDivHeight), musicButtonDivWidth, musicButtonDivHeight); //38-41
  rectangle(42, 0, 1, startingX(musicButtonDivX[4], 1, musicButtonDivWidth, 1, 1, musicButtonDivWidth), musicButton[38+1], musicButtonDivWidth, musicButtonDivHeight); //42-45
} //End Pause Shape
//
void playShape() {
  triangle( 46, 1, 1, musicButtonDivX[5], musicButtonDivY, 0, -1, musicButtonDivWidth, musicButtonDivHeight, 1, 1, 0); //46-51
}
void loopOnceShape() {
  square(52, musicButtonDivX[6], musicButtonDivY, musicButtonDivWidth, musicButtonDivHeight);
  //Triangle Is Next
} //End Loop Once Shape
//



//
//2D Shapes
void triangle(int i, int includeX1, int includeY1, float xPoint, float yPoint, int includeX2, float subtracting, float Width, float Height, int pointingRight, int regularTriangle, int halfTriangle) {
  musicButton[i] = startingX( xPoint, includeX1, Width, includeX2, subtracting, Width);
  musicButton[i+1] = startingY(yPoint, includeY1, Height);
  musicButton[i+2] = musicButton[i] + pointingRight*regularTriangle*oneHalf(Width) + pointingRight*halfTriangle*oneHalf(oneHalf(Width));
  musicButton[i+3] = musicButton[i+1] + oneQuarter(Height);
  musicButton[i+4] = musicButton[i];
  musicButton[i+5] = musicButton[i+3] + oneQuarter(Height);
}
void rectangle(int i, int startingFromX, int startingFromWidth, float xPoint, float yPoint, float Width, float Height) {
  musicButton[i] = xPoint - startingFromWidth*oneEighth(Width);
  musicButton[i+1] = yPoint;
  musicButton[i+2] = oneEighth(Width);
  musicButton[i+3]= oneHalf(Height);
}
void square(int i, float x, float y, float Width, float Height) {
  musicButton[i] = startingX(x, 1, Width, 0, 0, 0);
  musicButton[i+1] = startingY(y, 1, Height);
  musicButton[i+2] = musicButton[i+3] = oneHalf(widthOfButton);
}
void diagonalSquare(int i, float pointX1, float pointX2, float pointY1, float pointY2) {
  musicButton[i] = pointX1;
  musicButton[i+1] = pointY1;
  musicButton[i+2] = pointX2;
  musicButton[i+3]= pointY2;
  musicButton[i+4] = pointX1;
  musicButton[i+5] = pointY2;
  musicButton[i+6] = pointX2;
  musicButton[i+7] = pointY1;
}
//
float startingX(float X, int include1, float a, int include2, float subtracting, float b) {
  return X + include1*oneQuarter(a) + include2*subtracting*oneHalf(b);
} //End Starting X-Value
//
float startingY(float Y, int include, float a) {
  return Y + include*oneQuarter(a);
} //End Starting y-Value
