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
  //Empty Draw;
} //End Draw
//
void mousePressed() {
} //End mousePressed
//
void keyPressed() {
  /* Key Board Short Cuts ... learning what the Music Buttons could be
   Note: CAP Lock with ||
   if ( key==? || key==? ) ; //'' only
   -
   if ( key==CODED || keyCode==SpecialKey ) ; //Special Keys abriviated CAPS
   -
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
  //if ( key=='P' || key=='p' ) playList[currentSong].play(); //Simple Play, no double tap possible
  //
  if ( key=='P' || key=='p' ) playList[currentSong].loop(0); //Simple Play, double tap possible
  /* Note: double tap is automatic rewind, no pause
   Symbol is two triangles
   This changes what the button might become after it is pressed
   */
  if ( key=='O' || key=='o' ) { // Pause
    //
    if ( playList[currentSong].isPlaying() ) {
      playList[currentSong].pause();
    } else {
      playList[currentSong].play();
    }
  }
  //if ( key=='S' || key=='s' ) song[currentSong].pause(); //Simple Stop, no double taps
  //
  if ( key=='S' | key=='s' ) {
    if ( playList[currentSong].isPlaying() ) {
      playList[currentSong].pause(); //single tap
    } else {
      playList[currentSong].rewind(); //double tap
    }
  }
  if ( key=='L' || key=='l' ) playList[currentSong].loop(1); // Loop ONCE: Plays, then plays again, then stops & rewinds
  if ( key=='K' || key=='k' ) playList[currentSong].loop(); // Loop Infinitely //Parameter: BLANK or -1
  if ( key=='F' || key=='f' ) playList[currentSong].skip( 10000 ); // Fast Forward, Rewind, & Play Again //Parameter: milliseconds
  if ( key=='R' || key=='r' ) playList[currentSong].skip( -10000 ); // Fast Reverse & Play //Parameter: negative numbers
  if ( key=='W' || key=='w' ) { // MUTE
    //
    //MUTE Behaviour: stops electricty to speakers, does not stop file
    //NOTE: MUTE has NO built-in PUASE button, NO built-in rewind button
    //ERROR: if song near end of file, user will not know song is at the end
    //Known ERROR: once song plays, MUTE acts like it doesn't work
    if ( playList[currentSong].isMuted() ) {
      //ERROR: song might not be playing
      //CATCH: ask .isPlaying() or !.isPlaying()
      playList[currentSong].unmute();
    } else {
      //Possible ERROR: Might rewind the song
      playList[currentSong].mute();
    }
  }
  if ( key==CODED || keyCode==ESC ) exit(); // QUIT //UP
  if ( key=='Q' || key=='q' ) exit(); // QUIT
  //
  if ( key=='N' || key=='n' ) { // NEXT //See .txt for starter hint
    if ( playList[currentSong].isPlaying() ) {
      playList[currentSong].pause();
      playList[currentSong].rewind();
      //
      if ( currentSong==numberOfSongs-1 ) {
        currentSong = 0;
      } else {
        currentSong++;
      }
      playList[currentSong].play();
    } else {
      //
      playList[currentSong].rewind();
      //
      if ( currentSong==numberOfSongs-1 ) {
        currentSong = 0;
      } else {
        currentSong++;
      }
      // NEXT will not automatically play the song
      //song[currentSong].play();
    }
  }
  //if ( key=='P' || key=='p' ) ; // Previous //Students to finish
  //
  if ( key=='Y' || key=='y' ) currentSong = int(random(numberOfSongs)); //random(0, numberOfSongs)
  //
  //if ( key=='S' || key=='s' ) ; // Shuffle - PLAY (Random)
  //Note: will randomize the currentSong number
  //Caution: random() is used very often
  //Question: how does truncating decimals affect returning random() floats
  /*
  if ( key=='' || key=='' ) ; // Play-Pause-STOP //Advanced, beyond single buttons
   - need to have basic GUI complete first
   */
  //
} //End keyPressed
//
//End MAIN
