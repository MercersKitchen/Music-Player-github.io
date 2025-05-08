String saveTxtPath_currentSong; //For Saving Last Known Song Played
String saveTxtPath_randomStart; //For Saving Preference: Random Start
//
void filePathwaySetup() {
  //
  saveTxtPath_currentSong = sketchPath("currentSong.txt");
  saveTxtPath_randomStart = sketchPath("randomStart.txt");
  println(saveTxtPath_currentSong);
  println(saveTxtPath_randomStart);
  //
} //End File Pathway Setup
//
// Load the currentSong-value from a .txt file
// String array illustrates more than one varaible can be saved as
// Start-up preference
int loadCurrentSong() {
  String[] number = loadStrings(saveTxtPath_currentSong); //written as a string
  if (number != null && number.length > 0) {
    println("Loaded current song: " + number[0]);
    return int(number[0]);
  }
  return 0; // Default to the first song if no file exists
}
Boolean loadRandomStart() {
  String[] dataString = loadStrings(saveTxtPath_randomStart);
  Boolean dataBoolean;
  if (dataString != null && dataString.length > 0) {
    println("Loaded random start: " + dataString[0]);
    try {
      dataBoolean = Boolean.parseBoolean(dataString[0]);
    }
    catch (Exception e) {
      println("Error parsing boolean value: " + e);
      dataBoolean = false; // default value
    }
  } else {
    println("File is empty.");
    dataBoolean = false; // default value
    return dataBoolean;
  }
  return dataBoolean;
}//End Random Start Boolean
//
void saveCurrentSong() {
  String[] number = { str(currentSong) }; //element ZERO
  saveStrings(saveTxtPath_currentSong, number);
  println("Saved current song: " + currentSong);
  String[] dataBoolean = { str(randomStart) };
  saveStrings(saveTxtPath_randomStart, dataBoolean);
  println("Saved Random Start: " + randomStart);
}// End Save currentSong
//
void musicFileReading() {
  //
  minim = new Minim(this);
  //
  String absolutePath = sketchPath();
  String lessonDependanciesFolder = "/../../Lesson Dependancies Folder/Music All/";
  //
  String musicDirectory = absolutePath + lessonDependanciesFolder;
  File directory = new File(musicDirectory); //Uses Java File Library to create class (variables & code)
  File[] fileNames = directory.listFiles(); //Uses built in class to list all files
  String[] files = new String[fileNames.length]; //Purpose: convert File to String for minim.loadFile()
  int i=0;
  if ( fileNames != null ) {
    for ( File file : fileNames ) { //FOR EACH Loop, creates local class
      files[i] = lessonDependanciesFolder + file.getName(); //print fileNames.getName() Object to String
      i++; //iteration necessary here, not in regular FOR
    }
  }
  numberOfSongs = fileNames.length;
  currentSong = numberOfSongs-numberOfSongs;
  playList = new AudioPlayer[numberOfSongs]; //sets the array length
  while ( currentSong < fileNames.length ) {
    playList[ currentSong ] = minim.loadFile( files[ currentSong ] );
    currentSong++; //functions similar to FOR
  }
  currentSong  = ( randomStart==true ) ? int( random(numberOfSongs) ): 0;
  playList[ currentSong ].play();
} // End Music File Folder Reading
