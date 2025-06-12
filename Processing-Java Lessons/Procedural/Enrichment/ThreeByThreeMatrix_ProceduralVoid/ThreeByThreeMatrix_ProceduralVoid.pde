void setup() {
  size(700, 500);
  //fullScreen(); //displayWidth //displayHeight
  int appWidth = width;
  int appHeight = height;
  //
  int numberofSquares = 9;
  int parameters = 4;
  float[] rectVar = new float[numberofSquares*parameters];
  int columns = 3;
  int rows = 3;
  //
  int i=0;
  for ( int x=0; x<columns; x++ ) {//Will fail if not a mutliple
    for ( int y=0; y<rows; y++ ) { //Will fail if not a multiple
      //println(x, y);
      if ( rectVar.length%parameters==0 ) {
        //println(i);
        populateArray(rectVar, i, x, appWidth, columns);
        populateArray(rectVar, i+1, y, appHeight, rows);
        populateArray(rectVar, i+2, 1, appWidth, columns);
        populateArray(rectVar, i+3, 1, appHeight, rows);
        //rectVar[i]= x*(appWidth/columns); //repeat line with different variable
        //rectVar[i+1]= y*(appHeight/rows); //repeat line with different variable
        ///rectVar[i+2]=appWidth/columns; //repeat line with different variable
        //rectVar[i+3]=appHeight/rows; //repeat line with different variable
        i+=parameters; //Functions like a WHILE
      } else {
        println("ERROR with Array Length populating Array");
        exit();
      }
    }
  }
  //
  //printArray(rectVar);
  //
  if ( rectVar.length%parameters==0 ) {
    for (i=0; i<rectVar.length; i+=parameters) {
      rect(rectVar[i], rectVar[i+1], rectVar[i+2], rectVar[i+3]);
    }
  } else {
    println("ERROR with Array Length printing Rectangles");
    exit();
  }
  //
  /*
  rect(0*(appWidth/columns), 0*(appHeight/rows), appWidth/columns, appHeight/rows);
   rect(0*(appWidth/columns), 1*(appHeight/rows), appWidth/columns, appHeight/rows);
   rect(0*(appWidth/columns), 2*(appHeight/rows), appWidth/columns, appHeight/rows);
   rect(1*(appWidth/columns), 0*(appHeight/rows), appWidth/columns, appHeight/rows);
   rect(1*(appWidth/columns), 1*(appHeight/rows), appWidth/columns, appHeight/rows);
   rect(1*(appWidth/columns), 2*(appHeight/rows), appWidth/columns, appHeight/rows);
   rect(2*(appWidth/columns), 0*(appHeight/rows), appWidth/columns, appHeight/rows);
   rect(2*(appWidth/columns), 1*(appHeight/rows), appWidth/columns, appHeight/rows);
   rect(2*(appWidth/columns), 2*(appHeight/rows), appWidth/columns, appHeight/rows);
   */
}//End setup

void draw() {
}//End Draw
//
//End MAIN
