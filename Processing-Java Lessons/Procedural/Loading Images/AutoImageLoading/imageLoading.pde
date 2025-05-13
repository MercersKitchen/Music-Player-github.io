void imageLoading(String pathway) {
  
  File directory = new File(absolutePathway); //Uses Java Library to create class (variables & code)
  File[] fileNames = directory.listFiles(); //Uses built in class to list all files
  
  if ( fileNames != null ) {
    for ( File file : fileNames ) { //FOR EACH Loop, creates local class
      files[i] = lessonDependanciesFolder + fileTypeFolder + file.getName(); //print fileNames.getName() Object to String
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
