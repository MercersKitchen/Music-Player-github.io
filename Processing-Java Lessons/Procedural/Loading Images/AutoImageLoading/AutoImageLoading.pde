//Library - Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//import javax.imageio.ImageIO;
//import java.awt.image.BufferedImage;
import java.io.File;
//import java.io.IOException;
//
//Global Variables
Minim minim; //initates entire class
int numberOfSongs = 1; //Best Practice
//int numberOfSoundEffects = ???

int currentSong = numberOfSongs - numberOfSongs; //ZERO
//
void setup() {
  //
  //fullScreen();
  size(700, 500);
  int appWidth = width; //displayWidth
  int appHeight = height; //displayHeight
  int shorterSide = int(comparisonReturnSmaller( float(appWidth), float(appHeight) ) );
  //
  minim = new Minim(this);
  String absolutePath = sketchPath();
  println("Absolute Path", absolutePath);
  String lessonDependanciesFolder = "/../../../../Lesson Dependancies Folder/";
  String musicAll = "Music All/"; //Poor Practice: rewritten in File Loading
  String images = "Images/"; //Poor Practice: rewritten in File Loading
  //
  String generalDirectory = absolutePath + lessonDependanciesFolder;
  //String imageDirectory = absolutePath + lessonDependanciesFolder + images;
  println("Music Directory", generalDirectory);
  //println("Image Directory", imageDirectory);
  fileLoading (generalDirectory, lessonDependanciesFolder, musicAll);
  currentSong=numberOfSongs-numberOfSongs;
  playList[ currentSong ].play();
  fileLoading (generalDirectory, lessonDependanciesFolder, images);
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
void keyPressed() {
  //Simple NEXT Button
  playList[ currentSong ].pause();
  playList[ currentSong ].rewind();
  if ( currentSong >= numberOfSongs-1 ) {
    currentSong=0;
  } else {
    currentSong++;
  }
  playList[ currentSong ].play();
} //End keyPressed
//
// End Main Program
