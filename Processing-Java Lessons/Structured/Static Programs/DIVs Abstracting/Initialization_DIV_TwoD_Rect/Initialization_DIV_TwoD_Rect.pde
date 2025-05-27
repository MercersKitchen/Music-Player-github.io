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
float stopDivX = beginningButtonSpace + widthOfButton*0;
float stopDivY = buttonY;
float stopDivWidth = widthOfButton;
float stopDivHeight = widthOfButton;
//
float muteDivX = beginningButtonSpace + widthOfButton*1;
float muteDivY = buttonY;
float muteDivWidth = widthOfButton;
float muteDivHeight = widthOfButton;
//
float previousDivX = beginningButtonSpace + widthOfButton*2;
float previousDivY = buttonY;
float previousDivWidth = widthOfButton;
float previousDivHeight = widthOfButton;
//
float fastRewindDivX = beginningButtonSpace + widthOfButton*3;
float fastRewindDivY = buttonY;
float fastRewindDivWidth = widthOfButton;
float fastRewindDivHeight = widthOfButton;
//
float pauseDivX = beginningButtonSpace + widthOfButton*4;
float pauseDivY = buttonY;
float pauseDivWidth = widthOfButton;
float pauseDivHeight = widthOfButton;
//
float playDivX = beginningButtonSpace + widthOfButton*5; //TEACHER Only" manipulate this number to draw simulate all buttons
float playDivY = buttonY;
float playDivWidth = widthOfButton;
float playDivHeight = widthOfButton;
//
float loopOnceDivX = beginningButtonSpace + widthOfButton*6;
float loopOnceDivY = buttonY;
float loopOnceDivWidth = widthOfButton;
float loopOnceDivHeight = widthOfButton;
//
float loopInfiniteDivX = beginningButtonSpace + widthOfButton*7;
float loopInfiniteDivY = buttonY;
float loopInfiniteDivWidth = widthOfButton;
float loopInfiniteDivHeight = widthOfButton;
//
float fastForwardDivX = beginningButtonSpace + widthOfButton*8;
float fastForwardDivY = buttonY;
float fastForwardDivWidth = widthOfButton;
float fastForwardDivHeight = widthOfButton;
//
float nextDivX = beginningButtonSpace + widthOfButton*9;
float nextDivY = buttonY;
float nextDivWidth = widthOfButton;
float nextDivHeight = widthOfButton;
//
float shuffleDivX = beginningButtonSpace + widthOfButton*10;
float shuffleDivY = buttonY;
float shuffleDivWidth = widthOfButton;
float shuffleDivHeight = widthOfButton;
//



