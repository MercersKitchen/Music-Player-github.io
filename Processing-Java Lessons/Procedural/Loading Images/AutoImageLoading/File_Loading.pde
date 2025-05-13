//Cascading Local Variables combined with global variables
//Splint up single file music loading into cascading procedures with global variables
//Explains arrays initiation, declaration, and read-write
//
//Separating named-procedure by passing parameters
//
//A class is like an .mp3 that has music and text information
//
void folderLength(String absolutePathway) {
  File[] fileNames = fileName(absolutePathway); 
  pathwayLength = fileNames.length; //rewriting Global Variable before String Variable in MAIN
  println(pathwayLength);
  printArray(fileNames);
  String[] stringPathway = new String[pathwayLength];
} //End Folder Length

File[] fileName(String absolutePathway) {
  
  return fileNames;
} //End File Names
//
//
void fileNames (int pathwayLength, String pathway) {
  folderLength (pathway);
  
} //
