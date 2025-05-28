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
  musicButton = new float[10*numberOfButtons-12]; //

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
  //
  //fast rewind button. #3
  fastRewind();
  //
  //Pause Button, #4
  pauseShape();
  //
  //Play Button, #5
  playShape();
  //
  //loop once button, #6
  loopOnceShape();
  //CAUTION: this needs text
  //
  //loop infinite button, #7
  loopInfiniteShape();
  //
  //Fast Forward Button, #8
  fastForwardShape();
  //
  //Next Button, #9
  nextShape();
  //
  //Shuffle Button, #10
  shuffleShape();
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
  
  //Note: Loop infinite button is same as loop once, without text "1"
  rect(musicButton[52], musicButton[53], musicButton[54], musicButton[55]); //Loop Once
  triangle(musicButton[56], musicButton[57], musicButton[58], musicButton[59], musicButton[60], musicButton[61]);
  
  rect(musicButton[62], musicButton[63], musicButton[64], musicButton[65]); //Loop Infinite
  triangle(musicButton[66], musicButton[67], musicButton[68], musicButton[69], musicButton[70], musicButton[71]);
  
  triangle(musicButton[72], musicButton[73], musicButton[74], musicButton[75], musicButton[76], musicButton[77]); //FF
  triangle(musicButton[78], musicButton[79], musicButton[80], musicButton[81], musicButton[82], musicButton[83]);
  
  triangle(musicButton[84], musicButton[85], musicButton[86], musicButton[87], musicButton[88], musicButton[89]); //Next
  rect(musicButton[90], musicButton[91], musicButton[92], musicButton[93]);
  
  line(musicButton[98], musicButton[99], musicButton[100], musicButton[101]); //Shuffle Button
  line(musicButton[102], musicButton[103], musicButton[104], musicButton[105]);
  triangle(musicButton[106], musicButton[107], musicButton[108], musicButton[109], musicButton[110], musicButton[111]);
  triangle(musicButton[112], musicButton[113], musicButton[114], musicButton[115], musicButton[116], musicButton[117]);
  //triangle(musicButton[112], musicButton[113], musicButton[114], musicButton[115], musicButton[116], musicButton[117]);
  //
} //End Population
