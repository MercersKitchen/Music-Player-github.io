//Dynamic Programming v Static
//
//Library - Minim
//
//Global Variables
int appWidth, appHeight;
float imageX, imageY, imageWidth, imageHeight;
//
void setup() {
  //Display
  fullScreen();
  //size(700, 500); //key varaibles: width & height
  appWidth = displayWidth;
  appHeight = displayHeight;
  //
  imageX = displayWidth*0.17;
  imageY = displayHeight*0.20;
  imageWidth = displayWidth*0.67;
  imageHeight = displayHeight*0.15;
  //
  //rect(X, Y Width, Height);
  rect(imageX, imageY, imageWidth, imageHeight);
  //
} //End setup
//
void draw() {
  //Empty draw()
} //End draw
//
void mousePressed() {} //End mousePressed
//
void keyPressed() {} //End keyPressed
//
// End Main Program
