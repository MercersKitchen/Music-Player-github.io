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
AudioPlayer[] playList; //length of array determined by reading the Music Folder
//AudioPlayer[] soundEffects = new AudioPlayer[ numberOfSoundEffects ];
int currentSong = numberOfSongs - numberOfSongs; //ZERO
//
PImage[] imagesPlayList;
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
  String lessonDependanciesFolder = "/../../../../Lesson Dependancies Folder/"; //Relative Pathway
  String imagesPath = sketchPath()+lessonDependanciesFolder+"Images/"; //Hardcoded
  String musicPath = sketchPath()+lessonDependanciesFolder+"Music All/"; //Hardcoded
  
  
  //Read entire String files into imageLoad() & minim.loadFile()
  // if straight = does not work, use copy array code,
  // https://processing.org/reference/arrayCopy_.html
  
  musicLoading(musicPath);
  
  imageLoading(imagesPath); //Order from alphebetical to same as music file
  //Reading and sorting file names in CS30
  
  
  image( imagesPlayList[0], 0, 0 );
  playList[0].play();

  
  //pathwayLength = fileNamesLength(String absolutePathway);
  //File[] fileNames = new File[1];
  //music = expand(, pathwayLength);
  /*
  musicAll_folder = "Music All/"; //Poor Practice: rewritten in File Loading
  images_folder = "Images/"; //Poor Practice: rewritten in File Loading
  //
  String generalDirectory = absolutePath + lessonDependanciesFolder;
  //String imageDirectory = absolutePath + lessonDependanciesFolder + images;
  println("Music Directory", generalDirectory);
  //println("Image Directory", imageDirectory);
  //
  fileLoading (generalDirectory, lessonDependanciesFolder, musicAll_folder);
  //
  println(musicAll_folder);
  //if ( musicAll_folder ) musicLoading(fileNames, files);
  //if ( fileTypeFolder=="Images/" ) musicLoading(fileNames, files);
  //
  currentSong=numberOfSongs-numberOfSongs;
  playList[ currentSong ].play();
  //
  //fileLoading (generalDirectory, lessonDependanciesFolder, images);
  //
  
  */
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
