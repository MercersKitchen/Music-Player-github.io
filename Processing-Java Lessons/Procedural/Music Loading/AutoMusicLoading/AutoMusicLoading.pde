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
  File directory = new File(musicDirectory); //Uses Java Library to create class (variables & code)
  //A class is like an .mp3 that has music and text information
  File[] fileNames = directory.listFiles(); //Uses built in class to list all files
  String[] files = new String[fileNames.length]; //convert File to String for minim.loadFile()
  int i=0;
  if ( fileNames != null ) {
    for ( File file : fileNames ) { //FOR EACH Loop, creates locate class
      files[i] = lessonDependanciesFolder + file.getName(); //print fileNames.getName() Object to String
      //Note: getName() is built in code
      i++; //iteration necessary here, not in regular FOR
    }
  }
  currentSong=0;
  playList = new AudioPlayer[fileNames.length]; //sets the array length
  while ( currentSong < fileNames.length ) {
    playList[ currentSong ] = minim.loadFile( files[ currentSong ] );
    currentSong++; //functions similar to FOR
  }
  currentSong=0;
  playList[ currentSong ].play();
  //
} //End setup
//
void draw() {
  //Empty Draw
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
