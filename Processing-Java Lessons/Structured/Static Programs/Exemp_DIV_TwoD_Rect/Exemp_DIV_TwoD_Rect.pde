/* Vocabulary
 - Display
 - Functions, blue
 - Parameters: how to think about the code behind the function
 - Variables as memories of key-variables
 - Variables to manipulate
 - Variable Declaration in strongly formatted language
 - Variable initialization
 
 - Input: Display Geometry
 - Output: 2-D Shapes
 
 - typing practice: start with function, then populate variables
 */
//Display
fullScreen();
//size(700, 500); //key varaibles: width & height
int appWidth = displayWidth;
int appHeight = displayHeight;
//
//Population
float imageX = appWidth*0.17; //Using Percents from Case Study
float imageY = appHeight*0.20;
float imageWidth = appWidth*0.67;
float imageHeight = appHeight*0.15;
//
//DIVs: rect(X, Y Width, Height);
rect(imageX, imageY, imageWidth, imageHeight);
//
