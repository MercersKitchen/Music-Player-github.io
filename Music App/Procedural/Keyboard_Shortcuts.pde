//All Key Board Buttons that become Mouse Pressed Buttons Here
//
void keyBoardShortCuts() {
  simpleNextButtonTesting();
  randomStartButton();
} //End Key Board Short Cuts
//
void simpleNextButtonTesting() {
  playList[ currentSong ].pause();
  playList[ currentSong ].rewind();
  if ( currentSong >= numberOfSongs-1 ) {
    currentSong=0;
  } else {
    currentSong++;
  }
  playList[ currentSong ].play();
} // End Simle Next Button Music Testing
//
void randomStartButton() {
  if (key=='W' || key=='w') {
    if ( randomStart==true ) {
      randomStart=false;
    } else {
      randomStart=true;
    }
  }
  //
} //End Random Start Button
//
// End Key Board Short Cuts Subprogram
