AudioPlayer[] playList; //length of array determined by reading the Music Folder
//AudioPlayer[] soundEffects = new AudioPlayer[ numberOfSoundEffects ];
//
void fileLoading (String generalDirectory, String lessonDependanciesFolder, String fileTypeFolder) {
  File directory = new File(generalDirectory+fileTypeFolder); //Uses Java Library to create class (variables & code)
  println(directory);
  //A class is like an .mp3 that has music and text information
  File[] fileNames = directory.listFiles(); //Uses built in class to list all files
  String[] files = new String[fileNames.length]; //Purpose: convert File to String for minim.loadFile()
  printArray(files);
  println(fileTypeFolder);
  int i=0;
  if ( fileNames != null ) {
    for ( File file : fileNames ) { //FOR EACH Loop, creates local class
      files[i] = lessonDependanciesFolder + fileTypeFolder + file.getName(); //print fileNames.getName() Object to String
      //Note: getName() is built in code
      i++; //iteration necessary here, not in regular FOR
    }
  }
  printArray(files);
  //
  /*
  */
  println(fileTypeFolder);
  if ( fileTypeFolder=="Music All/" ) musicLoading(fileNames, files);
  //if ( fileTypeFolder=="Images/" ) musicLoading(fileNames, files);
  
} //End Music File Loading
