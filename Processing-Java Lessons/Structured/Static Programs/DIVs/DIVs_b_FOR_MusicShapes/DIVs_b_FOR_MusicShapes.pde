/* Purpose: draw a rectangle
 Note: the visual object is the rectangle but the computer requires the parameter-varaibles created first
 Vocabulary
 - Declaration & Initialization
 - Variables used at a Program-level
 - Variables used to create program-level variables (could be deleted)
 - Population of variables
 */
//Library - Minim
//
//Global Variables
float randomStartX, randomStartY, randomStartWidth, randomStartHeight;
float quitX, quitY, quitWidth, quitHeight;
float songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight;
float imageDivX, imageDivY, imageDivWidth, imageDivHeight;
float songPositionDivX, songPositionDivY, songPositionDivWidth, songPositionDivHeight;
float timeBarDivX, timeBarDivY, timeBarDivWidth, timeBarDivHeight;
float timeRemainingDivX, timeRemainingDivY, timeRemainingDivWidth, timeRemainingDivHeight;
float totalTimeDivX, totalTimeDivY, totalTimeDivWidth, totalTimeDivHeight;
//
// Grouping rect() by Function
float[] musicButtonDivX;
float musicButtonDivY, musicButtonDivSquare;
//
// Display
//size(700, 500); //width //height //repeats teaching display, landscape
fullScreen();
int appWidth = displayWidth;
int appHeight = displayHeight;
int shortSide = ( appWidth <= appHeight ) ? appWidth : appHeight ; //may cause design issues, how
//
//Pattern with Y, Width, and Height must be executed before X-Variable
int numberOfButtons = 13; //One button on either side as space, Center Button is Play
musicButtonDivSquare = appWidth/numberOfButtons;
float beginningButtonSpace = musicButtonDivSquare;
musicButtonDivY = appHeight*3/5; //Close approximation of total, slightly bigger space than randomStartQuitSide to separate DIVs
int randomStartQuitSide = shortSide*1/20;
//
//Population
randomStartX = randomStartY = quitY = 0;
randomStartWidth = randomStartHeight = randomStartQuitSide;
quitX = appWidth - randomStartQuitSide;
quitWidth = quitHeight = randomStartQuitSide;
songTitleDivX = imageDivX = musicButtonDivSquare*3;
songTitleDivY = randomStartQuitSide;
songTitleDivWidth = musicButtonDivSquare*7;
songTitleDivHeight = musicButtonDivSquare*1.5/2;
imageDivY = songTitleDivY + songTitleDivHeight + quitHeight;
imageDivWidth = musicButtonDivSquare*7;
imageDivHeight = imageDivY + ( musicButtonDivSquare*1 );
//

//Pattern with X-parameters of rect()
musicButtonDivX = new float[numberOfButtons-2];
//-2 for button padding
//
for (int i=0; i<numberOfButtons-2; i++) { // Note: < is same as <= -1 //logics of human counting v. computer counting
  musicButtonDivX[i] = beginningButtonSpace + musicButtonDivSquare*i;
}
//
float musicSongPaddingY = musicButtonDivSquare*1/4;
float musicSongSpaceX = musicButtonDivX[0];
float musicSongSpaceY = musicButtonDivY + musicButtonDivSquare + musicSongPaddingY;
float timeBarWidth_temp = appWidth - musicButtonDivSquare*2;
float musicSongSpaceHeight = appHeight - musicSongPaddingY - musicSongSpaceY;
//rect(musicSongSpaceX, musicSongSpaceY, musicSongSpaceWidth, musicSongSpaceHeight); //testing only
//
// Pattern of repeating with operations, variables are not patterned
songPositionDivX = musicSongSpaceX;
songPositionDivY = musicSongSpaceY;
songPositionDivWidth = timeBarWidth_temp*1/5;
songPositionDivHeight = musicSongSpaceHeight*2/5;
timeRemainingDivX = musicSongSpaceX + timeBarWidth_temp*3/5;
timeRemainingDivY = musicSongSpaceY + musicSongSpaceHeight*3/5;
timeRemainingDivWidth = timeBarWidth_temp*1/5;
timeRemainingDivHeight = musicSongSpaceHeight*2/5;
totalTimeDivX = musicSongSpaceX + timeBarWidth_temp*4/5;
totalTimeDivY = musicSongSpaceY + musicSongSpaceHeight*3/5;
totalTimeDivWidth = timeBarWidth_temp*1/5;
totalTimeDivHeight = musicSongSpaceHeight*2/5;
timeBarDivX = musicSongSpaceX;
timeBarDivY = musicSongSpaceY + musicSongSpaceHeight*2/5;
timeBarDivWidth = timeBarWidth_temp;
timeBarDivHeight = musicSongSpaceHeight*1/5;
//
//DIVs
//rect(X, Y, Width, Height)
rect(randomStartX, randomStartY, randomStartWidth, randomStartHeight);
rect(quitX, quitY, quitWidth, quitHeight);
rect(imageDivX, imageDivY, imageDivWidth, imageDivHeight);
//
rect(songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight);
rect(songPositionDivX, songPositionDivY, songPositionDivWidth, songPositionDivHeight);
rect(timeBarDivX, timeBarDivY, timeBarDivWidth, timeBarDivHeight);
rect(timeRemainingDivX, timeRemainingDivY, timeRemainingDivWidth, timeRemainingDivHeight);
rect(totalTimeDivX, totalTimeDivY, totalTimeDivWidth, totalTimeDivHeight);
//
//Note: easier to use square() than rect(), specific to Processing-Java
for (int i=0; i<numberOfButtons-2; i++) { //Repeat of previous FOR-Conditional
  square(musicButtonDivX[i], musicButtonDivY, musicButtonDivSquare);
}
//
