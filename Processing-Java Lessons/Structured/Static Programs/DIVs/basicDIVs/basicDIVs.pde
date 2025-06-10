/* Purpose: draw a rectangle
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
float stopDivX, stopDivY, stopDivWidth, stopDivHeight;
float muteDivX, muteDivY, muteDivWidth, muteDivHeight;
float previousDivX, previousDivY, previousDivWidth, previousDivHeight;
float fastRewindDivX, fastRewindDivY, fastRewindDivWidth, fastRewindDivHeight;
float pauseDivX, pauseDivY, pauseDivWidth, pauseDivHeight;
float playDivX, playDivY, playDivWidth, playDivHeight;
float loopOnceDivX, loopOnceDivY, loopOnceDivWidth, loopOnceDivHeight;
float loopInfiniteDivX, loopInfiniteDivY, loopInfiniteDivWidth, loopInfiniteDivHeight;
float fastForwardDivX, fastForwardDivY, fastForwardDivWidth, fastForwardDivHeight;
float nextDivX, nextDivY, nextDivWidth, nextDivHeight;
float shuffleDivX, shuffleDivY, shuffleDivWidth, shuffleDivHeight;
float songPositionDivX, songPositionDivY, songPositionDivWidth, songPositionDivHeight;
float timeBarDivX, timeBarDivY, timeBarDivWidth, timeBarDivHeight;
float timeRemainingDivX, timeRemainingDivY, timeRemainingDivWidth, timeRemainingDivHeight;
float totalTimeDivX, totalTimeDivY, totalTimeDivWidth, totalTimeDivHeight;
//
// Display
fullScreen();
int appWidth = displayWidth;
int appHeight = displayHeight;
int shortSide = ( appWidth <= appHeight ) ? appWidth : appHeight ;
//
//Population
int numberOfButtons = 13; //One button on either side as space, Center Button is Play
int widthOfButton = appWidth/numberOfButtons; //Creates Symmetry
int beginningButtonSpace = widthOfButton;
int buttonY = appHeight*3/5;
//
randomStartX = 0;
randomStartY = 0;
randomStartWidth = shortSide*1/20;
randomStartHeight = shortSide*1/20;
//
quitX = appWidth - shortSide*1/20;
quitY = 0;
quitWidth = shortSide*1/20;
quitHeight = shortSide*1/20;
//
songTitleDivX = widthOfButton*3;
songTitleDivY = randomStartHeight;
songTitleDivWidth = widthOfButton*7;
songTitleDivHeight = widthOfButton*1.5/2;
//
imageDivX = widthOfButton*3;
imageDivY = songTitleDivY + songTitleDivHeight + quitHeight;
imageDivWidth = widthOfButton*7;
//From the bottom up
imageDivHeight = appHeight - ( quitHeight*4 + widthOfButton*3 );
//(appHeight, quitHeight, quitHeight*3, widthOfButton, widthOfButton*2, appHeight - ( quitHeight*3 + widthOfButton*2 ));








stopDivX = beginningButtonSpace + widthOfButton*0;
stopDivY = buttonY;
stopDivWidth = widthOfButton;
stopDivHeight = widthOfButton;
muteDivX = beginningButtonSpace + widthOfButton*1;
muteDivY = buttonY;
muteDivWidth = widthOfButton;
muteDivHeight = widthOfButton;
previousDivX = beginningButtonSpace + widthOfButton*2;
previousDivY = buttonY;
previousDivWidth = widthOfButton;
previousDivHeight = widthOfButton;
fastRewindDivX = beginningButtonSpace + widthOfButton*3;
fastRewindDivY = buttonY;
fastRewindDivWidth = widthOfButton;
fastRewindDivHeight = widthOfButton;
pauseDivX = beginningButtonSpace + widthOfButton*4;
pauseDivY = buttonY;
pauseDivWidth = widthOfButton;
pauseDivHeight = widthOfButton;
playDivX = beginningButtonSpace + widthOfButton*5;
playDivY = buttonY;
playDivWidth = widthOfButton;
playDivHeight = widthOfButton;
loopOnceDivX = beginningButtonSpace + widthOfButton*6;
loopOnceDivY = buttonY;
loopOnceDivWidth = widthOfButton;
loopOnceDivHeight = widthOfButton;
loopInfiniteDivX = beginningButtonSpace + widthOfButton*7;
loopInfiniteDivY = buttonY;
loopInfiniteDivWidth = widthOfButton;
loopInfiniteDivHeight = widthOfButton;
fastForwardDivX = beginningButtonSpace + widthOfButton*8;
fastForwardDivY = buttonY;
fastForwardDivWidth = widthOfButton;
fastForwardDivHeight = widthOfButton;
nextDivX = beginningButtonSpace + widthOfButton*9;
nextDivY = buttonY;
nextDivWidth = widthOfButton;
nextDivHeight = widthOfButton;
shuffleDivX = beginningButtonSpace + widthOfButton*10;
shuffleDivY = buttonY;
shuffleDivWidth = widthOfButton;
shuffleDivHeight = widthOfButton;
//
float musicSongPaddingY = widthOfButton*1/4;
float musicSongSpaceX = stopDivX;
float musicSongSpaceY = stopDivY + widthOfButton + musicSongPaddingY;
float musicSongSpaceWidth = appWidth - widthOfButton*2;
float musicSongSpaceHeight = appHeight - musicSongPaddingY - musicSongSpaceY;
//rect(musicSongSpaceX, musicSongSpaceY, musicSongSpaceWidth, musicSongSpaceHeight); //testing only
songPositionDivX = musicSongSpaceX;
songPositionDivY = musicSongSpaceY;
songPositionDivWidth = musicSongSpaceWidth*1/5;
songPositionDivHeight = musicSongSpaceHeight*2/5;
timeRemainingDivX = musicSongSpaceX + musicSongSpaceWidth*3/5;
timeRemainingDivY = musicSongSpaceY + musicSongSpaceHeight*3/5;
timeRemainingDivWidth = musicSongSpaceWidth*1/5;
timeRemainingDivHeight = musicSongSpaceHeight*2/5;
totalTimeDivX = musicSongSpaceX + musicSongSpaceWidth*4/5;
totalTimeDivY = musicSongSpaceY + musicSongSpaceHeight*3/5;
totalTimeDivWidth = musicSongSpaceWidth*1/5;
totalTimeDivHeight = musicSongSpaceHeight*2/5;
float musicSongSpaceButtonHeight = musicSongSpaceHeight*1/5;
timeBarDivX = musicSongSpaceX;
timeBarDivY = musicSongSpaceY + musicSongSpaceHeight*2/5;
timeBarDivWidth = musicSongSpaceWidth;
timeBarDivHeight = musicSongSpaceHeight*1/5;
//
//DIVs
//rect(X, Y, Width, Height)
rect(randomStartX, randomStartY, randomStartWidth, randomStartHeight);
rect(quitX, quitY, quitWidth, quitHeight);
rect(imageDivX, imageDivY, imageDivWidth, imageDivHeight);
rect(stopDivX, stopDivY, stopDivWidth, stopDivHeight);  //*0
rect(muteDivX, muteDivY, muteDivWidth, muteDivHeight); //*1
rect(previousDivX, previousDivY, previousDivWidth, previousDivHeight); //*2
rect(fastRewindDivX, fastRewindDivY, fastRewindDivWidth, fastRewindDivHeight); //*3
rect(pauseDivX, pauseDivY, pauseDivWidth, pauseDivHeight); //*4
rect(playDivX, playDivY, playDivWidth, playDivHeight); //*5
rect(loopOnceDivX, loopOnceDivY, loopOnceDivWidth, loopOnceDivHeight);
rect(loopInfiniteDivX, loopInfiniteDivY, loopInfiniteDivWidth, loopInfiniteDivHeight);
rect(fastForwardDivX, fastForwardDivY, fastForwardDivWidth, fastForwardDivHeight);
rect(nextDivX, nextDivY, nextDivWidth, nextDivHeight);
rect(shuffleDivX, shuffleDivY, shuffleDivWidth, shuffleDivHeight);
rect(songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight);
rect(songPositionDivX, songPositionDivY, songPositionDivWidth, songPositionDivHeight);
rect(timeBarDivX, timeBarDivY, timeBarDivWidth, timeBarDivHeight);
rect(timeRemainingDivX, timeRemainingDivY, timeRemainingDivWidth, timeRemainingDivHeight);
rect(totalTimeDivX, totalTimeDivY, totalTimeDivWidth, totalTimeDivHeight);
//
