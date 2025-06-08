/* Setting display key variables with other variables
 - Using Display to Alter CANVAS size() with local variable
 - Unique example increasing awareness
 - Reading DOCUMENTATION is required
 
 - See: https://processing.org/reference/settings_.html
 - Simple Example Included there
 */
//
//Library - Minim
//
//Global Variables
//int shorterSide;
//
void settings() {
  int shorterSide = (displayWidth >= displayHeight) ? displayHeight : displayWidth;
  shorterSide*= 0.9; //see entire OS WINDOW in display
  size(shorterSide, shorterSide); //Square Geometry
  println("Display Questions", displayWidth, displayHeight, shorterSide);
  println("CANVAS Size Key Variables for setup()", width, height);
} //End settings
//
void setup() {
} //End setup
//
void draw() {
} //End draw
//
void mousePressed() {
} //End mousePressed
//
void keyPressed() {
} //End keyPressed
//
// End Main Program
