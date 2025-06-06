/* Text: Font size is based on Two Dimensions
 - When font HEIGHT is too big it is not shown
 - When font WIDTH is too long it is off the screen
 
 - Use a multi-line comment to turn off the 2D Size Adjustment, WHILE recursive iteration
 - Algorithm uses code to introduce other functions in drawing text
 
 */
//
String title = "Wahoo!";
/* Full String longer than Rectangle,  "Wahoo! I changed 2D Size."
 - When a String just fits the hieght aspect ratio is the largest, sometimes >1
 - Fonts differs in WHITE SPACE around the foreground font
 */
//Display
//fullScreen();
size(700, 500);
int appWidth = width; //displayWidth
int appHeight = height; //displayHeight
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
text(title, titleX, titleY, titleWidth, titleHeight);
color whiteInk = #FFFFFF;
fill(whiteInk); //reset
//
//Aspect Ratio of Specfic Font, calculations only to be entered in variables above
println( "Text Width:", textWidth( title ), "v rectWidth:", titleWidth ); //Always smaller or cut off, if text is drawn, always drawn
println( "Text Height:", fontSize, "v. rectHeight:", titleHeight ); //largest fontSize that will be draw, relative to rectHeight
println( "Harrington Aspect Ratio ( fontSize/rect(height) ):", fontSize/titleHeight ); //Remember casting
//
//End MAIN
