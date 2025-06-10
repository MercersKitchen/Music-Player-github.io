void musicDIV(float[] array, int length) {
  int index = length-1;
  if (index<0) return;
  array[index] = musicButtonDivSquare + musicButtonDivSquare*index;
  square(array[index], musicButtonDivY, musicButtonDivSquare);
  musicDIV(array, index);
}
