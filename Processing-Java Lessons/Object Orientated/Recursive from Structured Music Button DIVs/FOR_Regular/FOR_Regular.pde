// Display
size(700, 500); //width //height //repeats teaching display, landscape
//fullScreen();
int appWidth = width;
int appHeight = height;
//int shortSide = ( appWidth <= appHeight ) ? appWidth : appHeight ; //may cause design issues, how
//
//Pattern with Y, Width, and Height must be executed before X-Variable
int numberOfButtons = 13; //One button on either side as space, Center Button is Play
float musicButtonDivSquare = appWidth/numberOfButtons;
float beginningButtonSpace = musicButtonDivSquare;
float musicButtonDivY = appHeight*3/5; //Close approximation of total, slightly bigger space than randomStartQuitSide to separate DIVs
//int randomStartQuitSide = shortSide*1/20;
//
float[] musicButtonDivX = new float[numberOfButtons-2];
//
for (int i=0; i<numberOfButtons-2; i++) { // Note: < is same as <= -1 //logics of human counting v. computer counting
  musicButtonDivX[i] = beginningButtonSpace + musicButtonDivSquare*i;
  square(musicButtonDivX[i], musicButtonDivY, musicButtonDivSquare);
}
printArray(musicButtonDivX);
