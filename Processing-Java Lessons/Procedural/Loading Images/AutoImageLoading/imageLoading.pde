void imageLoading(String pathway) {
  
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
  imagesPlayList = new PImage[numberOfSongs]; //sets the array length
  while ( currentSong < fileNames.length ) {
    imagesPlayList[ currentSong ] = loadImage( files[ currentSong ] );
    currentSong++; //functions similar to FOR
  }
  
} //End Image Loading
