CONTINUE at Startup Variables: QUIT Button Data

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
Minim minim; //initates entire class
int numberOfSongs;
//int numberOfSoundEffects = ???
AudioPlayer[] playList; //length of array determined by reading the Music Folder
//AudioPlayer[] soundEffects = new AudioPlayer[ numberOfSoundEffects ];
int currentSong = numberOfSongs - numberOfSongs; //ZERO
//
void setup() {
  //
  //fullScreen();
  size(700, 500);
  display();
  //
  minim = new Minim(this);
  String absolutePath = sketchPath();
  String lessonDependanciesFolder = "/../../Lesson Dependancies Folder/Music All/";
  //
  String musicDirectory = absolutePath + lessonDependanciesFolder;
  File directory = new File(musicDirectory); //Uses Java File Library to create class (variables & code)
  File[] fileNames = directory.listFiles(); //Uses built in class to list all files
  String[] files = new String[fileNames.length]; //Purpose: convert File to String for minim.loadFile()
  int i=0;
  if ( fileNames != null ) {
    for ( File file : fileNames ) { //FOR EACH Loop, creates local class
      files[i] = lessonDependanciesFolder + file.getName(); //print fileNames.getName() Object to String
      i++; //iteration necessary here, not in regular FOR
    }
  }
  numberOfSongs = fileNames.length;
  currentSong = numberOfSongs-numberOfSongs;
  playList = new AudioPlayer[numberOfSongs]; //sets the array length
  while ( currentSong < fileNames.length ) {
    playList[ currentSong ] = minim.loadFile( files[ currentSong ] );
    currentSong++; //functions similar to FOR
  }
  currentSong  = ( randomStart==true ) ? int( random(numberOfSongs) ): 0;
  playList[ currentSong ].play();
  //
} //End setup
//
void draw() {
  drawButtons();
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
