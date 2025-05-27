/* Abstracting Formulae and Terms
 - including: 1, 0
 - subtracting: -1, 1 (1 is for adding)
 */
//
//Global Variables
float[] musicButton;
//
void stopShape() {
  squareInside(0, musicButtonDivX[0], musicButtonDivY, musicButtonDivWidth, musicButtonDivHeight); //0-3
} //End Stop Shape
//
void muteShape() {
  squareInside(4, musicButtonDivX[1], musicButtonDivY, musicButtonDivWidth, musicButtonDivHeight); //4-7
  crossDiagonal(8, musicButton[4], musicButton[4]+musicButton[6], musicButton[5], musicButton[5]+musicButton[7]); //8-15
} //End Mute Shape
//
//2D Shapes
void squareInside(int i, float x, float y, float Width, float Height) {
  musicButton[i] = startingX(x, 1, oneQuarter(Width), 0, 0, 0);
  musicButton[i+1] = startingY(y, 1, Height);
  musicButton[i+2] = musicButton[i+3] = oneHalf(widthOfButton);
}
void crossDiagonal(int i, float pointX1, float pointX2, float pointY1, float pointY2) {
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
  return X + include1*a + include2*subtracting*oneQuarter(b);
} //End Starting X-Value
//
float startingY(float Y, int include, float a) {
  return Y + include*oneQuarter(a);
} //End Starting y-Value
