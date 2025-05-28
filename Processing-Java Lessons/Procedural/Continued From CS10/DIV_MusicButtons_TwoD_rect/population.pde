/* DIVs used for draw() & mousePressed()
 - Smaller Procedures first | Procedures referencing rest of subprogram
 - Buttons are Square by Design
 - 2D Shape DIV Data: Hoverover, mousePressed
 - Shuffle Start DIV Data: Text and 2D Shuffle Shape
 - Quit Button Image Background Data (Red Colour)
 
 - about to send an int and return a float without issue since decimal is added
 
 - keep global variables to a minimum
 
 */
//
//Global Variables
float[] musicButtonDivX;
float musicButtonDivY, musicButtonDivWidth, musicButtonDivHeight;
int widthOfButton;
//
void divs() {
  //Note: must populate before this procedure
  //
  //DIVs: rect(X, Y Width, Height);
  for ( int i=0; i<musicButtonDivX.length; i++ ) {
    rect(musicButtonDivX[i], musicButtonDivY, musicButtonDivWidth, musicButtonDivHeight);
  }
} //End DIVs
//
void divButtonPopulation() {
  //REMOVE When Possible
} //End DIV Button Population
//
void population() {
  //
  divButtonPopulation(); //No
  //
  int numberOfButtons = 13; //Half a button on either side as space, Center Button is Play
  widthOfButton = appWidth/numberOfButtons;
  int beginningButtonSpace = widthOfButton;
  int buttonY = appHeight*3/5;
  //
  //
  float quitRandomSide = oneTwentyth(appHeight);
  float quitX = appWidth - quitRandomSide;
  float randomStartX, randomStartY, quitY;
  randomStartX = randomStartY = quitY = 0;
  float quitWidth, quitHeight, randomStartWidth, randomStartHeight;
  quitWidth = quitHeight = randomStartWidth = randomStartHeight = quitRandomSide;
  //
  float songTitleDivX, imageDivX;
  songTitleDivX = imageDivX = beginningButtonSpace;
  float messageDIV_X = oneHalf(appWidth) + oneHalf(beginningButtonSpace);
  float songTitleDivY, messageDIV_Y;
  songTitleDivY = messageDIV_Y = appHeight*1.5/20;
  float imageDivY = appHeight*4.5/20;
  float songTitleDivWidth, imageDivWidth, messageDIV_Width;
  songTitleDivWidth = imageDivWidth = messageDIV_Width = oneHalf(appWidth) - beginningButtonSpace*1.5;
  float songTitleDivHeight = appHeight*1/10;
  float imageDivHeight = appHeight*1.5/5; //1+1.5=2.5, half of the total height
  float messageDIV_Height = appHeight*9/20;
  //
  musicButtonDivX = new float[numberOfButtons-2];
  musicButton = new float[4+4*numberOfButtons-2];

  musicButtonDivY = buttonY;
  musicButtonDivWidth = musicButtonDivHeight = widthOfButton;
  //
  for ( int i=0; i<musicButtonDivX.length; i++ ) {
    musicButtonDivX[i] = beginningButtonSpace + widthOfButton*i;
    //musicButton[i]=0.0;
  }
  //
  stopShape();
  muteShape();
  //
  //Previous Button, #2
  previousShape();
  /*
  float prevX1 = musicButtonDivX[2] + musicButtonDivWidth*1/4 + musicButtonDivWidth*1/2;
  float prevY1 = musicButtonDivY + musicButtonDivHeight*1/4;
  float prevX2 = prevX1 - musicButtonDivWidth*1/4;
  float prevY2 = prevY1 + musicButtonDivHeight*1/4 ;
  float prevX3 = prevX1 ;
  float prevY3 = prevY2 + musicButtonDivHeight*1/4;
  float prevX = musicButtonDivX[2] + musicButtonDivWidth*1/2 - musicButtonDivWidth*1/8 ;
  float prevY = musicButtonDivY + musicButtonDivHeight*1/4 ;
  float prevWidth = musicButtonDivWidth*1/8 ;
  float prevHeight = musicButtonDivHeight*1/2 ;
  */
  //
  //fast rewind button. #3
  fastRewind();
  /*
  float fastRewindX1 = musicButtonDivX[3] + musicButtonDivWidth*1/4 + musicButtonDivWidth*1/2;
  float fastRewindY1 = musicButtonDivY + musicButtonDivHeight*1/4 ;
  float fastRewindX2 = fastRewindX1 - musicButtonDivWidth*1/4 ;
  float fastRewindY2 = fastRewindY1 + musicButtonDivHeight*1/4 ;
  float fastRewindX3 = fastRewindX1 ;
  float fastRewindY3 = fastRewindY2 + musicButtonDivHeight*1/4;
  float fastRewindX4 = fastRewindX2 ;
  float fastRewindY4 = fastRewindY1 ;
  float fastRewindX5 = fastRewindX2 - musicButtonDivWidth*1/4 ;
  float fastRewindY5 = fastRewindY2 ;
  float fastRewindX6 = fastRewindX2 ;
  float fastRewindY6 = fastRewindY3 ;
  */
  //
  //Pause Button, #4
  pauseShape();
  /*
  float pauseX1 = musicButtonDivX[4] + musicButtonDivWidth*1/4;
  float pauseY1 = musicButtonDivY + musicButtonDivHeight*1/4;
  float pauseX2 = musicButtonDivX[4] + musicButtonDivWidth - musicButtonDivWidth*1/4 - musicButtonDivWidth*1/8; //Right Point Start
  float pauseY2 = pauseY1;
  float pauseWidth1 = musicButtonDivWidth*1/8;
  float pauseWidth2 = musicButtonDivWidth*1/8;
  float pauseHeight1 = musicButtonDivHeight*1/2;
  float pauseHeight2 = musicButtonDivHeight*1/2;
  */
  //
  //Play Button, #5
  playShape();
  /*
  float playX1 = musicButtonDivX[5] + musicButtonDivWidth*1/4;
  float playY1 = musicButtonDivY + musicButtonDivHeight*1/4;
  float playX2 = playX1 + musicButtonDivWidth*1/2;
  float playY2 = playY1 + musicButtonDivHeight*1/4;
  float playX3 = playX1;
  float playY3 = playY2 + musicButtonDivHeight*1/4;
  */
  //
  //loop once button, #6
  //Note, this is a stop botton with a "one inside" & a triangle
  //CAUTION: this needs text
  float loopOnceX = musicButtonDivX[6] + musicButtonDivWidth*1/4 ;
  float loopOnceY = musicButtonDivY + musicButtonDivHeight*1/4 ;
  float loopOnceWidth = musicButtonDivWidth*1/2;
  float loopOnceHeight = musicButtonDivHeight*1/2;
  float cornerX = loopOnceX + loopOnceWidth;
  float cornerY = loopOnceY;
  float loopOnceX1 = cornerX - musicButtonDivWidth*1/16 ;
  float loopOnceY1 = cornerY - musicButtonDivHeight*1/16 ;
  float loopOnceX2 = cornerX + musicButtonDivWidth*1/16 ;
  float loopOnceY2 = cornerY ;
  float loopOnceX3 = loopOnceX1 ;
  float loopOnceY3 = cornerY + musicButtonDivHeight*1/16 ;
  //
  //loop infinite button, #7
  //Note: Loop infinite button is same as loop once, without text "1"
  float loopInfiniteX = musicButtonDivX[7] + musicButtonDivWidth*1/4 ;
  float loopInfiniteY = musicButtonDivY + musicButtonDivHeight*1/4 ;
  float loopInfiniteWidth = musicButtonDivWidth*1/2;
  float loopInfiniteHeight = musicButtonDivHeight*1/2;
  cornerX = loopInfiniteX + loopInfiniteWidth ;
  cornerY = loopInfiniteY ;
  float loopInfiniteX1 = cornerX - musicButtonDivWidth*1/16 ;
  float loopInfiniteY1 = cornerY - musicButtonDivHeight*1/16 ;
  float loopInfiniteX2 = cornerX + musicButtonDivWidth*1/16 ;
  float loopInfiniteY2 = cornerY ;
  float loopInfiniteX3 = loopInfiniteX1 ;
  float loopInfiniteY3 = cornerY + musicButtonDivHeight*1/16 ;
  //
  //Fast Forward Button, #8
  float fastForwardX1 = musicButtonDivX[8] + musicButtonDivWidth*1/4;
  float fastForwardY1 = musicButtonDivY + musicButtonDivHeight*1/4;
  float fastForwardX2 = fastForwardX1 + musicButtonDivWidth*1/4;
  float fastForwardY2 = fastForwardY1 + musicButtonDivHeight*1/4;
  float fastForwardX3 = fastForwardX1 ;
  float fastForwardY3 = fastForwardY2 + musicButtonDivHeight*1/4;
  float fastForwardX4 = fastForwardX2;
  float fastForwardY4 = fastForwardY1;
  float fastForwardX5 = fastForwardX4 + musicButtonDivWidth*1/4;
  float fastForwardY5 = fastForwardY2;
  float fastForwardX6 = fastForwardX4;
  float fastForwardY6 = fastForwardY3;
  //
  //Next Button, #9
  float nextX1 = musicButtonDivX[9] + musicButtonDivWidth*1/4 + 0*musicButtonDivWidth*1/2;
  float nextY1 = musicButtonDivY + musicButtonDivHeight*1/4;
  float nextX2 = nextX1 + musicButtonDivWidth*1/4;
  float nextY2 = nextY1 + musicButtonDivHeight*1/4;
  float nextX3 = nextX1 ;
  float nextY3 = nextY2 + musicButtonDivHeight*1/4;
  float nextX = nextX2;
  float nextY = nextY1;
  float nextWidth = musicButtonDivWidth*1/8;
  float nextHeight = musicButtonDivHeight*1/2;
  //
  //Shuffle Button, #10
  float shuffleCross1X1 = musicButtonDivX[10] + musicButtonDivWidth*1/4;
  float shuffleCross1Y1 = musicButtonDivY + musicButtonDivHeight*1/4;
  float shuffleCross1X2 = musicButtonDivX[10] + musicButtonDivWidth*3/4;
  float shuffleCross1Y2 = musicButtonDivY + musicButtonDivHeight*3/4;
  float shuffleCross2X1 = musicButtonDivX[10] + musicButtonDivWidth*1/4;
  float shuffleCross2Y1 = musicButtonDivY + musicButtonDivHeight*3/4;
  float shuffleCross2X2 = musicButtonDivX[10] + musicButtonDivWidth*3/4;
  float shuffleCross2Y2 = musicButtonDivY + musicButtonDivHeight*1/4;
  float cornerX1 = shuffleCross2X2 ;
  float cornerY1 = shuffleCross2Y2 ;
  float shuffleTriX1 = cornerX1;
  float shuffleTriY1 = cornerY1 - musicButtonDivHeight*1/16;
  float shuffleTriX2 = cornerX1;
  float shuffleTriY2 = cornerY1 + musicButtonDivHeight*1/16;
  float shuffleTriX3 = cornerX1 + musicButtonDivWidth*1/16;
  float shuffleTriY3 = cornerY1;
  float cornerX2 = shuffleCross1X2 ;
  float cornerY2 = shuffleCross1Y2 ;
  float shuffleTriX4 = cornerX2;
  float shuffleTriY4 = cornerY2 - musicButtonDivHeight*1/16;
  float shuffleTriX5 = cornerX2;
  float shuffleTriY5 = cornerY2 + musicButtonDivHeight*1/16;
  float shuffleTriX6 = cornerX2 + musicButtonDivWidth*1/16;
  float shuffleTriY6 = cornerY2;
  //
  float musicSongPaddingY = widthOfButton*1/4;
  float musicSongSpaceX = musicButtonDivX[0];
  float musicSongSpaceY = musicButtonDivY + widthOfButton + musicSongPaddingY;
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
  //
  //
  //REMOVE After Data Strucutre Complete
  divs();
  //
  //
  //
  rect(songPositionDivX, songPositionDivY, songPositionDivWidth, songPositionDivHeight);
  rect(songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight);
  rect(timeBarDivX, timeBarDivY, timeBarDivWidth, timeBarDivHeight);
  rect(timeRemainingDivX, timeRemainingDivY, timeRemainingDivWidth, timeRemainingDivHeight);
  rect(totalTimeDivX, totalTimeDivY, totalTimeDivWidth, totalTimeDivHeight);
  //
  //rect(timeBarDivX, timeBarDivY, timeBarDivWidth, timeBarDivHeight);
  //
  //Music Buttons
  rect(musicButton[0], musicButton[1], musicButton[2], musicButton[3]); //STOP 4
  rect(musicButton[4], musicButton[5], musicButton[6], musicButton[7]); //MUTE 12
  line(musicButton[8], musicButton[9], musicButton[10], musicButton[11]);
  line(musicButton[12], musicButton[13], musicButton[14], musicButton[15]);
  
  triangle(musicButton[16], musicButton[17], musicButton[18], musicButton[19], musicButton[20], musicButton[21]);//Previous
  rect(musicButton[22], musicButton[23], musicButton[24], musicButton[25]); 
  
  triangle(musicButton[26], musicButton[27], musicButton[28], musicButton[29], musicButton[30], musicButton[31]); //Fast Reverse
  triangle(musicButton[32], musicButton[33], musicButton[34], musicButton[35], musicButton[36], musicButton[37]);
  
  rect(musicButton[38], musicButton[39], musicButton[40], musicButton[41]); //Pause
  rect(musicButton[42], musicButton[43], musicButton[44], musicButton[45]);
  
  triangle(musicButton[46], musicButton[47], musicButton[48], musicButton[49], musicButton[50], musicButton[51]); //Play
  
  
  
  
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
} //End Population
