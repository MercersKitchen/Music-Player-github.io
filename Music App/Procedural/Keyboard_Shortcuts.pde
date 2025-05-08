//All Key Board Buttons that become Mouse Pressed Buttons Here
//
void keyBoardShortCuts() {
  simpleNextButtonTesting();
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



void saveCurrentSong() {
  String[] data = { str(currentSong) };
  saveStrings(saveTxtPath_currentSong, data);
  println("Saved current song: " + currentSong);
}// End Save currentSong
//
// End Key Board Short Cuts Subprogram
