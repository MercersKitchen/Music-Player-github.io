/* Text: Font size is based on Two Dimensions
 - When font HEIGHT is too big it is not shown
 - When font WIDTH is too long it is off the screen
 
 - Use a multi-line comment to turn off the 2D Size Adjustment, WHILE recursive iteration
 - Algorithm uses code to introduce other functions in drawing text
 
 - What are the new lines of code added
 
 */
//
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
PFont titleFont;
float fontSize;
String title = "Wahoo!";
/* Full String longer than Rectangle,  "Wahoo! I changed 2D Size."
 - When a String just fits the hieght aspect ratio is the largest, sometimes >1
 - Fonts differs in WHITE SPACE around the foreground font
 */
//
//Global Variables
Minim minim; //initates entire class
int numberOfSongs = 1; //Best Practice
int numberOfSoundEffects = 1; //Best Practice
AudioPlayer[] playList = new AudioPlayer[ numberOfSongs ];
AudioMetaData[] playListMetaData = new AudioMetaData[ numberOfSongs ];
AudioPlayer[] soundEffects = new AudioPlayer[ numberOfSoundEffects ];
int currentSong = numberOfSongs - numberOfSongs; //ZERO
//
void setup() {
  //Display
  //fullScreen();
  size(700, 500);
  int appWidth = width; //displayWidth
  int appHeight = height; //displayHeight
  //
  //Music Loading - STRUCTURED Review
  minim = new Minim(this);
  String upArrow = "../../../../../../";
  String lessonDependanciesFolder = "Lesson Dependancies Folder/";
  String soundEffectsFolder = "Sound Effects/";
  String musicPathway = "Music Pong/";
  String musicPong = "Music Pong/";
  String musicAll = "Music All/";
  //Note: Download music and sound effects, then design your player with images, text, and 2D shapes
  //See Google Search: Atari pong logo free image download
  String carDoor = "Car_Door_Closing";
  String pongWorld = "Pong World";

  //Add all files, CS20 Review is special OS Java Library
  //Including the reading of the number of files in the array
  String fileExtension_mp3 = ".mp3";
  //
  String musicDirectory = upArrow + lessonDependanciesFolder + musicPathway;
  String file = musicDirectory + pongWorld + fileExtension_mp3; //relative pathway or directory
  println( file );
  playList[ currentSong ] = minim.loadFile( file ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
  playListMetaData[ currentSong ] = playList[ currentSong ].getMetaData();
  //
  String soundEffectsDirectory = upArrow + lessonDependanciesFolder + soundEffectsFolder;
  file = soundEffectsDirectory + carDoor + fileExtension_mp3; //relative pathway or directory
  println( file );
  soundEffects[ numberOfSoundEffects-1 ] = minim.loadFile( file ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
  //One way to iterate through all Sound Effects
  //
  //Music Testing
  //playList[currentSong].play();
  //soundEffects[currentSong].play();
  //
  //println("Start of Console");
  //Fonts from OS
  /*
  String[] fontList = PFont.list(); //To list all fonts available on system
   printArray(fontList); //For listing all possible fonts to choose, then createFont
   */
  float fontSize = 55.0; //Starts as an int but converted to a float later
  String harrington = "Harrington";
  PFont titleFont;
  titleFont = createFont (harrington, fontSize); //Verify font exists
  //Tools / Create Font / Find Font / Do Not Press "OK", known bug
  //
  //Layout with a rect()
  float titleX = appWidth*1.5/5; //Decimals & Percents allowed
  float titleY = appHeight*1/10;
  float titleWidth = appWidth*2/5; //Origonal 40% = 2/5
  float titleHeight = appHeight*1/10; //Origonal 10% = 1/10 //Alternative, enter actual pixel number
  rect(titleX, titleY, titleWidth, titleHeight);
  //
  //Font Size relative to rect(height)
  fontSize = 52.0; //Change the number until it fits, largest font size, int only to ease guessing
  println("Font Size:", fontSize );
  //
  /* Aspect Ratio Manipulations (changes to variables)
   - choose Aspect Ratio that must be mutliplied: fontSize/titleHeight
   - Rewriting fontSize with formulae
   */
  float harringtonAspectRatio = fontSize / titleHeight;
  fontSize = titleHeight*harringtonAspectRatio;
  println("Aspect Ratio:", harringtonAspectRatio);
  println(); //Skip a line
  //
  //Minimum Lines of code to format, draw text with colour, and become aware of other functions
  color purpleInk = #2C08FF;
  fill(purpleInk); //Ink, hexidecimal copied from Color Selector
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  textFont(titleFont, fontSize); //see variable note
  //textFont() has option to combine font declaration with textSize()
  //
  //Drawing Text
  //Decrease Font when wrapped around
  float constantDecrease = 0.99; //99% of origonal or 1% decrease (larger #'s have  bigger decrease)
  while ( titleWidth < textWidth( title ) ) { //decrease font
    fontSize *= constantDecrease; //Assignment Operator  //fontSize = fontSize*0.99;
    //1% decrease but can be more accurate (0.0001%) ... increases runtime
    //Recursive number sequences and tests each number
    //Able to start with large and become small when close with IF formulae
    //Recursive programming, later topic, can increase readability & runtime while iterations increase efficeincy
    //
    //Update WHILE Conditional with fontSize
    textFont(titleFont, fontSize);
  } //End Wrap-Around Notification
  //
  //Drawing Title v. playListMetaData[currentSong].title()
  println();
  println("Song Title:", playListMetaData[currentSong].title());
  println();
  text(playListMetaData[currentSong].title(), titleX, titleY, titleWidth, titleHeight);
  color whiteInk = #FFFFFF;
  fill(whiteInk); //reset
  //
  //Aspect Ratio of Specfic Font, calculations only to be entered in variables above
  println( "Text Width:", textWidth( playListMetaData[currentSong].title() ), "v rectWidth:", titleWidth ); //Always smaller or cut off, if text is drawn, always drawn
  println( "Text Height:", fontSize, "v. rectHeight:", titleHeight ); //largest fontSize that will be draw, relative to rectHeight
  println( "Harrington Aspect Ratio ( fontSize/rect(height) ):", fontSize/titleHeight ); //Remember casting
  //
  //Print What is available on a particular song
  //See Image / Properties / Details
  println();
  println( "File Name: " + playListMetaData[currentSong].fileName() );
  println( "Length (in milliseconds): " + playListMetaData[currentSong].length() );
  println( "Title: " + playListMetaData[currentSong].title() );
  println( "Author: " + playListMetaData[currentSong].author() );
  println( "Album: " + playListMetaData[currentSong].album() );
  println( "Date: " + playListMetaData[currentSong].date() );
  println( "Comment: " + playListMetaData[currentSong].comment() );
  println( "Lyrics: " + playListMetaData[currentSong].lyrics() );
  println( "Track: " + playListMetaData[currentSong].track() );
  println( "Genre: " + playListMetaData[currentSong].genre() );
  println( "Copyright: " + playListMetaData[currentSong].copyright() );
  println( "Disc: " + playListMetaData[currentSong].disc() );
  println( "Composer: " + playListMetaData[currentSong].composer() );
  println( "Orchestra: " + playListMetaData[currentSong].orchestra() );
  println( "Publisher: " + playListMetaData[currentSong].publisher() );
  println( "Encoded: " + playListMetaData[currentSong].encoded() );
} //End setup
//
void draw() {
} //End draw for compiler
//
void mousePressed() {
  if (currentSong == numberOfSongs-1) {
    currentSong = 0;
  } else {
    currentSong++;
  }
  println(playListMetaData[currentSong].title());
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
