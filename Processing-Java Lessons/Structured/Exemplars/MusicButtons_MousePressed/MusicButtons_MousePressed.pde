/* Purpose: combine prototyped 2D Music Button Symbols
 - Loop Once Requires a "1" inside
 */
//
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
float quitX, quitY, quitWidth, quitHeight;
float imageDivX, imageDivY, imageDivWidth, imageDivHeight;
float stopDivX, stopDivY, stopDivWidth, stopDivHeight;
float muteDivX, muteDivY, muteDivWidth, muteDivHeight;
float previousDivX, previousDivY, previousDivWidth, previousDivHeight;
float fastRewindDivX, fastRewindDivY, fastRewindDivWidth, fastRewindDivHeight;
float pauseDivX, pauseDivY, pauseDivWidth, pauseDivHeight;
float playDivX, playDivY, playDivWidth, playDivHeight;
float loopOnceDivX, loopOnceDivY, loopOnceDivWidth, loopOnceDivHeight;
float loopInfiniteDivX, loopInfiniteDivY, loopInfiniteDivWidth, loopInfiniteDivHeight;
float fastForwardDivX, fastForwardDivY, fastForwardDivWidth, fastForwardDivHeight;
float nextDivX, nextDivY, nextDivWidth, nextDivHeight;
float shuffleDivX, shuffleDivY, shuffleDivWidth, shuffleDivHeight;
float songPositionDivX, songPositionDivY, songPositionDivWidth, songPositionDivHeight;
float timeRemainingDivX, timeRemainingDivY, timeRemainingDivWidth, timeRemainingDivHeight;
float songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight;
float timeBarDivX, timeBarDivY, timeBarDivWidth, timeBarDivHeight;
float totalTimeDivX, totalTimeDivY, totalTimeDivWidth, totalTimeDivHeight;
//Button Variables after
float stopButtonX, stopButtonY, stopButtonWidth, stopButtonHeight;
float playX1, playY1, playX2, playY2, playX3, playY3;
float fastForwardX1, fastForwardY1, fastForwardX2, fastForwardY2, fastForwardX3, fastForwardY3;
float fastForwardX4, fastForwardY4, fastForwardX5, fastForwardY5, fastForwardX6, fastForwardY6;
float pauseX1, pauseY1, pauseWidth1, pauseHeight1;
float pauseX2, pauseY2, pauseWidth2, pauseHeight2;
float muteTopPoint1X, muteTopPoint1Y, muteTopPoint2X, muteTopPoint2Y;
float muteDownPoint1X, muteDownPoint1Y, muteDownPoint2X, muteDownPoint2Y;
float muteBottomPoint1X, muteBottomPoint1Y, muteBottomPoint2X, muteBottomPoint2Y;
float muteUpPoint1X, muteUpPoint1Y, muteUpPoint2X, muteUpPoint2Y;
float muteCross1X1, muteCross1Y1, muteCross1X2, muteCross1Y2;
float muteCross2X1, muteCross2Y1, muteCross2X2, muteCross2Y2;
float prevX, prevY, prevWidth, prevHeight;
float prevX1, prevY1, prevX2, prevY2, prevX3, prevY3;
float fastRewindX1, fastRewindY1, fastRewindX2, fastRewindY2, fastRewindX3, fastRewindY3;
float fastRewindX4, fastRewindY4, fastRewindX5, fastRewindY5, fastRewindX6, fastRewindY6;
float loopOnceX, loopOnceY, loopOnceWidth, loopOnceHeight;
float loopOnceX1, loopOnceY1, loopOnceX2, loopOnceY2, loopOnceX3, loopOnceY3;
float loopInfiniteX, loopInfiniteY, loopInfiniteWidth, loopInfiniteHeight;
float loopInfiniteX1, loopInfiniteY1, loopInfiniteX2, loopInfiniteY2, loopInfiniteX3, loopInfiniteY3;
float nextX1, nextY1, nextX2, nextY2, nextX3, nextY3;
float nextX, nextY, nextWidth, nextHeight;
float shuffleCross1X1, shuffleCross1Y1, shuffleCross1X2, shuffleCross1Y2;
float shuffleCross2X1, shuffleCross2Y1, shuffleCross2X2, shuffleCross2Y2;
float shuffleTriX1, shuffleTriY1, shuffleTriX2, shuffleTriY2, shuffleTriX3, shuffleTriY3;
float shuffleTriX4, shuffleTriY4, shuffleTriX5, shuffleTriY5, shuffleTriX6, shuffleTriY6;
//
void setup() {
  // Display
  fullScreen();
  //size(700, 500);
  int appWidth = displayWidth; //width
  int appHeight = displayHeight; //height
  int appShortSide = ( appWidth < appHeight ) ? appWidth : appHeight ;
  //
  //Music Loading - STRUCTURED Review
  minim = new Minim(this);
  String lessonDependanciesFolder = "Lesson Dependancies Folder/";
  String musicPathway = "Music Pong/";
  String musicPong = "Music Pong/";
  String musicAll = "Music All/";
  //Note: Download music and sound effects, then design your player with images, text, and 2D shapes
  //See Google Search: Atari pong logo free image download
  String pongWorld = "Pong World";
  //Add all files, CS20 Review is special OS Java Library
  //Including the reading of the number of files in the array
  String fileExtension_mp3 = ".mp3";
  //
  String musicDirectory = "../../../../" + lessonDependanciesFolder + musicPathway;
  String file = musicDirectory + pongWorld + fileExtension_mp3; //relative pathway or directory
  println( file );
  //Create a FOR loop to loadFile() a changing songName
  playList[ currentSong ] = minim.loadFile( file ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
  //Music Testing
  //playList[currentSong].play();
  //
  //Population
  quitX = appWidth - appShortSide*1/20;
  quitY = 0;
  quitWidth = appShortSide*1/20;
  quitHeight = appShortSide*1/20;
  imageDivX = appWidth*1/4;
  imageDivY = appHeight*1/5;
  imageDivWidth = appWidth*1/2;
  imageDivHeight = appHeight*1.5/5; //1+1.5=2.5, half of the total height
  songTitleDivX = appWidth*1/4;
  songTitleDivY = appHeight*1/20;
  songTitleDivWidth = appWidth*1/2;
  songTitleDivHeight = appHeight*1/10;
  //
  //rect(DIV) is a square to start, by design
  int numberOfButtons = 13; //Half a button on either side as space, Center Button is Play
  //println("Button Width:", appWidth/numberOfButtons);
  int widthOfButton = appWidth/numberOfButtons;
  int beginningButtonSpace = widthOfButton;
  int buttonY = appHeight*3/5;
  stopDivX = beginningButtonSpace + widthOfButton*0;
  stopDivY = buttonY;
  stopDivWidth = widthOfButton;
  stopDivHeight = widthOfButton;
  //
  //STOP BUTTON
  stopButtonX = stopDivX + stopDivWidth*1/4;
  stopButtonY = stopDivY + stopDivHeight*1/4;
  stopButtonWidth = widthOfButton*1/2;
  stopButtonHeight = widthOfButton*1/2;
  //
  muteDivX = beginningButtonSpace + widthOfButton*1;
  muteDivY = buttonY;
  muteDivWidth = widthOfButton;
  muteDivHeight = widthOfButton;
  //
  //Mute Button
  //Note: population of MUTE could be based on first point
  muteTopPoint1X = muteDivX + muteDivWidth*1/4 ;
  muteTopPoint1Y = muteDivY + muteDivHeight*1/4 ;
  muteTopPoint2X = muteTopPoint1X + muteDivWidth*1/2 ; //based on beginning of line
  muteTopPoint2Y = muteTopPoint1Y ;
  muteDownPoint1X = muteDivX + muteDivWidth*3/4 ;
  muteDownPoint1Y = muteDivY + muteDivHeight*1/4 ;
  muteDownPoint2X = muteDownPoint1X; //based on beginning of line
  muteDownPoint2Y = muteDivY + muteDivHeight*3/4 ;
  muteBottomPoint1X = muteDivX + muteDivWidth*3/4 ;
  muteBottomPoint1Y = muteDivY + muteDivHeight*3/4;
  muteBottomPoint2X = muteDivX + muteDivWidth*1/4 ; //based on beginning of line
  muteBottomPoint2Y = muteDivY + muteDivHeight*3/4 ;
  muteUpPoint1X = muteDivX + muteDivWidth*1/4;
  muteUpPoint1Y = muteDivY + muteDivHeight*3/4;
  muteUpPoint2X = muteUpPoint1X ; //based on beginning of line
  muteUpPoint2Y = muteDivY + muteDivHeight*1/4;
  muteCross1X1 = muteTopPoint1X;
  muteCross1Y1 = muteTopPoint1Y;
  muteCross1X2 = muteBottomPoint1X;
  muteCross1Y2 = muteBottomPoint1Y;
  muteCross2X1 = muteUpPoint1X;
  muteCross2Y1 = muteUpPoint1Y;
  muteCross2X2 = muteDownPoint1X;
  muteCross2Y2 = muteDownPoint1Y;
  //
  previousDivX = beginningButtonSpace + widthOfButton*2;
  previousDivY = buttonY;
  previousDivWidth = widthOfButton;
  previousDivHeight = widthOfButton;
  //
  //Previous Button
  prevX = previousDivX + previousDivWidth*1/2 - previousDivWidth*1/8 ;
  prevY = previousDivY + previousDivHeight*1/4 ;
  prevWidth = previousDivWidth*1/8 ;
  prevHeight = previousDivHeight*1/2 ;
  prevX1 = previousDivX + previousDivWidth*3/4;
  prevY1 = previousDivY + previousDivHeight*1/4;
  prevX2 = previousDivX + previousDivWidth*1/2;
  prevY2 = previousDivY + previousDivHeight*1/2 ;
  prevX3 = prevX1 ;
  prevY3 = previousDivY + previousDivHeight*3/4;
  //
  fastRewindDivX = beginningButtonSpace + widthOfButton*3;
  fastRewindDivY = buttonY;
  fastRewindDivWidth = widthOfButton;
  fastRewindDivHeight = widthOfButton;
  //
  //fast rewind button
  fastRewindX1 = fastRewindDivX + fastRewindDivWidth*3/4 ;
  fastRewindY1 = fastRewindDivY + fastRewindDivHeight*1/4 ;
  fastRewindX2 = fastRewindDivX + fastRewindDivWidth*1/2 ;
  fastRewindY2 = fastRewindDivY + fastRewindDivHeight*1/2 ;
  fastRewindX3 = fastRewindX1 ;
  fastRewindY3 = fastRewindDivY + fastRewindDivHeight*3/4;
  fastRewindX4 = fastRewindDivX + fastRewindDivWidth*1/2 ;
  fastRewindY4 = fastRewindDivY + fastRewindDivHeight*1/4;
  fastRewindX5 = fastRewindDivX + fastRewindDivWidth*1/4 ;
  fastRewindY5 = fastRewindDivY + fastRewindDivHeight*1/2 ;
  fastRewindX6 = fastRewindX4 ;
  fastRewindY6 = fastRewindDivY + fastRewindDivHeight*3/4 ;
  //
  pauseDivX = beginningButtonSpace + widthOfButton*4;
  pauseDivY = buttonY;
  pauseDivWidth = widthOfButton;
  pauseDivHeight = widthOfButton;
  //
  //Pause Button
  pauseX1 = pauseDivX + pauseDivWidth*1/4;
  pauseY1 = pauseDivY + pauseDivHeight*1/4;
  pauseWidth1 = pauseDivWidth*1/8;
  pauseHeight1 = pauseDivHeight*1/2;
  pauseX2 = pauseDivX + pauseDivWidth*5/8;
  pauseY2 = pauseDivY + pauseDivHeight*1/4;
  pauseWidth2 = pauseDivWidth*1/8;
  pauseHeight2 = pauseDivHeight*1/2;
  //
  playDivX = beginningButtonSpace + widthOfButton*5; //TEACHER Only" manipulate this number to draw simulate all buttons
  playDivY = buttonY;
  playDivWidth = widthOfButton;
  playDivHeight = widthOfButton;
  //
  //Play Button
  playX1 = playDivX + playDivWidth*1/4;
  playY1 = playDivY + playDivHeight*1/4;
  playX2 = playDivX + playDivWidth*3/4;
  playY2 = playDivY + playDivHeight*1/2;
  playX3 = playDivX + playDivWidth*1/4;
  playY3 = playDivY + playDivHeight*3/4;
  //
  loopOnceDivX = beginningButtonSpace + widthOfButton*6;
  loopOnceDivY = buttonY;
  loopOnceDivWidth = widthOfButton;
  loopOnceDivHeight = widthOfButton;
  //
  //loop once button
  //Note, this is a stop botton with a "one inside" & a triangle
  //CAUTION: this needs text
  loopOnceX = loopOnceDivX + loopOnceDivWidth*1/4 ;
  loopOnceY = loopOnceDivY + loopOnceDivHeight*1/4 ;
  loopOnceWidth = loopOnceDivWidth*1/2;
  loopOnceHeight = loopOnceDivHeight*1/2;
  loopOnceX1 = loopOnceDivX + loopOnceDivWidth*3/4 - loopOnceDivWidth*1/16 ;
  loopOnceY1 = loopOnceDivY + loopOnceDivHeight*1/4 - loopOnceDivHeight*1/16 ;
  loopOnceX2 = loopOnceDivX + loopOnceDivWidth*3/4 + loopOnceDivWidth*1/16 ;
  loopOnceY2 = loopOnceDivY + loopOnceDivHeight*1/4 ;
  loopOnceX3 = loopOnceX1 ;
  loopOnceY3 = loopOnceDivY + loopOnceDivHeight*1/4 + loopOnceDivHeight*1/16 ;
  //
  loopInfiniteDivX = beginningButtonSpace + widthOfButton*7;
  loopInfiniteDivY = buttonY;
  loopInfiniteDivWidth = widthOfButton;
  loopInfiniteDivHeight = widthOfButton;
  //
  //loop infinite button
  //Note: Loop infinite button is same as loop once, without text "1"
  loopInfiniteX = loopInfiniteDivX + loopInfiniteDivWidth*1/4 ;
  loopInfiniteY = loopInfiniteDivY + loopInfiniteDivHeight*1/4 ;
  loopInfiniteWidth = loopInfiniteDivWidth*1/2;
  loopInfiniteHeight = loopInfiniteDivHeight*1/2;
  loopInfiniteX1 = loopInfiniteDivX + loopInfiniteDivWidth*3/4 - loopInfiniteDivWidth*1/16 ;
  loopInfiniteY1 = loopInfiniteDivY + loopInfiniteDivHeight*1/4 - loopInfiniteDivHeight*1/16 ;
  loopInfiniteX2 = loopInfiniteDivX + loopInfiniteDivWidth*3/4 + loopInfiniteDivWidth*1/16 ;
  loopInfiniteY2 = loopInfiniteDivY + loopInfiniteDivHeight*1/4 ;
  loopInfiniteX3 = loopInfiniteX1 ;
  loopInfiniteY3 = loopInfiniteDivY + loopInfiniteDivHeight*1/4 + loopInfiniteDivHeight*1/16 ;
  //
  //
  fastForwardDivX = beginningButtonSpace + widthOfButton*8;
  fastForwardDivY = buttonY;
  fastForwardDivWidth = widthOfButton;
  fastForwardDivHeight = widthOfButton;
  //
  //Fast Forward Button
  fastForwardX1 = fastForwardDivX + fastForwardDivWidth*1/4;
  fastForwardY1 = fastForwardDivY + fastForwardDivHeight*1/4;
  fastForwardX2 = fastForwardDivX + fastForwardDivWidth*1/2;
  fastForwardY2 = fastForwardDivY + fastForwardDivHeight*1/2;
  fastForwardX3 = fastForwardDivX + fastForwardDivWidth*1/4;
  fastForwardY3 = fastForwardDivY + fastForwardDivHeight*3/4;
  fastForwardX4 = fastForwardDivX + fastForwardDivWidth*1/2;
  fastForwardY4 = fastForwardDivY + fastForwardDivHeight*1/4;
  fastForwardX5 = fastForwardDivX + fastForwardDivWidth*3/4;
  fastForwardY5 = fastForwardDivY + fastForwardDivHeight*1/2;
  fastForwardX6 = fastForwardDivX + fastForwardDivWidth*1/2;
  fastForwardY6 = fastForwardDivY + fastForwardDivHeight*3/4;
  //
  nextDivX = beginningButtonSpace + widthOfButton*9;
  nextDivY = buttonY;
  nextDivWidth = widthOfButton;
  nextDivHeight = widthOfButton;
  //
  //Next Button
  nextX1 = nextDivX + nextDivWidth*1/4;
  nextY1 = nextDivY + nextDivHeight*1/4;
  nextX2 = nextDivX + nextDivWidth*1/2;
  nextY2 = nextDivY + nextDivHeight*1/2;
  nextX3 = nextDivX + nextDivWidth*1/4;
  nextY3 = nextDivY + nextDivHeight*3/4;
  nextX = nextX2;
  nextY = nextY1;
  nextWidth = nextDivWidth*1/8;
  nextHeight = nextDivHeight*1/2;
  //
  shuffleDivX = beginningButtonSpace + widthOfButton*10;
  shuffleDivY = buttonY;
  shuffleDivWidth = widthOfButton;
  shuffleDivHeight = widthOfButton;
  //
  //Shuffle Button
  shuffleCross1X1 = shuffleDivX + shuffleDivWidth*1/4;
  shuffleCross1Y1 = shuffleDivY + shuffleDivHeight*1/4;
  shuffleCross1X2 = shuffleDivX + shuffleDivWidth*3/4;
  shuffleCross1Y2 = shuffleDivY + shuffleDivHeight*3/4;
  shuffleCross2X1 = shuffleDivX + shuffleDivWidth*1/4;
  shuffleCross2Y1 = shuffleDivY + shuffleDivHeight*3/4;
  shuffleCross2X2 = shuffleDivX + shuffleDivWidth*3/4;
  shuffleCross2Y2 = shuffleDivY + shuffleDivHeight*1/4;
  shuffleTriX1 = shuffleCross2X2;
  shuffleTriY1 = shuffleCross2Y2 - shuffleDivHeight*1/16;
  shuffleTriX2 = shuffleCross2X2;
  shuffleTriY2 = shuffleCross2Y2 + shuffleDivHeight*1/16;
  shuffleTriX3 = shuffleCross2X2 + shuffleDivWidth*1/16;
  shuffleTriY3 = shuffleCross2Y2;
  shuffleTriX4 = shuffleCross1X2;
  shuffleTriY4 = shuffleCross1Y2 - shuffleDivHeight*1/16;
  shuffleTriX5 = shuffleCross1X2;
  shuffleTriY5 = shuffleCross1Y2 + shuffleDivHeight*1/16;
  shuffleTriX6 = shuffleCross1X2 + + shuffleDivWidth*1/16;
  shuffleTriY6 = shuffleCross1Y2;

  //
  float musicSongPaddingY = widthOfButton*1/4;
  float musicSongSpaceX = stopDivX;
  float musicSongSpaceY = stopDivY + widthOfButton + musicSongPaddingY;
  float musicSongSpaceWidth = appWidth - widthOfButton*2;
  float musicSongSpaceHeight = appHeight - musicSongPaddingY - musicSongSpaceY;
  //rect(musicSongSpaceX, musicSongSpaceY, musicSongSpaceWidth, musicSongSpaceHeight); //testing only
  songPositionDivX = musicSongSpaceX;
  songPositionDivY = musicSongSpaceY;
  songPositionDivWidth = musicSongSpaceWidth*1/5;
  songPositionDivHeight = musicSongSpaceHeight*2/5;
  timeRemainingDivX = musicSongSpaceX + musicSongSpaceWidth*3/5;
  timeRemainingDivY = musicSongSpaceY + musicSongSpaceHeight*3/5;
  timeRemainingDivWidth = musicSongSpaceWidth*1/5;
  timeRemainingDivHeight = musicSongSpaceHeight*2/5;
  totalTimeDivX = musicSongSpaceX + musicSongSpaceWidth*4/5;
  totalTimeDivY = musicSongSpaceY + musicSongSpaceHeight*3/5;
  totalTimeDivWidth = musicSongSpaceWidth*1/5;
  totalTimeDivHeight = musicSongSpaceHeight*2/5;
  float musicSongSpaceButtonHeight = musicSongSpaceHeight*1/5;
  timeBarDivX = musicSongSpaceX;
  timeBarDivY = musicSongSpaceY + musicSongSpaceHeight*2/5;
  timeBarDivWidth = musicSongSpaceWidth;
  timeBarDivHeight = musicSongSpaceHeight*1/5;
  //
  //DIVs
  //rect(X, Y, Width, Height)
  rect(quitX, quitY, quitWidth, quitHeight);
  rect(imageDivX, imageDivY, imageDivWidth, imageDivHeight);
  rect(stopDivX, stopDivY, stopDivWidth, stopDivHeight);  //*0
  rect(muteDivX, muteDivY, muteDivWidth, muteDivHeight); //*1
  rect(previousDivX, previousDivY, previousDivWidth, previousDivHeight); //*2
  rect(fastRewindDivX, fastRewindDivY, fastRewindDivWidth, fastRewindDivHeight); //*3
  rect(pauseDivX, pauseDivY, pauseDivWidth, pauseDivHeight); //*4
  rect(playDivX, playDivY, playDivWidth, playDivHeight); //*5
  rect(loopOnceDivX, loopOnceDivY, loopOnceDivWidth, loopOnceDivHeight);
  rect(loopInfiniteDivX, loopInfiniteDivY, loopInfiniteDivWidth, loopInfiniteDivHeight);
  rect(fastForwardDivX, fastForwardDivY, fastForwardDivWidth, fastForwardDivHeight);
  rect(nextDivX, nextDivY, nextDivWidth, nextDivHeight);
  rect(shuffleDivX, shuffleDivY, shuffleDivWidth, shuffleDivHeight);
  rect(songPositionDivX, songPositionDivY, songPositionDivWidth, songPositionDivHeight);
  rect(songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight);
  rect(timeBarDivX, timeBarDivY, timeBarDivWidth, timeBarDivHeight);
  rect(timeRemainingDivX, timeRemainingDivY, timeRemainingDivWidth, timeRemainingDivHeight);
  rect(totalTimeDivX, totalTimeDivY, totalTimeDivWidth, totalTimeDivHeight);
  //
  //rect(timeBarDivX, timeBarDivY, timeBarDivWidth, timeBarDivHeight);
  //
  rect(stopButtonX, stopButtonY, stopButtonWidth, stopButtonHeight);
  line(muteTopPoint1X, muteTopPoint1Y, muteTopPoint2X, muteTopPoint2Y);
  line(muteDownPoint1X, muteDownPoint1Y, muteDownPoint2X, muteDownPoint2Y);
  line(muteBottomPoint1X, muteBottomPoint1Y, muteBottomPoint2X, muteBottomPoint2Y);
  line(muteUpPoint1X, muteUpPoint1Y, muteUpPoint2X, muteUpPoint2Y);
  line(muteCross1X1, muteCross1Y1, muteCross1X2, muteCross1Y2);
  line(muteCross2X1, muteCross2Y1, muteCross2X2, muteCross2Y2);
  rect(prevX, prevY, prevWidth, prevHeight);
  triangle(prevX1, prevY1, prevX2, prevY2, prevX3, prevY3);
  triangle(fastRewindX1, fastRewindY1, fastRewindX2, fastRewindY2, fastRewindX3, fastRewindY3);
  triangle(fastRewindX4, fastRewindY4, fastRewindX5, fastRewindY5, fastRewindX6, fastRewindY6);
  triangle(playX1, playY1, playX2, playY2, playX3, playY3);
  rect(pauseX1, pauseY1, pauseWidth1, pauseHeight1);
  rect(pauseX2, pauseY2, pauseWidth2, pauseHeight2);
  triangle(fastForwardX1, fastForwardY1, fastForwardX2, fastForwardY2, fastForwardX3, fastForwardY3);
  triangle(fastForwardX4, fastForwardY4, fastForwardX5, fastForwardY5, fastForwardX6, fastForwardY6);
  rect(loopOnceX, loopOnceY, loopOnceWidth, loopOnceHeight);
  triangle(loopOnceX1, loopOnceY1, loopOnceX2, loopOnceY2, loopOnceX3, loopOnceY3);
  //Note: Loop infinite button is same as loop once, without text "1"
  rect(loopInfiniteX, loopInfiniteY, loopInfiniteWidth, loopInfiniteHeight);
  triangle(loopInfiniteX1, loopInfiniteY1, loopInfiniteX2, loopInfiniteY2, loopInfiniteX3, loopInfiniteY3);
  triangle(nextX1, nextY1, nextX2, nextY2, nextX3, nextY3);
  rect(nextX, nextY, nextWidth, nextHeight);
  line(shuffleCross1X1, shuffleCross1Y1, shuffleCross1X2, shuffleCross1Y2);
  line(shuffleCross2X1, shuffleCross2Y1, shuffleCross2X2, shuffleCross2Y2);
  triangle(shuffleTriX1, shuffleTriY1, shuffleTriX2, shuffleTriY2, shuffleTriX3, shuffleTriY3);
  triangle(shuffleTriX4, shuffleTriY4, shuffleTriX5, shuffleTriY5, shuffleTriX6, shuffleTriY6);
  //
} //End setup
//
void draw() {
} //End draw
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
// End Main Program
