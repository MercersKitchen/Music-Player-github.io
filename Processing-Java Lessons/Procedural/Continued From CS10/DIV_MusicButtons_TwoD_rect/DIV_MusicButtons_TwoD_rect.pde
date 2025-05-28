/* Purpose: Abstract Procedures
 - must abstract how to draw symbols
 - use repeated rules
 */

//Library
//
//Global Variables
int appWidth, appHeight;
//
void setup() {
  //Display
  fullScreen();
  //size(700, 500); //key varaibles: width & height
  appWidth = displayWidth;
  appHeight = displayHeight;
  //
  population();
  //divs(); Not Separated out yet
  //
} //End Setup
//
void draw() {} //End Draw
//
void mousePressed() {} //End Mouse Pressed
//
void keyPressed() {} //End Key Pressed
//
//End MAIN Program
