void setup() {
  // Display
  size(700, 500); //width //height //repeats teaching display, landscape
  int appWidth = width;
  int numberOfButtons = 13; //One button on either side as space, Center Button is Play
  float musicButtonDivSquare = appWidth/numberOfButtons;
  int appHeight = height;
  float musicButtonDivY = appHeight*3/5; //Close approximation of total, slightly bigger space than randomStartQuitSide to separate DIVs
  float[] musicButtonDivX = new float[numberOfButtons-2];
  
  musicDIV(musicButtonDivX, musicButtonDivX.length, musicButtonDivSquare, musicButtonDivY); 
  printArray(musicButtonDivX);
}

void draw() {}

void musicDIV(float[] array, int length, float referentMeasure, float musicButtonDivY) {
  int index = length-1;
  if (index<0) return;
  array[index] = referentMeasure + referentMeasure*index;
  square(array[index], musicButtonDivY, referentMeasure);
  musicDIV(array, index, referentMeasure, musicButtonDivY);
}
