/* Library Notes
 - File / Sketch / Import Library / Manage Libraries
 - We use Minim for Sound and Sound Effects
 - Able to Google-search libraries to make your project easier
 - Documentation: https://code.compartmental.net/minim/
 - Specific Class: https://code.compartmental.net/minim/audioplayer_class_audioplayer.html
 - Specific Class: https://code.compartmental.net/minim/audiometadata_class_audiometadata.html
 
 ** You are now able to research any Processing-Java Library ... or Any Java Library from the internet **
 - Processing-Java Libraries must be installed into the IDE
 - Java Libraries simply require the 'import' declaration
 
 - Library will not execute since not using full compiler
 - Note: Hard Drive Registery or address
  
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
int numberOfSongs = 9; //Best Practice
int numberOfSoundEffects = 2; //Best Practice
AudioPlayer[] playList = new AudioPlayer[ numberOfSongs ];
AudioPlayer[] soundEffects = new AudioPlayer[ numberOfSoundEffects ];
int currentSong = numberOfSongs - numberOfSongs; //ZERO
//
void setup() {
  //Display
  //size(700, 500); //width //height
  fullScreen();
  int appWidth = displayWidth;
  int appHeight = displayHeight;
  //
  //Music Loading - STRUCTURED Review
  minim = new Minim(this);
  String upArrow = "../../../../../../";
  String lessonDependanciesFolder = "Lesson Dependancies Folder/";
  String soundEffectsFolder = "Sound Effects/";
  String musicPong = "Music Pong/";
  String musicAll = "Music All/";
  //Note: Download music and sound effects, then design your player with images, text, and 2D shapes
  //See Google Search: Atari pong logo free image download
  String carDoor = "Car_Door_Closing";
  String simplestSting = "The_Simplest_Sting";
  //
  String pongWorld = "Pong World";
  String beatYourCompetition = "Beat_Your_Competition";
  String cycles = "Cycles";
  String eureka = "Eureka";
  String ghostWalk = "Ghost_Walk";
  String groove = "groove";
  String newsroom = "Newsroom";
  String startYourEngines = "Start_Your_Engines";
  String theSimplest = "The_Simplest";
  //
  String fileExtension_mp3 = ".mp3";
  //
  //One way to iterate through all Sound Effects
  String soundEffectsDirectory = upArrow + lessonDependanciesFolder + soundEffectsFolder;
  String file = soundEffectsDirectory + carDoor + fileExtension_mp3; //relative pathway or directory
  println( file );
  soundEffects[ numberOfSoundEffects-numberOfSoundEffects ] = minim.loadFile( file ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
  file = soundEffectsDirectory + simplestSting + fileExtension_mp3; //relative pathway or directory
  println( file );
  soundEffects[ numberOfSoundEffects-1 ] = minim.loadFile( file ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
  //
  String musicDirectory = upArrow + lessonDependanciesFolder + musicPong;
  file = musicDirectory + pongWorld + fileExtension_mp3; //relative pathway or directory
  println( file );
  playList[ currentSong ] = minim.loadFile( file ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
  //
  //Another way to iterate through all Music Files to Load
  musicDirectory = upArrow + lessonDependanciesFolder + musicAll;
  for (int i=0; i<numberOfSongs; i++) {
    if (i==1) file = musicDirectory + groove + fileExtension_mp3;
    if (i==2) file = musicDirectory + startYourEngines + fileExtension_mp3;
    if (i==3) file = musicDirectory + beatYourCompetition + fileExtension_mp3;
    if (i==4) file = musicDirectory + cycles + fileExtension_mp3;
    if (i==5) file = musicDirectory + eureka + fileExtension_mp3;
    if (i==6) file = musicDirectory + ghostWalk + fileExtension_mp3;
    if (i==7) file = musicDirectory + newsroom + fileExtension_mp3;
    if (i==8) file = musicDirectory + theSimplest + fileExtension_mp3;
    playList[i] = minim.loadFile( file );
  }
  //
  currentSong = 0; //Purpose: song testing
  //
  //Music Testing
  printArray(soundEffects); //Note registry Address on Hard Drive
  soundEffects[0].play(); //0 //1
  printArray(playList); //Note registry Address on Hard Drive
  //playList[currentSong].play();
  //
} //End Setup
//
void draw() {
  //Empty Draw Loop: for Compiler
} //End draw
//
//End MAIN