//STOP BUTTON
float stopButtonX = stopDivX + stopDivWidth*1/4;
float stopButtonY = stopDivY + stopDivHeight*1/4;
float stopButtonWidth = widthOfButton*1/2;
float stopButtonHeight = widthOfButton*1/2;
//
//Mute Button
//Note: population of MUTE could be based on first point
//rect() is easier than 4xline()
float muteTopPoint1X = muteDivX + muteDivWidth*1/4 ;
float muteTopPoint1Y = muteDivY + muteDivHeight*1/4 ;
float muteTopPoint2X = muteTopPoint1X + muteDivWidth*1/2 ; //based on beginning of line
float muteTopPoint2Y = muteTopPoint1Y ;
float muteDownPoint1X = muteDivX + muteDivWidth*3/4 ;
float muteDownPoint1Y = muteDivY + muteDivHeight*1/4 ;
float muteDownPoint2X = muteDownPoint1X; //based on beginning of line
float muteDownPoint2Y = muteDivY + muteDivHeight*3/4 ;
float muteBottomPoint1X = muteDivX + muteDivWidth*3/4 ;
float muteBottomPoint1Y = muteDivY + muteDivHeight*3/4;
float muteBottomPoint2X = muteDivX + muteDivWidth*1/4 ; //based on beginning of line
float muteBottomPoint2Y = muteDivY + muteDivHeight*3/4 ;
float muteUpPoint1X = muteDivX + muteDivWidth*1/4;
float muteUpPoint1Y = muteDivY + muteDivHeight*3/4;
float muteUpPoint2X = muteUpPoint1X ; //based on beginning of line
float muteUpPoint2Y = muteDivY + muteDivHeight*1/4;
float muteCross1X1 = muteTopPoint1X;
float muteCross1Y1 = muteTopPoint1Y;
float muteCross1X2 = muteBottomPoint1X;
float muteCross1Y2 = muteBottomPoint1Y;
float muteCross2X1 = muteUpPoint1X;
float muteCross2Y1 = muteUpPoint1Y;
float muteCross2X2 = muteDownPoint1X;
float muteCross2Y2 = muteDownPoint1Y;
//
//Previous Button
float prevX1 = previousDivX + previousDivWidth*1/4 + previousDivWidth*1/2;
float prevY1 = previousDivY + previousDivHeight*1/4;
float prevX2 = prevX1 - previousDivWidth*1/4;
float prevY2 = prevY1 + previousDivHeight*1/4 ;
float prevX3 = prevX1 ;
float prevY3 = prevY2 + previousDivHeight*1/4;
float prevX = previousDivX + previousDivWidth*1/2 - previousDivWidth*1/8 ;
float prevY = previousDivY + previousDivHeight*1/4 ;
float prevWidth = previousDivWidth*1/8 ;
float prevHeight = previousDivHeight*1/2 ;
//
//fast rewind button
float fastRewindX1 = fastRewindDivX + fastRewindDivWidth*1/4 + fastRewindDivWidth*1/2;
float fastRewindY1 = fastRewindDivY + fastRewindDivHeight*1/4 ;
float fastRewindX2 = fastRewindX1 - fastRewindDivWidth*1/4 ;
float fastRewindY2 = fastRewindY1 + fastRewindDivHeight*1/4 ;
float fastRewindX3 = fastRewindX1 ;
float fastRewindY3 = fastRewindY2 + fastRewindDivHeight*1/4;
float fastRewindX4 = fastRewindX2 ;
float fastRewindY4 = fastRewindY1 ;
float fastRewindX5 = fastRewindX2 - fastRewindDivWidth*1/4 ;
float fastRewindY5 = fastRewindY2 ;
float fastRewindX6 = fastRewindX2 ;
float fastRewindY6 = fastRewindY3 ;
//
//Pause Button
float pauseX1 = pauseDivX + pauseDivWidth*1/4;
float pauseY1 = pauseDivY + pauseDivHeight*1/4;
float pauseX2 = pauseDivX + pauseDivWidth - pauseDivWidth*1/4 - pauseDivWidth*1/8; //Right Point Start
float pauseY2 = pauseY1;
float pauseWidth1 = pauseDivWidth*1/8;
float pauseWidth2 = pauseDivWidth*1/8;
float pauseHeight1 = pauseDivHeight*1/2;
float pauseHeight2 = pauseDivHeight*1/2;
//
//Play Button
float playX1 = playDivX + playDivWidth*1/4;
float playY1 = playDivY + playDivHeight*1/4;
float playX2 = playX1 + playDivWidth*1/2;
float playY2 = playY1 + playDivHeight*1/4;
float playX3 = playX1;
float playY3 = playY2 + playDivHeight*1/4;
//
//loop once button
//Note, this is a stop botton with a "one inside" & a triangle
//CAUTION: this needs text
float loopOnceX = loopOnceDivX + loopOnceDivWidth*1/4 ;
float loopOnceY = loopOnceDivY + loopOnceDivHeight*1/4 ;
float loopOnceWidth = loopOnceDivWidth*1/2;
float loopOnceHeight = loopOnceDivHeight*1/2;
float cornerX = loopOnceX + loopOnceWidth;
float cornerY = loopOnceY;
float loopOnceX1 = cornerX - loopOnceDivWidth*1/16 ;
float loopOnceY1 = cornerY - loopOnceDivHeight*1/16 ;
float loopOnceX2 = cornerX + loopOnceDivWidth*1/16 ;
float loopOnceY2 = cornerY ;
float loopOnceX3 = loopOnceX1 ;
float loopOnceY3 = cornerY + loopOnceDivHeight*1/16 ;
//
//loop infinite button
//Note: Loop infinite button is same as loop once, without text "1"
float loopInfiniteX = loopInfiniteDivX + loopInfiniteDivWidth*1/4 ;
float loopInfiniteY = loopInfiniteDivY + loopInfiniteDivHeight*1/4 ;
float loopInfiniteWidth = loopInfiniteDivWidth*1/2;
float loopInfiniteHeight = loopInfiniteDivHeight*1/2;
cornerX = loopInfiniteX + loopInfiniteWidth ;
cornerY = loopInfiniteY ;
float loopInfiniteX1 = cornerX - loopInfiniteDivWidth*1/16 ;
float loopInfiniteY1 = cornerY - loopInfiniteDivHeight*1/16 ;
float loopInfiniteX2 = cornerX + loopInfiniteDivWidth*1/16 ;
float loopInfiniteY2 = cornerY ;
float loopInfiniteX3 = loopInfiniteX1 ;
float loopInfiniteY3 = cornerY + loopInfiniteDivHeight*1/16 ;
//
//Fast Forward Button
float fastForwardX1 = fastForwardDivX + fastForwardDivWidth*1/4;
float fastForwardY1 = fastForwardDivY + fastForwardDivHeight*1/4;
float fastForwardX2 = fastForwardDivX + fastForwardDivWidth*1/2;
float fastForwardY2 = fastForwardDivY + fastForwardDivHeight*1/2;
float fastForwardX3 = fastForwardDivX + fastForwardDivWidth*1/4;
float fastForwardY3 = fastForwardDivY + fastForwardDivHeight*3/4;
float fastForwardX4 = fastForwardDivX + fastForwardDivWidth*1/2;
float fastForwardY4 = fastForwardDivY + fastForwardDivHeight*1/4;
float fastForwardX5 = fastForwardDivX + fastForwardDivWidth*3/4;
float fastForwardY5 = fastForwardDivY + fastForwardDivHeight*1/2;
float fastForwardX6 = fastForwardDivX + fastForwardDivWidth*1/2;
float fastForwardY6 = fastForwardDivY + fastForwardDivHeight*3/4;
//
//Next Button
float nextX1 = nextDivX + nextDivWidth*1/4 + 0*nextDivWidth*1/2;
float nextY1 = nextDivY + nextDivHeight*1/4;
float nextX2 = nextX1 + nextDivWidth*1/4;
float nextY2 = nextY1 + nextDivHeight*1/4;
float nextX3 = nextX1 ;
float nextY3 = nextY2 + nextDivHeight*1/4;
float nextX = nextX2;
float nextY = nextY1;
float nextWidth = nextDivWidth*1/8;
float nextHeight = nextDivHeight*1/2;
//
//Shuffle Button
float shuffleCross1X1 = shuffleDivX + shuffleDivWidth*1/4;
float shuffleCross1Y1 = shuffleDivY + shuffleDivHeight*1/4;
float shuffleCross1X2 = shuffleDivX + shuffleDivWidth*3/4;
float shuffleCross1Y2 = shuffleDivY + shuffleDivHeight*3/4;
float shuffleCross2X1 = shuffleDivX + shuffleDivWidth*1/4;
float shuffleCross2Y1 = shuffleDivY + shuffleDivHeight*3/4;
float shuffleCross2X2 = shuffleDivX + shuffleDivWidth*3/4;
float shuffleCross2Y2 = shuffleDivY + shuffleDivHeight*1/4;
float cornerX1 = shuffleCross2X2 ;
float cornerY1 = shuffleCross2Y2 ;
float shuffleTriX1 = cornerX1;
float shuffleTriY1 = cornerY1 - shuffleDivHeight*1/16;
float shuffleTriX2 = cornerX1;
float shuffleTriY2 = cornerY1 + shuffleDivHeight*1/16;
float shuffleTriX3 = cornerX1 + shuffleDivWidth*1/16;
float shuffleTriY3 = cornerY1;
float cornerX2 = shuffleCross1X2 ;
float cornerY2 = shuffleCross1Y2 ;
float shuffleTriX4 = cornerX2;
float shuffleTriY4 = cornerY2 - shuffleDivHeight*1/16;
float shuffleTriX5 = cornerX2;
float shuffleTriY5 = cornerY2 + shuffleDivHeight*1/16;
float shuffleTriX6 = cornerX2 + shuffleDivWidth*1/16;
float shuffleTriY6 = cornerY2;
//
float musicSongPaddingY = widthOfButton*1/4;
float musicSongSpaceX = stopDivX;
float musicSongSpaceY = stopDivY + widthOfButton + musicSongPaddingY;
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
