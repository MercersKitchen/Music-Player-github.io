void musicLoading(File[] fileNames, String[] files) {
  numberOfSongs = fileNames.length;
  currentSong = numberOfSongs-numberOfSongs;
  playList = new AudioPlayer[numberOfSongs]; //sets the array length
  while ( currentSong < fileNames.length ) {
    playList[ currentSong ] = minim.loadFile( files[ currentSong ] );
    currentSong++; //functions similar to FOR
  }
  numberOfSongs = fileNames.length;
} //End Music Loading
