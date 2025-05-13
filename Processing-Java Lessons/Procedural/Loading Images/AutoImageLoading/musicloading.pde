void musicLoading(String pathway) {
  
  File directory = new File(pathway); //Uses Java Library to create class (variables & code)
  File[] fileNames = directory.listFiles(); //Uses built in class to list all files
  String[] files = new String[fileNames.length];
  int i=0;
  if ( fileNames != null ) {
    for ( File file : fileNames ) { //FOR EACH Loop, creates local class
      files[i] = pathway + file.getName(); //print fileNames.getName() Object to String
      //Note: getName() is built in code
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
  numberOfSongs = fileNames.length;
  
  
} //End Music Loading

/*
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
 } //End Music File Loading
 */
//
