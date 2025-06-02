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
//Display
//fullScreen(); //Difficult setting with Infinite Loops
size(700, 500); //Testing Only
int  appWidth = width; //displayWidth
int  appHeight = height; //displayHeight
//
//Population
float imageDivX = appWidth*1/4;
float imageDivY = appHeight*1/10;
float imageDivWidth = appWidth*1/2;
float imageDivHeight = appHeight*4/5;
//
//Image Aspect Ratio Algorithm: demonstrating Landscape to Portrait
String upArrow = "../../../../../";
String folders = "Lesson Dependancies Folder/Images/";
String bike = "bike";
String fileExtension = ".jpg";
String image1Pathway = upArrow + folders + bike + fileExtension;
println(image1Pathway);
PImage image1 = loadImage( image1Pathway );
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
float image1WidthChanged, image1HeightChanged;
if ( image1Landscape==true ) {
  image1WidthChanged = imageDivWidth;
  image1HeightChanged = ( image1WidthChanged >= imageDivWidth ) ? image1WidthChanged/image1AspectRatio_GreaterOne : image1WidthChanged*image1AspectRatio_GreaterOne ;
  if ( image1HeightChanged > imageDivHeight ) { //ERROR Catch
    println("Image Aspect Ratio algorithm ERROR");
    exit();
    //noLoop(); //Debugging only
  }
} else {
  image1HeightChanged = imageDivHeight;
  image1WidthChanged = ( image1HeightChanged >= imageDivHeight ) ? image1HeightChanged/image1AspectRatio_GreaterOne : image1HeightChanged*image1AspectRatio_GreaterOne ;
  if ( image1WidthChanged > imageDivWidth ) { //ERROR Catch
    println("Image Aspect Ratio algorithm ERROR");
    exit();
    //noLoop(); //Debugging only
  }
}
//
//DIV
rect( imageDivX, imageDivY, imageDivWidth, imageDivHeight );
//
//Prototype Images
image( image1, imageDivX, imageDivY, image1WidthChanged, image1HeightChanged );
//
