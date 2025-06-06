/* Autoloading images wtih ImageIO causes threading isseus
 - Solved with Try-Catch (a hardware error)
 - Debugger signals this through an error, also tracks variables for your saftey
 
 - Illstrates Java .File returning a un-usable Class-based variable for ImageIO
 - Similar to Java .File to Minim requiring primitive String Class
 
 - Previous "Try-Catches" dealt with choosing between solution sets of a total chosen through logical operators
 - Single Line IF, IF-Else, IF-elseIF-Else
 - Visual description: Euler or Venn Diagram
 
 - FOR-Each also explores i-index formulae
 
 - Note: loading file contents makes items searchable on Alphebetical Order
 - If Numberical First, number to be considered or ignored (user ordered already)
 - Creating Play Order with drag&drop feature
 
 */
//Library - Minim
import java.io.File; //File Reading
import java.awt.image.BufferedImage; //Image Variables
import javax.imageio.ImageIO; //Accessing information of Image Variables
//
//Global Variables
//
void setup() {
  //
  /* Display
   //fullScreen();
   size(700, 500);
   int appWidth = width; //displayWidth
   int appHeight = height; //displayHeight
   */
  String absolutePath = sketchPath(); //To MAIN Program
  println("Absolute Path:", absolutePath);
  String upArrow = "/../../../../";
  String imageDirectory = "Lesson Dependancies Folder/Images/"; //Hardcoded, always relative to the MAIN program
  String imagePathway = absolutePath + upArrow + imageDirectory;
  println("Image Pathway:", imagePathway);
  println(); //Note: space left, one method formatting CONSOLE
  //
  File imageFolder = new File(imagePathway); //Uses Java Library to create class (variables & code)
  //A class is like an .mp3 that has music and text information
  File[] filePathway_Name = imageFolder.listFiles(); //Uses built in class to list all files
  println("Image Folder Pathway & File Names: ");
  printArray(filePathway_Name);
  //
  //Converstion to Primitve String Data, different Class
  //Same Code used in Reading Music Files - will be procedure
  String[] files = new String[filePathway_Name.length]; //Purpose: convert File to String for minim.loadFile()
  int i=0;
  if ( filePathway_Name != null ) {
    for ( File file : filePathway_Name ) { //FOR EACH Loop, creates local class, uses .length to iterate
      files[i] = imagePathway + file.getName(); //print fileNames.getName() Object to String
      //Note: getName() is built in code
      i++; //interation var required here
    }
  }
  //
  println("\nString Data for Image File Pathway and Names"); //Note character escape
  printArray(files);
  println();
  //
  File[] imagesFile = new File[files.length];
  BufferedImage[] images = new BufferedImage[files.length];
  int[] imageDimensions = new int[files.length*2];
  i=0;
  for ( String file : files ) {
    imagesFile[i] = new File( file ); //File filePathway_Name[i] makes ERROR even though same Class
    i++;
  }
  //
  println("File-type Image File Strings"); //In CONSOLE, doesn't illsrate difference between File and String Classes
  printArray(imagesFile);
  println();
  //Comment the TRY-Catch out to see the Debugger ERROR, thread-based or hardware based
  try {
    i=0;
    for ( File file : imagesFile ) {
      images[i] = ImageIO.read( file ); //Without the TRY, ERROR "Unhandled Exception type IOException"
      println( filePathway_Name[i].getName()+"-Width: " + images[i].getWidth() + ",", filePathway_Name[i].getName()+"-Height: " + images[i].getHeight() );
      imageDimensions[i*2] = images[i].getWidth();
      imageDimensions[i*2+1] = images[i].getHeight();
      i++;
    }
  }
  catch (IOException e) {
    e.printStackTrace();
    for ( i=0; i<files.length; i++ ) {
      images[i] = null;
    }
  }
  //
  println("\nArray with image dimension, data structure searchable to with %2, alphebeticalOrder & alphebeticalOrder=1");
  printArray(imageDimensions);
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
} //End keyPressed
//
// End Main Program
