/* Loading Music
 - There are different folders of music
 - Load Multiple PlayLists based on Genre
 - Advanced CS Loads Pong Music and Sound Effect for Game Play
 - OR ... loads regular music or simply uses the app for mediative music
 
 - With Advanced Searches and Read-Write Files, create and search playLists from one folder
 
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
int appWidth, shorterSide;
//
String saveTxtPath_currentSong; //For Saving Last Known Song Played
//
Minim minim; //initates entire class
int numberOfSongs = 1; //Best Practice
//int numberOfSoundEffects = ???
AudioPlayer[] playList; //length of array determined by reading the Music Folder
//AudioPlayer[] soundEffects = new AudioPlayer[ numberOfSoundEffects ];
int currentSong; //Reads .txt file to populate last known song
//
void setup() {
  // Display
  //fullScreen();
  size(700, 500);
  appWidth = width; //displayWidth
  int appHeight = height; //displayHeight
  shorterSide = int(comparisonReturnSmaller( float(appWidth), float(appHeight) ) );
  //
  //Saving Last Known Song Played
  // Initialize the save file path
  saveTxtPath_currentSong = sketchPath("currentSong.txt");
  println(saveTxtPath_currentSong);
  //
  populationSetup();
  //
  minim = new Minim(this);
  String absolutePath = sketchPath(); //To MAIN Program
  println("Absolute Path:", absolutePath);
  String upArrow = "/../../../../../";
  String musicDirectory = "Lesson Dependancies Folder/Music All/"; //Hardcoded, always relative to the MAIN program
  String musicPathway = absolutePath + upArrow + musicDirectory;
  println("Music Pathway:", musicPathway);
  println(); //Note: space left, one method formatting CONSOLE
  //
  File musicFolder = new File(musicPathway); //Uses Java Library to create class (variables & code)
  //A class is like an .mp3 that has music and text information
  File[] filePathway_Name = musicFolder.listFiles(); //Uses built in class to list all files
  println("Music Folder Pathway & File Names: ");
  printArray(filePathway_Name);
  //
  String[] files = new String[filePathway_Name.length]; //convert File to String for minim.loadFile()
  numberOfSongs = filePathway_Name.length;
  currentSong = numberOfSongs-numberOfSongs;
  //int i=0;
  if ( filePathway_Name != null ) {
    //
    //Comment FOR out and use FOR-Each, rememeber comment-in i above
    for ( int i=currentSong; i<numberOfSongs; i++) {
      files[i] = musicPathway + filePathway_Name[i].getName(); //print fileNames.getName() Object to String
    } // End old FOR
    /*
    for ( File file : filePathway_Name ) { //FOR-EACH Loop, creates locate class
     files[i] = lessonDependanciesFolder + file.getName(); //print filePathway_Name.getName() Object toString
     //Note: getName() is built in code
     i++; //iteration necessary here, not in regular FOR
     }
     */
  }
  printArray(files);
  //
  playList = new AudioPlayer[numberOfSongs]; //sets the array length
  while ( currentSong < numberOfSongs ) {
    playList[ currentSong ] = minim.loadFile( files[ currentSong ] );
    currentSong++; //functions similar to FOR
  }
  currentSong=0;
  playList[ currentSong ].play(); //Auto Start Music Player
  //
} //End setup
//
void draw() {
  drawButtons();
} //End draw
//
void mousePressed() {
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) {
    mousePressedQuitButton();
  } else {
    simpleNextButton();
  }
  
} //End mousePressed
//
void keyPressed() {
  simpleNextButton();
} //End keyPressed
//
// End Main Program
