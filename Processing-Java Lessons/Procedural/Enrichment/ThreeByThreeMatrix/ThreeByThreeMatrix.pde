size(700, 500);
//fullScreen(); //displayWidth //displayHeight
int appWidth = width;
int appHeight = height;
/*
X = ;
 Y = ;
 Width = ;
 Height = ;
 */
int numberofSquares = 9;
float[] rectVar = new float[numberofSquares*4];
int rows = 3;
int columns = 3;

for ( int x=0; x<rectVar.length; x+=3 ) {
  //x
  for ( int y=0; y<rectVar.length; y+=3 ) {
    //y
    for (int i=0; i<rectVar.length; i+=4) {
      rectVar[i]= x*(appWidth/columns);
      rectVar[i+1]= y*(appHeight/rows);
      rectVar[i+2]=appWidth/columns;
      rectVar[i+3]=appHeight/rows;
    }
  }
}
/* Desgining X Stays same, populate by columns, x stays same, y changes each time, index counts in groups of 4
 - Might be easier to see if iterating through Width and Height all Populated the same by skip counting
 
 rectVar[0]= 0*(appWidth/columns);
 rectVar[0+1]= 0*(appHeight/rows);
 rectVar[0+2]=appWidth/columns;
 rectVar[0+3]=appHeight/rows;
 rectVar[4]= 0*(appWidth/columns);
 rectVar[4+1]= 1*(appHeight/rows);
 rectVar[4+2]=appWidth/columns;
 rectVar[4+3]=appHeight/rows;
 rectVar[8]= 0*(appWidth/columns);
 rectVar[8+1]= 2*(appHeight/rows);
 rectVar[8+2]=appWidth/columns;
 rectVar[8+3]=appHeight/rows;
 
 
 
 rectVar[12]=0;
 rectVar[13]=0;
 rectVar[14]=appWidth/columns;
 rectVar[15]=appHeight/4;
 rectVar[16]=0;
 rectVar[17]=0;
 rectVar[18]=appWidth/columns;
 rectVar[19]=appHeight/4;
 rectVar[20]=0;
 rectVar[21]=0;
 rectVar[22]=appWidth/columns;
 rectVar[23]=appHeight/4;
 rectVar[24]=0;
 rectVar[25]=0;
 rectVar[26]=appWidth/columns;
 rectVar[27]=appHeight/4;
 rectVar[27]=0;
 rectVar[29]=0;
 rectVar[30]=appWidth/columns;
 rectVar[31]=appHeight/4;
 rectVar[32]=0;
 rectVar[33]=0;
 rectVar[34]=appWidth/columns;
 rectVar[35]=appHeight/4;
 */

printArray(rectVar);

//ERROR rectVar.length%4
for (int i=0; i<rectVar.length; i+=4) {
  rect(rectVar[i], rectVar[i+1], rectVar[i+2], rectVar[i+3]);
}
//
