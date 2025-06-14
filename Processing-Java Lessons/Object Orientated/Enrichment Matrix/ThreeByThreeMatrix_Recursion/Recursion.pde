/* Popluation IFs for Populate DIV Rectangles (population of any sized matrix (drawing values is separated out)
 **CAUTION** must use table of 2-D counting, index & mulitplier
 - DEBUGGING println included for inspection
 - In the VOID, Recursive halts and returns when OutOfBounds ERROR is returned
 - Number of Columns: when numberOfRows executed =2 (See rect(parameter) table), setup for next xParameter execution
 - Number of Rows: subtracts one EXCEPT =0, similar to playList in Music Array, CATCH for OutOfBounds Error
 */
//
void checkMatrixDimension(float totalMatrixWidth, float totalMatrixHeight, int numberOfColumns, int numberOfRows) {
  if ( totalMatrixWidth%numberOfColumns==0 && totalMatrixHeight%numberOfRows==0 ) {
    //Empty IF, No ERRORs
    //No leftover space in Matrix DIVs
  } else {
    println("HALT ERROR: Matrix DIV Population ERROR, final row(s) remainder ERROR");
    exit();
  }
}//Ennd Check Matric Dimensions Error

void populateRectDIV(float[] collection, int index, float totalMatrixWidth, float totalMatrixHeight, float matrixWidth, float matrixHeight, int numberOfColumns, int numberOfRows) {
  if (collection.length-1 == index) checkMatrixDimension(totalMatrixWidth, totalMatrixHeight, numberOfColumns, numberOfRows);
  //
  //println("Index:", index);
  //
  if ( index==-1 ) {
    //println("Return");
    return ;
  } else if ( index%4==0 ) {
    collection[index] = numberOfColumns*(matrixWidth);
    //println("Do not change Number of Columns on Index", collection.length-4); //Parameters = 4
    if ( numberOfRows==2 && index<collection.length-4) {
      numberOfColumns--;
    }
    //println("Number of Columns", numberOfColumns);
  } else if (index%4==1 ) {
    collection[index] = numberOfRows*(matrixHeight);
    if (numberOfRows==0) {
      numberOfRows = 2;
    } else {
      numberOfRows--;
    }
    //println("Number of Rows", numberOfRows);
  } else if (index%4==2) {
    collection[index] = matrixWidth;
  } else if (index%4==3) {
    collection[index] = matrixHeight;
  } else {
    println("Population DIV Rectangle Collection ERROR");
  }
  //
  index--;
  //
  populateRectDIV( collection, index, totalMatrixWidth, totalMatrixHeight, matrixWidth, matrixHeight, numberOfColumns, numberOfRows);
}//End Populate Array
//
void drawRectangles(float[] collection, int index) {
  rect(collection[index-3], collection[index-2], collection[index-1], collection[index]);
  index-=4;
  if (index<=0 ) {
    //println("Drawing Rectangles: Catch for OutOfBounds Error");
    return ;
  } else {
    drawRectangles(collection, index);
  }
}//End Drawing Rectangles
//
//End Procedures

/*
 rect(0*(appWidth/columns), 0*(appHeight/rows), appWidth/columns, appHeight/rows);
 0                            1                   2                 3
 rect(0*(appWidth/columns), 1*(appHeight/rows), appWidth/columns, appHeight/rows);
 4                            5                   6                 7
 rect(0*(appWidth/columns), 2*(appHeight/rows), appWidth/columns, appHeight/rows);
 8                            9                   10                11
 rect(1*(appWidth/columns), 0*(appHeight/rows), appWidth/columns, appHeight/rows);
 12                           13                  14                15
 rect(1*(appWidth/columns), 1*(appHeight/rows), appWidth/columns, appHeight/rows);
 16                           17                  18                19
 rect(1*(appWidth/columns), 2*(appHeight/rows), appWidth/columns, appHeight/rows);
 20                           21                  22                32
 rect(2*(appWidth/columns), 0*(appHeight/rows), appWidth/columns, appHeight/rows);
 24                           25                  26                27
 rect(2*(appWidth/columns), 1*(appHeight/rows), appWidth/columns, appHeight/rows);
 28                           29                  30                31
 rect(2*(appWidth/columns), 2*(appHeight/rows), appWidth/columns, appHeight/rows);
 32                           33                  34                35
 */
