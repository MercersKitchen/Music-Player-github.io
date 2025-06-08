/* Bottom Up Development to learn language and simple algorithms
 - Display: two basic types and three geometries
 - Functions, blue
 - Parameters: how to think about the code behind the function
 - What is returned
 
 - Algorithm: Display & CANVAS, a rectangle like a case study
 - Abstracting a case study illustrates human bias, very useful in HS
 
 - Variables as memories of key-variables, ease of changing CANVAS for debugging (leads to "turning device")
 - Variables to manipulate
 
 - Possible activity: how do you draw a rectangle in the middle of the page (start, length of 1-D lines, overall 2-D look or angles)
 
 - Variable Declaration in strongly formatted language
 - Variable initialization
 - Combining ints into floats (awareness of long and double)
 - Awareness of 5 operators
 
 - Input of display can influence rect() output
 - Output: 2-D Shapes
 
 - typing practice: start with function, then populate variables, create Runtime Errors as reminders to return to code
 
 - Assersion is a rectangle looking replicating the case study
 - Case Study: referent measures, paperfolding
 - What does the rectangle teach use about the overall
 
 - Coding Awareness exps: execution of fillScreen() and size() do not populate key variables afterwards but before setup()
 - Note: see boilerplate_settings.pde for details (requires more coding expereince for understanding)
 
 */
//Display: interaction of Display and CANVAS
// See boilerplate_settings for exemplar
//fullScreen(); //displayWidth //displayHeight
int shorterSide = (displayWidth >= displayHeight) ? displayHeight : displayWidth;
println(displayWidth, displayHeight, shorterSide, width, height);
int appWidth = displayWidth; //width
int appHeight = displayHeight; //height
//size(shorterSide, shorterSide); //Locked unless placed in void setting() {} before void setup() {}
//IllegalStateException, Compiler Error
// See: https://processing.org/reference/settings_.html
size(700, 500); //key varaibles: width & height
//Even though executed after initialization, CANVAS key variables are populated first
//
//Population: declaration and initialization not separate
float imageX = appWidth*0.17; //Using Percents from Case Study
float imageY = appHeight*0.20;
float imageWidth = appWidth*0.67;
float imageHeight = appHeight*0.15;
//
//DIVs: rect(X, Y Width, Height);
rect(imageX, imageY, imageWidth, imageHeight);
//
