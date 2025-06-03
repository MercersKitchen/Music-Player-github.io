/* Autoloading images wtih ImageIO causes threading isseus
 - Solved with Try-Catch
 - Compiler signals this through an error
 - Compiler also tracks variables for your saftey
 
 - Illstrates Java File returning a usable Class-based variable for ImageIO
 - Different from Minim that required a primitive String
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

import java.awt.image.BufferedImage;
//import java.io.File;
import javax.imageio.ImageIO;

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
  int shorterSide = int(comparisonReturnSmaller( float(appWidth), float(appHeight) ) );
  //
  minim = new Minim(this);
  String absolutePath = sketchPath();
  println(absolutePath);
  //String musicFolder = "/../../../../Lesson Dependancies Folder/Music All/";
  String imageFolder = "/../../../../../Lesson Dependancies Folder/Images/";
  //
  //String musicDirectory = absolutePath + musicFolder;
  String imageDirectory = absolutePath + imageFolder;
  println(imageDirectory);
  File directory = new File(imageDirectory); //Uses Java Library to create class (variables & code)
  //A class is like an .mp3 that has music and text information
  File[] fileNames = directory.listFiles(); //Uses built in class to list all files
  printArray(fileNames);


  String[] files = new String[fileNames.length]; //Purpose: convert File to String for minim.loadFile()
  int i=0;
  if ( fileNames != null ) {
    for ( File file : fileNames ) { //FOR EACH Loop, creates local class
      files[i] = imageDirectory + file.getName(); //print fileNames.getName() Object to String
      //Note: getName() is built in code
      i++; //iteration necessary here, not in regular FOR
    }
  }

  printArray(files);

  /* works
   File imageBike_f = new File( files[0] );
   BufferedImage imageBike_b;
   File imageMan_f = new File( files[1] );
   BufferedImage imageMan_b;
   int[] imageDimensions = new int[4];
   try {
   imageBike_b = ImageIO.read( imageBike_f );
   imageMan_b = ImageIO.read( imageMan_f );
   println( "Bike Width: " + imageBike_b.getWidth() + ", Bike Height: " + imageBike_b.getHeight() );
   println( "Bike Width: " + imageMan_b.getWidth() + ", Bike Height: " + imageMan_b.getHeight() );
   imageDimensions[0] = imageBike_b.getWidth();
   imageDimensions[1] = imageBike_b.getHeight();
   imageDimensions[2] = imageMan_b.getWidth();
   imageDimensions[3] = imageMan_b.getHeight();
   }
   catch (IOException e) {
   e.printStackTrace();
   imageBike_b = null;
   imageMan_b = null;
   }
   */

  File[] imagesFile = new File[2];
  imagesFile[0] = new File( files[0] );
  BufferedImage[] images = new BufferedImage[2];
  imagesFile[1] = new File( files[1] );
  int[] imageDimensions = new int[4];
  try {
    images[0] = ImageIO.read( imagesFile[0] );
    images[1] = ImageIO.read( imagesFile[1] );
    println( "Bike Width: " + images[0].getWidth() + ", Bike Height: " + images[0].getHeight() );
    println( "Bike Width: " + images[1].getWidth() + ", Bike Height: " + images[1].getHeight() );
    imageDimensions[0] = images[0].getWidth();
    imageDimensions[1] = images[0].getHeight();
    imageDimensions[2] = images[1].getWidth();
    imageDimensions[3] = images[1].getHeight();
  }
  catch (IOException e) {
    e.printStackTrace();
    images[0] = null;
    images[1] = null;
  }

  printArray(imageDimensions);

  /*
  printArray(files);
   numberOfSongs = fileNames.length;
   currentSong = numberOfSongs-numberOfSongs;
   playList = new AudioPlayer[numberOfSongs]; //sets the array length
   while ( currentSong < fileNames.length ) {
   playList[ currentSong ] = minim.loadFile( files[ currentSong ] );
   currentSong++; //functions similar to FOR
   }
   currentSong=numberOfSongs-numberOfSongs;
   playList[ currentSong ].play();
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
