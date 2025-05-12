//Cascading Local Variables combined with global variables
//Splint up single file music loading into cascading procedures with global variables
//Explains arrays initiation, declaration, and read-write
//
//Separating named-procedure by passing parameters
//
//A class is like an .mp3 that has music and text information
//
void folderLength (String absolutePathway) {
  File directory = new File(absolutePathway); //Uses Java Library to create class (variables & code)
  File[] fileNames = directory.listFiles(); //Uses built in class to list all files
  pathwayLength = fileNames.length;
  println(pathwayLength);
  printArray(fileNames);
} //End f
//
void fileNames (int pathwayLength, String pathway) {
  folderLength (pathway);
  if ( fileNames != null ) {
   for ( File file : fileNames ) { //FOR EACH Loop, creates local class
   files[i] = lessonDependanciesFolder + fileTypeFolder + file.getName(); //print fileNames.getName() Object to String
   //Note: getName() is built in code
   i++; //iteration necessary here, not in regular FOR
   }
   }
} //
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
