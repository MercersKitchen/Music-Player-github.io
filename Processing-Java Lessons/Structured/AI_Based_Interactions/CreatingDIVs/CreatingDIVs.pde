/* Drawing DIVs, Instructions
 - Note: Quit Button is Active
 - Click and Hold a Rectangle
 - Move it to where you want it on the screen
 - Release the rectangle
 - Repeat to create all DIVs
 - Key Board to Activate MousePressed Delete
 //
 - Review data array date structure
 - Intermetidate Level: rewrite to access specific arrays
 - Introductory Level: rewrite to primitive float variables
 //
 - Note: this program illustrates how an AI might deliever an output
 - Written at an Intermeidate Level
 */
//Library - Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
Minim minim; //initates entire class
int numberOfSongs = 1; //Best Practice
//int numberOfSoundEffects = ???
AudioPlayer[] playList = new AudioPlayer[ numberOfSongs ];
//AudioPlayer[] soundEffects = new AudioPlayer[ numberOfSoundEffects ];
int currentSong = numberOfSongs - numberOfSongs; //ZERO
//
color colour, black=#000000, red=#FF0000, white=#FFFFFF;
float beginningRectButtonX, beginningRectButtonY, beginningRectButtonWidth, beginningRectButtonHeight;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
int rectNumber=0;
float newX, newY, newWidth, newHeight;
Boolean drawNewRect=false;
float[] divX = new float[rectNumber+1];
float[] divY = new float[rectNumber+1];
float[] divWidth = new float[rectNumber+1];
float[] divHeight = new float[rectNumber+1];
//
void setup() {
  //Display
  fullScreen();
  int appWidth = displayWidth;
  int appHeight = displayHeight;
  int shorterSide = ( appWidth >= appHeight ) ? appHeight : appWidth ;
  //
  //Music Loading - STRUCTURED Review
  minim = new Minim(this);
  String lessonDependanciesFolder = "Lesson Dependancies Folder/";
  String musicPong = "Music Pong/";
  String pongWorld = "Pong World";
  String fileExtension_mp3 = ".mp3";
  //
  String musicDirectory = "../../../../" + lessonDependanciesFolder + musicPong;
  String file = musicDirectory + pongWorld + fileExtension_mp3; //relative pathway or directory
  playList[ currentSong ] = minim.loadFile( file ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
  //Music Testing
  playList[currentSong].play();
  //
  //Population
  newY = newX = beginningRectButtonY = beginningRectButtonX = shorterSide*0;
  newWidth = newHeight = beginningRectButtonHeight = beginningRectButtonWidth = shorterSide*1/10;
  quitButtonY = shorterSide*0;
  quitButtonHeight = quitButtonWidth = shorterSide*1/20;
  quitButtonX = appWidth - (shorterSide*1/20);
  //
  //rect(X, Y Width, Height);
  rect(beginningRectButtonX, beginningRectButtonY, beginningRectButtonWidth, beginningRectButtonHeight);
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  //
} //End setup
//
void draw() {
  background(black);
  rect(beginningRectButtonX, beginningRectButtonY, beginningRectButtonWidth, beginningRectButtonHeight);
  //
  //drawingRect();
  println(drawNewRect);
  if ( drawNewRect==true ) {
    newX = mouseX;
    newY = mouseY;
    rect( newX, newY, newWidth, newHeight );
  }
  while ( rectNumber>0) { // Placing New Rectangles
    //
    for ( int i=0; i<rectNumber; i++ ) {
      rect( divX[i], divY[i], divWidth[i], divHeight[i] );
      //
    }
  }//End New Rectangles Placed
  //
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
} //End draw
//
void mousePressed() {
  //mouseX> && mouseX< && mouseY> && mouseY<
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) {
    exit();
  } //End Quit Button
  if ( mouseX>beginningRectButtonX && mouseX<beginningRectButtonX+beginningRectButtonWidth && mouseY>beginningRectButtonY && mouseY<beginningRectButtonY+beginningRectButtonHeight ) {
    //rectNumber++;
    drawNewRect=true;
    //rect(newX, newY, newWidth, newHeight);
  } //End Rect() Grab
} //End mousePressed
//
void mouseReleased() {
  if ( drawNewRect==true ) {
    divX[rectNumber] = newX;
    divY[rectNumber] = newY;
    divWidth[rectNumber] = newWidth;
    divHeight[rectNumber] = newHeight;
    newX = newY = 0;
    drawNewRect = false;
    rectNumber++;
    loop();
  } //End Placing Rectangle
  //
  //Change divWidth[rectNumber], divHeight[rectNumber]
  //
} //End Mouse Release
//d
void keyPressed() {
  /* Key Board Short Cuts ... learning what the Music Buttons could be
   Note: CAP Lock with ||
   if ( key==? || key==? ) ; //'' only
   -
   if ( key==CODED || keyCode==SpecialKey ) ; //Special Keys abriviated CAPS
   All Music Player Features are built out of these Minim AudioPlayer() functions
   .isPlaying()
   .isMuted()
   .loop(0), parameter is number of iterations after play
   .loop(), parameter is infinite interations
   .play(), parameter is built-in skip (milli-seconds or crystal-time)
   .pause()
   .rewind()
   .skip()
   .unmute()
   .mute()
   -
   Lesson Music Button Features based on single, double, and spamming taps
   - Play
   - Pause
   - Stop
   - Loop Once
   - Loop Infinite
   - Fast Forward
   - Fast Rewind
   - Mute
   - Next Song
   - Previous Song
   - Shuffle
   -
   - Advanced Buttons & Combinations
   - Play-Pause-Stop
   - Auto Play
   - Random Song
   */
} //End keyPressed
//
// End Main Program
