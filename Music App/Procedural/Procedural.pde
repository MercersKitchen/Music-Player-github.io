/*Processing - Order of Pricedures Built
 - Library installation
 - Loading Music Through File Class
 - Key Board Short Cuts
 - Read-Write Program State when Closing and Opening, Must use QUIT Button
 - Reference the procedures when BUTTON or Key Board is used
 - TBA
 
 - Data Structures Required
 - Random Start Variable
 - Button: QUIT (draw & mousePressed, linked to keyboard),
 - Colours: Light, Dark Modes
 - TBA
 */
//
//Libraires
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
import java.io.File;
//
//Global Variables
//
void setup() {
  //
  //fullScreen();
  size(700, 500);
  display();
  filePathwaySetup();
  //
  musicFileReading(); //See Reading File Contents
  //
  population();
  //
} //End setup
//
void draw() {
  drawButtons();
  populationTemp();
} //End draw
//
void mousePressed() {
  mouseInteractions();
} //End mousePressed
//
void keyPressed() {
  keyBoardShortCuts();
} //End keyPressed
//
// End Main Program
