/* linear equation, three terms
 - lead only +
 - +/- second term, third term
 - last term has ratio of different numbers
 
 - *-1 is subtraction
 - *0 is not included
 */
float linear3Term(int coef1, float lead, int coef2, float second, int coef3, float third, float a, float b) {
  return coef1*lead + coef2*second + coef3*third*(a/b);
}

void drawingDIVs(float[] collection, int index) {
  if ( collection.length%4 != 0 ) {
    println("ERROR: drawingDIVs access by collection not divisable by 4");
    return;
  } else if ( index<=-1 ) {
    return;
  } else {
    rect(collection[index-3], collection[index-2], collection[index-1], collection[index]);
  }
  drawingDIVs(collection, index-4);
}
//
//End Abstract Procedures
