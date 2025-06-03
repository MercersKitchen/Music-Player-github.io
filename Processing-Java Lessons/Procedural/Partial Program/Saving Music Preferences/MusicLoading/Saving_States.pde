int loadCurrentSong() {
  String[] number = loadStrings(saveTxtPath_currentSong); //written as a string
  if (number != null && number.length > 0) {
    println("Loaded current song: " + number[0]);
    return int(number[0]);
  }
  return 0; // Default to the first song if no file exists
}
//
void saveCurrentSong() {
  String[] data = { str(currentSong) };
  saveStrings(saveTxtPath_currentSong, data);
  println("Saved current song: " + currentSong);
}// End Save currentSong
