/* Vocabulary
 - Loading Image Files
 - Drawing Images use the rect() parameters
 
 - Aspect Ratio:
 - Uses the dimensions of the origonal image
 - User determines whether to use an Scaled ratio greater than one or less than one
 - Determine the image geometry
 - Only the image geometry needs to be know for the algorithm below
 - When the Geometries change, big dimension to small dimension must happen or image will not fit
 - still need an ERROR-Check with oddly shaped landscape-landscape, protrait-portrait resampling
 - size-decreasing algorithms (resampling) discussed in Text
 
 - To use the ERROR Catch autommatically
 - Use nested IF (Intermeidate CS, not introductory)
 - Introduces noLoop()
 
 */
//Dynamic Programming
//
//Library - Minim
//
//Global Variables
int appWidth, appHeight;
float image1DivX, image1DivY, image1DivWidth, image1DivHeight;
float image1WidthChanged, image1HeightChanged;
//
PImage image1;
//
void setup() {
  //Display
  //fullScreen(); //Difficult setting with Infinite Loops
  size(700, 500); //Testing Only
  appWidth = width; //displayWidth
  appHeight = height; //displayHeight
  //
  //Population
  image1DivX = appWidth*1/4;
  image1DivY = appHeight*1/10;
  image1DivWidth = appWidth*1/2;
  image1DivHeight = appHeight*4/5;
  //
  //Image Aspect Ratio Algorithm: demonstrating Landscape to Portrait
  String upArrow = "../../../../../";
  String folders = "Lesson Dependancies Folder/Images/";
  String bike = "bike";
  String fileExtension = ".jpg";
  String image1Pathway = upArrow + folders + bike + fileExtension;
  println(image1Pathway);
  image1 = loadImage( image1Pathway );
  int image1Width = 860;
  int image1Height = 529;
  float image1AspectRatio_GreaterOne = ( image1Width >= image1Height ) ? float(image1Width)/float(image1Height) : float(image1Height)/float(image1Width) ; // Choice x / for bigger or smaller
  println(image1AspectRatio_GreaterOne);
  Boolean image1Landscape = ( image1Width >= image1Height ) ? true : false ;
  /*Only the image geometry needs to be know for the algorithm below
   - When the Geometries change, big dimension to small dimension must happen or image will not fit
   - still need an ERROR-Check with oddly shaped landscape-landscape, protrait-portrait resampling
   - size-decreasing algorithms (resampling) discussed in Text
   */
  if ( image1Landscape==true ) {
    image1WidthChanged = image1DivWidth;
    image1HeightChanged = ( image1Width >= image1DivWidth ) ? image1WidthChanged/image1AspectRatio_GreaterOne : image1WidthChanged*image1AspectRatio_GreaterOne ;
    if ( image1HeightChanged > image1DivHeight ) { //ERROR Catch
      println("Image Aspect Ratio algorithm ERROR");
      exit();
      //noLoop(); //Debugging only
    }
  } else {
    image1HeightChanged = image1DivHeight;
    image1WidthChanged = ( image1Height >= image1DivHeight ) ? image1HeightChanged/image1AspectRatio_GreaterOne : image1HeightChanged*image1AspectRatio_GreaterOne ;
    if ( image1WidthChanged > image1DivWidth ) { //ERROR Catch
      println("Image Aspect Ratio algorithm ERROR");
      exit();
      //noLoop(); //Debugging only
    }
  }
  //
  //DIV
  rect( image1DivX, image1DivY, image1DivWidth, image1DivHeight );
  //
  //Prototype Images
  image( image1, image1DivX, image1DivY, image1WidthChanged, image1HeightChanged );
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
} //End keyPressed
//
// End Main Program
