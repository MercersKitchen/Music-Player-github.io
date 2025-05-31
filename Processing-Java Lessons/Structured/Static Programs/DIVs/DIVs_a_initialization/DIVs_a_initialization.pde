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
//size(700, 500);  //width //height //repeats teaching display, landscape
fullScreen();
int appWidth = displayWidth;
int appHeight = displayHeight;
int shortSide = ( appWidth <= appHeight ) ? appWidth : appHeight ; //may cause design issues, how
//
//Population
quitX = appWidth - shortSide*1/20;
quitWidth = quitHeight = shortSide*1/20;
quitY = randomStartX = randomStartY = 0;
randomStartWidth = randomStartHeight = shortSide*1/20;
imageDivX = songTitleDivX = appWidth*1/4;
imageDivY = appHeight*1/5;
imageDivWidth = appWidth*1/2;
imageDivHeight = appHeight*1.5/5; //1+1.5=2.5, half of the total height
songTitleDivY = appHeight*1/20;
songTitleDivWidth = appWidth*1/2;
songTitleDivHeight = appHeight*1/10;
//
int numberOfButtons = 13; //One button on either side as space, Center Button is Play
int widthOfButton = appWidth/numberOfButtons;
int beginningButtonSpace = widthOfButton;
int buttonY = appHeight*3/5;
//
//Pattern with X-parameters of rect()
stopDivX = beginningButtonSpace + widthOfButton*0;
muteDivX = beginningButtonSpace + widthOfButton*1;
previousDivX = beginningButtonSpace + widthOfButton*2;
fastRewindDivX = beginningButtonSpace + widthOfButton*3;
pauseDivX = beginningButtonSpace + widthOfButton*4;
playDivX = beginningButtonSpace + widthOfButton*5;
loopOnceDivX = beginningButtonSpace + widthOfButton*6;
loopInfiniteDivX = beginningButtonSpace + widthOfButton*7;
fastForwardDivX = beginningButtonSpace + widthOfButton*8;
nextDivX = beginningButtonSpace + widthOfButton*9;
shuffleDivX = beginningButtonSpace + widthOfButton*10;
//
//Pattern with Y, Width, and Height
stopDivY = buttonY;
stopDivWidth = stopDivHeight = widthOfButton;
muteDivY = buttonY;
muteDivWidth = muteDivHeight = widthOfButton;
previousDivY = buttonY;
previousDivWidth = previousDivHeight = widthOfButton;
fastRewindDivY = buttonY;
fastRewindDivWidth = fastRewindDivHeight = widthOfButton;
pauseDivY = buttonY;
pauseDivWidth = pauseDivHeight = widthOfButton;
playDivY = buttonY;
playDivWidth = playDivHeight = widthOfButton;
loopOnceDivY = buttonY;
loopOnceDivWidth = loopOnceDivHeight = widthOfButton;
loopInfiniteDivY = buttonY;
loopInfiniteDivWidth = loopInfiniteDivHeight = widthOfButton;
fastForwardDivY = buttonY;
fastForwardDivWidth = fastForwardDivHeight = widthOfButton;
nextDivY = buttonY;
nextDivWidth = nextDivHeight = widthOfButton;
shuffleDivY = buttonY;
shuffleDivWidth = shuffleDivHeight = widthOfButton;
//
float musicSongPaddingY = widthOfButton*1/4;
float musicSongSpaceX = stopDivX;
float musicSongSpaceY = stopDivY + widthOfButton + musicSongPaddingY;
float musicSongSpaceWidth = appWidth - widthOfButton*2;
float musicSongSpaceHeight = appHeight - musicSongPaddingY - musicSongSpaceY;
//rect(musicSongSpaceX, musicSongSpaceY, musicSongSpaceWidth, musicSongSpaceHeight); //testing only
//
// Pattern of repeating with operations, variables are not patterned
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
