/* Purpose: draw a rectangle with data structure and procedures
 */
//Library - Minim
//
//Global Variables
float[] musicProgramButtonDiv; //Random Start & Quit
float[] songVarDependantDiv; //Song Title, Image, Song Position, Time Bar, Time Remaining, and Total Time of the Song
float[] musicButtonDivX; //All Music Playback Features
float musicButtonDivY, musicButtonDivSquare;
//
void setup() {
  // Display
  //size(700, 500); //width //height //repeats teaching display, landscape
  fullScreen();
  int appWidth = displayWidth;
  int appHeight = displayHeight;
  int shortSide = ( appWidth <= appHeight ) ? appWidth : appHeight ; //may cause design issues, how
  //
  //Population
  musicProgramButtonDiv = new float[2*4]; //2x4-vars total in rect(), see Global Variables for Name Reference
  songVarDependantDiv = new float[6*4]; ////6*4-vars total in rect(), see Global Variables for Name Reference
  //
  for (int i=0; i<2; i++) {
    musicProgramButtonDiv[i] = 0; //0, 1
  }
  musicProgramButtonDiv[2] = musicProgramButtonDiv[3] = musicProgramButtonDiv[6] = musicProgramButtonDiv[7] = linear3Term(0, 0, 0, 0, 1, shortSide, 1, 20); 
  musicProgramButtonDiv[4] = linear3Term(0, 0, 1, appWidth, -1, shortSide, 1, 20);
  musicProgramButtonDiv[5] = musicProgramButtonDiv[1]; //recursive population
  //
  for (int i=0; i<5; i+=4) {
    songVarDependantDiv[i] = linear3Term(0, 0, 0, 0, 1, appWidth, 1, 4);
  }
  songVarDependantDiv[1] = linear3Term(0, 0, 0, 0, 1, appHeight, 1, 20);
  songVarDependantDiv[2] = songVarDependantDiv[6] = linear3Term(0, 0, 0, 0, 1, appWidth, 1, 2);
  songVarDependantDiv[3] = linear3Term(0, 0, 0, 0, 1, appHeight, 1, 10);
  songVarDependantDiv[5] = linear3Term(0, 0, 0, 0, 1, appHeight, 1, 5);
  songVarDependantDiv[7] = linear3Term(0, 0, 0, 0, 1, appHeight, 1.5, 5);
  //
  int numberOfButtons = 13; //One button on either side as space, Center Button is Play
  musicButtonDivSquare = linear3Term(0, 0, 0, 0, 1, 1, appWidth, numberOfButtons);
  float beginningButtonSpace = musicButtonDivSquare;
  musicButtonDivY = linear3Term(0, 0, 0, 0, 1, appHeight, 3, 5);
  musicButtonDivX = new float[numberOfButtons-2]; //One button for each side, button padding
  //
  for (int i=0; i<musicButtonDivX.length; i++) { // Note: < is same as <= -1 //logics of human counting v. computer counting
    musicButtonDivX[i] = beginningButtonSpace + musicButtonDivSquare*i;
  }
  //
  float musicSongPaddingY = linear3Term(0, 0, 0, 0, 1, musicButtonDivSquare, 1, 4);
  float musicSongSpaceY = linear3Term(1, musicButtonDivY, 1, musicButtonDivSquare, 1, musicSongPaddingY, 1, 1);
  float musicSongSpaceWidth = linear3Term(0, 0, 1, appWidth, -1, musicButtonDivSquare, 2, 1);
  float musicSongSpaceHeight = linear3Term(1, appHeight, -1, musicSongPaddingY, -1, musicSongSpaceY, 1, 1);
  //rect(musicSongSpaceX, musicSongSpaceY, musicSongSpaceWidth, musicSongSpaceHeight); //testing only
  //
  // Pattern of repeating with operations, variables are not patterned
  songVarDependantDiv[8] = songVarDependantDiv[12] = musicButtonDivX[0];
  songVarDependantDiv[9] = musicSongSpaceY;
  songVarDependantDiv[10] = songVarDependantDiv[18] = songVarDependantDiv[22] = linear3Term(0, 0, 0, 0, 1, musicSongSpaceWidth, 1, 5);
  songVarDependantDiv[11] = songVarDependantDiv[19] = songVarDependantDiv[23] = linear3Term(0, 0, 0, 0, 1, musicSongSpaceHeight, 2, 5);
  songVarDependantDiv[13] = linear3Term(0, 0, 1, musicSongSpaceY, 1, musicSongSpaceHeight, 2, 5);
  songVarDependantDiv[14] = musicSongSpaceWidth;
  songVarDependantDiv[15] = linear3Term(0, 0, 0, 0, 1, musicSongSpaceHeight, 1, 5);
  songVarDependantDiv[16] = linear3Term(0, 0, 1, musicButtonDivX[0], 1, musicSongSpaceWidth, 3, 5);
  songVarDependantDiv[17] = linear3Term(0, 0, 1, musicSongSpaceY, 1, musicSongSpaceHeight, 3, 5);
  songVarDependantDiv[20] = linear3Term(0, 0, 1, songVarDependantDiv[16], 1, musicSongSpaceWidth, 1, 5);
  songVarDependantDiv[21] = linear3Term(0, 0, 1, musicSongSpaceY, 1, musicSongSpaceHeight, 3, 5);
  //
  //DIVs
  //rect(X, Y, Width, Height)
  for (int i=0; i<musicProgramButtonDiv.length-1; i+=4) {
    rect(musicProgramButtonDiv[i], musicProgramButtonDiv[i+1], musicProgramButtonDiv[i+2], musicProgramButtonDiv[i+3]);
  }
  for (int i=0; i<songVarDependantDiv.length-1; i+=4) {
    rect(songVarDependantDiv[i], songVarDependantDiv[i+1], songVarDependantDiv[i+2], songVarDependantDiv[i+3]); //repeat line
  }
  for (int i=0; i<musicButtonDivX.length; i++) { //Repeat of previous FOR-Conditional
    square(musicButtonDivX[i], musicButtonDivY, musicButtonDivSquare);
  }
  //
} //End Setup
//
void draw() {
  //Empty Draw
} //End Draw
//
// End MAIN
