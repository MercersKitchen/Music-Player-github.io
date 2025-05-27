/* Purpose: Decreasing Lines of Code
 - Separating Declaration with commas
 - Sngle Line Initialization
 */
//Display
fullScreen();
//size(700, 500); //key varaibles: width & height
int appWidth = displayWidth;
int appHeight = displayHeight;
//
//Population
//rect(DIV) is a square to start, by design
int numberOfButtons = 13; //Half a button on either side as space, Center Button is Play
int widthOfButton = appWidth/numberOfButtons;
int beginningButtonSpace = widthOfButton;
int buttonY = appHeight*3/5;
//
float quitRandomSide = appHeight*1/20;
float quitX = appWidth - quitRandomSide;
float randomStartX, randomStartY, quitY;
randomStartX = randomStartY = quitY = 0;
float quitWidth, quitHeight, randomStartWidth, randomStartHeight;
quitWidth = quitHeight = randomStartWidth = randomStartHeight = quitRandomSide;
//
float songTitleDivX, imageDivX;
songTitleDivX = imageDivX = beginningButtonSpace;
float messageDIV_X = appWidth*1/2 + beginningButtonSpace*1/2;
float songTitleDivY, messageDIV_Y;
songTitleDivY = messageDIV_Y = appHeight*1.5/20;
float imageDivY = appHeight*4.5/20;
float songTitleDivWidth, imageDivWidth, messageDIV_Width;
songTitleDivWidth = imageDivWidth = messageDIV_Width = appWidth*1/2 - beginningButtonSpace*1.5;
float songTitleDivHeight = appHeight*1/10;
float imageDivHeight = appHeight*1.5/5; //1+1.5=2.5, half of the total height
float messageDIV_Height = appHeight*9/20;
//
float[] DivX = new float[numberOfButtons-2];
float DivY, DivWidth, DivHeight;
DivY = buttonY;
DivWidth = DivHeight = widthOfButton;
//
for ( int i=0; i<DivX.length; i++ ) {
  DivX[i] = beginningButtonSpace + widthOfButton*i;
}
//
//STOP BUTTON, #0
float stopButtonX = DivX[0] + DivWidth*1/4;
float stopButtonY = DivY + DivHeight*1/4;
float stopButtonWidth = widthOfButton*1/2;
float stopButtonHeight = widthOfButton*1/2;
//
//Mute Button, #1
//Note: population of MUTE could be based on first point
//rect() is easier than 4xline()
float muteTopPoint1X = DivX[1] + DivWidth*1/4 ;
float muteTopPoint1Y = DivY + DivHeight*1/4 ;
float muteTopPoint2X = muteTopPoint1X + DivWidth*1/2 ; //based on beginning of line
float muteTopPoint2Y = muteTopPoint1Y ;
float muteDownPoint1X = DivX[1] + DivWidth*3/4 ;
float muteDownPoint1Y = DivY + DivHeight*1/4 ;
float muteDownPoint2X = muteDownPoint1X; //based on beginning of line
float muteDownPoint2Y = DivY + DivHeight*3/4 ;
float muteBottomPoint1X = DivX[1] + DivWidth*3/4 ;
float muteBottomPoint1Y = DivY + DivHeight*3/4;
float muteBottomPoint2X = DivX[1] + DivWidth*1/4 ; //based on beginning of line
float muteBottomPoint2Y = DivY + DivHeight*3/4 ;
float muteUpPoint1X = DivX[1] + DivWidth*1/4;
float muteUpPoint1Y = DivY + DivHeight*3/4;
float muteUpPoint2X = muteUpPoint1X ; //based on beginning of line
float muteUpPoint2Y = DivY + DivHeight*1/4;
float muteCross1X1 = muteTopPoint1X;
float muteCross1Y1 = muteTopPoint1Y;
float muteCross1X2 = muteBottomPoint1X;
float muteCross1Y2 = muteBottomPoint1Y;
float muteCross2X1 = muteUpPoint1X;
float muteCross2Y1 = muteUpPoint1Y;
float muteCross2X2 = muteDownPoint1X;
float muteCross2Y2 = muteDownPoint1Y;
//
//Previous Button, #2
float prevX1 = DivX[2] + DivWidth*1/4 + DivWidth*1/2;
float prevY1 = DivY + DivHeight*1/4;
float prevX2 = prevX1 - DivWidth*1/4;
float prevY2 = prevY1 + DivHeight*1/4 ;
float prevX3 = prevX1 ;
float prevY3 = prevY2 + DivHeight*1/4;
float prevX = DivX[2] + DivWidth*1/2 - DivWidth*1/8 ;
float prevY = DivY + DivHeight*1/4 ;
float prevWidth = DivWidth*1/8 ;
float prevHeight = DivHeight*1/2 ;
//
//fast rewind button. #3
float fastRewindX1 = DivX[3] + DivWidth*1/4 + DivWidth*1/2;
float fastRewindY1 = DivY + DivHeight*1/4 ;
float fastRewindX2 = fastRewindX1 - DivWidth*1/4 ;
float fastRewindY2 = fastRewindY1 + DivHeight*1/4 ;
float fastRewindX3 = fastRewindX1 ;
float fastRewindY3 = fastRewindY2 + DivHeight*1/4;
float fastRewindX4 = fastRewindX2 ;
float fastRewindY4 = fastRewindY1 ;
float fastRewindX5 = fastRewindX2 - DivWidth*1/4 ;
float fastRewindY5 = fastRewindY2 ;
float fastRewindX6 = fastRewindX2 ;
float fastRewindY6 = fastRewindY3 ;
//
//Pause Button, #4
float pauseX1 = DivX[4] + DivWidth*1/4;
float pauseY1 = DivY + DivHeight*1/4;
float pauseX2 = DivX[4] + DivWidth - DivWidth*1/4 - DivWidth*1/8; //Right Point Start
float pauseY2 = pauseY1;
float pauseWidth1 = DivWidth*1/8;
float pauseWidth2 = DivWidth*1/8;
float pauseHeight1 = DivHeight*1/2;
float pauseHeight2 = DivHeight*1/2;
//
//Play Button, #5
float playX1 = DivX[5] + DivWidth*1/4;
float playY1 = DivY + DivHeight*1/4;
float playX2 = playX1 + DivWidth*1/2;
float playY2 = playY1 + DivHeight*1/4;
float playX3 = playX1;
float playY3 = playY2 + DivHeight*1/4;
//
//loop once button, #6
//Note, this is a stop botton with a "one inside" & a triangle
//CAUTION: this needs text
float loopOnceX = DivX[6] + DivWidth*1/4 ;
float loopOnceY = DivY + DivHeight*1/4 ;
float loopOnceWidth = DivWidth*1/2;
float loopOnceHeight = DivHeight*1/2;
float cornerX = loopOnceX + loopOnceWidth;
float cornerY = loopOnceY;
float loopOnceX1 = cornerX - DivWidth*1/16 ;
float loopOnceY1 = cornerY - DivHeight*1/16 ;
float loopOnceX2 = cornerX + DivWidth*1/16 ;
float loopOnceY2 = cornerY ;
float loopOnceX3 = loopOnceX1 ;
float loopOnceY3 = cornerY + DivHeight*1/16 ;
//
//loop infinite button, #7
//Note: Loop infinite button is same as loop once, without text "1"
float loopInfiniteX = DivX[7] + DivWidth*1/4 ;
float loopInfiniteY = DivY + DivHeight*1/4 ;
float loopInfiniteWidth = DivWidth*1/2;
float loopInfiniteHeight = DivHeight*1/2;
cornerX = loopInfiniteX + loopInfiniteWidth ;
cornerY = loopInfiniteY ;
float loopInfiniteX1 = cornerX - DivWidth*1/16 ;
float loopInfiniteY1 = cornerY - DivHeight*1/16 ;
float loopInfiniteX2 = cornerX + DivWidth*1/16 ;
float loopInfiniteY2 = cornerY ;
float loopInfiniteX3 = loopInfiniteX1 ;
float loopInfiniteY3 = cornerY + DivHeight*1/16 ;
//
//Fast Forward Button, #8
float fastForwardX1 = DivX[8] + DivWidth*1/4;
float fastForwardY1 = DivY + DivHeight*1/4;
float fastForwardX2 = fastForwardX1 + DivWidth*1/4;
float fastForwardY2 = fastForwardY1 + DivHeight*1/4;
float fastForwardX3 = fastForwardX1 ;
float fastForwardY3 = fastForwardY2 + DivHeight*1/4;
float fastForwardX4 = fastForwardX2;
float fastForwardY4 = fastForwardY1;
float fastForwardX5 = fastForwardX4 + DivWidth*1/4;
float fastForwardY5 = fastForwardY2;
float fastForwardX6 = fastForwardX4;
float fastForwardY6 = fastForwardY3;
//
//Next Button, #9
float nextX1 = DivX[9] + DivWidth*1/4 + 0*DivWidth*1/2;
float nextY1 = DivY + DivHeight*1/4;
float nextX2 = nextX1 + DivWidth*1/4;
float nextY2 = nextY1 + DivHeight*1/4;
float nextX3 = nextX1 ;
float nextY3 = nextY2 + DivHeight*1/4;
float nextX = nextX2;
float nextY = nextY1;
float nextWidth = DivWidth*1/8;
float nextHeight = DivHeight*1/2;
//
//Shuffle Button, #10
float shuffleCross1X1 = DivX[10] + DivWidth*1/4;
float shuffleCross1Y1 = DivY + DivHeight*1/4;
float shuffleCross1X2 = DivX[10] + DivWidth*3/4;
float shuffleCross1Y2 = DivY + DivHeight*3/4;
float shuffleCross2X1 = DivX[10] + DivWidth*1/4;
float shuffleCross2Y1 = DivY + DivHeight*3/4;
float shuffleCross2X2 = DivX[10] + DivWidth*3/4;
float shuffleCross2Y2 = DivY + DivHeight*1/4;
float cornerX1 = shuffleCross2X2 ;
float cornerY1 = shuffleCross2Y2 ;
float shuffleTriX1 = cornerX1;
float shuffleTriY1 = cornerY1 - DivHeight*1/16;
float shuffleTriX2 = cornerX1;
float shuffleTriY2 = cornerY1 + DivHeight*1/16;
float shuffleTriX3 = cornerX1 + DivWidth*1/16;
float shuffleTriY3 = cornerY1;
float cornerX2 = shuffleCross1X2 ;
float cornerY2 = shuffleCross1Y2 ;
float shuffleTriX4 = cornerX2;
float shuffleTriY4 = cornerY2 - DivHeight*1/16;
float shuffleTriX5 = cornerX2;
float shuffleTriY5 = cornerY2 + DivHeight*1/16;
float shuffleTriX6 = cornerX2 + DivWidth*1/16;
float shuffleTriY6 = cornerY2;
//
float musicSongPaddingY = widthOfButton*1/4;
float musicSongSpaceX = DivX[0];
float musicSongSpaceY = DivY + widthOfButton + musicSongPaddingY;
float musicSongSpaceWidth = appWidth - widthOfButton*2;
float musicSongSpaceHeight = appHeight - musicSongPaddingY - musicSongSpaceY;
//rect(musicSongSpaceX, musicSongSpaceY, musicSongSpaceWidth, musicSongSpaceHeight); //testing only
float songPositionDivX = musicSongSpaceX;
float songPositionDivY = musicSongSpaceY;
float songPositionDivWidth = musicSongSpaceWidth*1/5;
float songPositionDivHeight = musicSongSpaceHeight*2/5;
float timeRemainingDivX = musicSongSpaceX + musicSongSpaceWidth*3/5;
float timeRemainingDivY = musicSongSpaceY + musicSongSpaceHeight*3/5;
float timeRemainingDivWidth = musicSongSpaceWidth*1/5;
float timeRemainingDivHeight = musicSongSpaceHeight*2/5;
float totalTimeDivX = musicSongSpaceX + musicSongSpaceWidth*4/5;
float totalTimeDivY = musicSongSpaceY + musicSongSpaceHeight*3/5;
float totalTimeDivWidth = musicSongSpaceWidth*1/5;
float totalTimeDivHeight = musicSongSpaceHeight*2/5;
float musicSongSpaceButtonHeight = musicSongSpaceHeight*1/5;
float timeBarDivX = musicSongSpaceX;
float timeBarDivY = musicSongSpaceY + musicSongSpaceHeight*2/5;
float timeBarDivWidth = musicSongSpaceWidth;
float timeBarDivHeight = musicSongSpaceHeight*1/5;
//
//DIVs: rect(X, Y Width, Height);
//DIVs
//rect(X, Y, Width, Height)
rect(randomStartX, randomStartY, randomStartWidth, randomStartHeight);
rect(quitX, quitY, quitWidth, quitHeight);
rect(imageDivX, imageDivY, imageDivWidth, imageDivHeight);
rect(messageDIV_X, messageDIV_Y, messageDIV_Width, messageDIV_Height);
for ( int i=0; i<DivX.length; i++ ) {
  rect(DivX[i], DivY, DivWidth, DivHeight);
}
rect(songPositionDivX, songPositionDivY, songPositionDivWidth, songPositionDivHeight);
rect(songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight);
rect(timeBarDivX, timeBarDivY, timeBarDivWidth, timeBarDivHeight);
rect(timeRemainingDivX, timeRemainingDivY, timeRemainingDivWidth, timeRemainingDivHeight);
rect(totalTimeDivX, totalTimeDivY, totalTimeDivWidth, totalTimeDivHeight);
//
//rect(timeBarDivX, timeBarDivY, timeBarDivWidth, timeBarDivHeight);
//
rect(stopButtonX, stopButtonY, stopButtonWidth, stopButtonHeight);
line(muteTopPoint1X, muteTopPoint1Y, muteTopPoint2X, muteTopPoint2Y);
line(muteDownPoint1X, muteDownPoint1Y, muteDownPoint2X, muteDownPoint2Y);
line(muteBottomPoint1X, muteBottomPoint1Y, muteBottomPoint2X, muteBottomPoint2Y);
line(muteUpPoint1X, muteUpPoint1Y, muteUpPoint2X, muteUpPoint2Y);
line(muteCross1X1, muteCross1Y1, muteCross1X2, muteCross1Y2);
line(muteCross2X1, muteCross2Y1, muteCross2X2, muteCross2Y2);
rect(prevX, prevY, prevWidth, prevHeight);
triangle(prevX1, prevY1, prevX2, prevY2, prevX3, prevY3);
triangle(fastRewindX1, fastRewindY1, fastRewindX2, fastRewindY2, fastRewindX3, fastRewindY3);
triangle(fastRewindX4, fastRewindY4, fastRewindX5, fastRewindY5, fastRewindX6, fastRewindY6);
triangle(playX1, playY1, playX2, playY2, playX3, playY3);
rect(pauseX1, pauseY1, pauseWidth1, pauseHeight1);
rect(pauseX2, pauseY2, pauseWidth2, pauseHeight2);
triangle(fastForwardX1, fastForwardY1, fastForwardX2, fastForwardY2, fastForwardX3, fastForwardY3);
triangle(fastForwardX4, fastForwardY4, fastForwardX5, fastForwardY5, fastForwardX6, fastForwardY6);
rect(loopOnceX, loopOnceY, loopOnceWidth, loopOnceHeight);
triangle(loopOnceX1, loopOnceY1, loopOnceX2, loopOnceY2, loopOnceX3, loopOnceY3);
//Note: Loop infinite button is same as loop once, without text "1"
rect(loopInfiniteX, loopInfiniteY, loopInfiniteWidth, loopInfiniteHeight);
triangle(loopInfiniteX1, loopInfiniteY1, loopInfiniteX2, loopInfiniteY2, loopInfiniteX3, loopInfiniteY3);
triangle(nextX1, nextY1, nextX2, nextY2, nextX3, nextY3);
rect(nextX, nextY, nextWidth, nextHeight);
line(shuffleCross1X1, shuffleCross1Y1, shuffleCross1X2, shuffleCross1Y2);
line(shuffleCross2X1, shuffleCross2Y1, shuffleCross2X2, shuffleCross2Y2);
triangle(shuffleTriX1, shuffleTriY1, shuffleTriX2, shuffleTriY2, shuffleTriX3, shuffleTriY3);
triangle(shuffleTriX4, shuffleTriY4, shuffleTriX5, shuffleTriY5, shuffleTriX6, shuffleTriY6);
//
