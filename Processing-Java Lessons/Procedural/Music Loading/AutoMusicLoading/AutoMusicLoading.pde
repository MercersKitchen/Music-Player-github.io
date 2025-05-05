/* Drawing DIVs, Instructions
 - Note: Quit Button is Active
 - Print Screen to save values and image, then double click the Quit Button
 - Click and Hold to draw a DIV
 - Move it to where you want it on the screen
 - Release the DIV
 - Click the DIV to resize, hold and move the mouse, release to change the size
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
import java.io.File;
//
//Global Variables
Minim minim; //initates entire class
int numberOfSongs = 1; //Best Practice
//int numberOfSoundEffects = ???
AudioPlayer[] playList; //length of array determined by reading the Music Folder
//AudioPlayer[] soundEffects = new AudioPlayer[ numberOfSoundEffects ];
int currentSong = numberOfSongs - numberOfSongs; //ZERO
//
void setup() {
  //
  //fullScreen();
  size(700, 500);
  int appWidth = width; //displayWidth
  int appHeight = height; //displayHeight
  int shorterSide = int(comparisonReturnBigger( float(appWidth), float(appHeight) ) );
  //
  minim = new Minim(this);
  String absolutePath = sketchPath();
  String lessonDependanciesFolder = "/../../../../Lesson Dependancies Folder/Music All/";
  //
  String musicDirectory = absolutePath + lessonDependanciesFolder;
  File directory = new File(musicDirectory); //Uses Java Library
  File[] fileNames = directory.listFiles(); //Uses built in class to list all files
  String[] files = new String[fileNames.length]; //convert File to String for minim.loadFile()
  int i=0;
  if ( fileNames != null ) {
    for ( File file : fileNames ) {
      files[i] = lessonDependanciesFolder + file.getName(); //print fileNames.getName() Object to String
      i++;
    }
  }
  printArray(files);
  currentSong=0;
  playList = new AudioPlayer[fileNames.length];
  while ( currentSong < fileNames.length ) {
    playList[ currentSong ] = minim.loadFile( files[ currentSong ] );
    currentSong++;
  }
  currentSong=0;
  playList[ currentSong ].play();
  //
} //End setup
//
void draw() {
  // Empty Draw
} //End draw
//
void mousePressed() {
} //End mousePressed
//
void mouseReleased() {
} //End Mouse Release
//
void keyPressed() {
} //End keyPressed
//
// End Main Program
