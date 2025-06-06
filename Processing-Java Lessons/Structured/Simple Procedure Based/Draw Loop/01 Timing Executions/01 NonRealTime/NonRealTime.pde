/* Prgram Notes
 - When the key pad enters number into the variable,
 - And, a counter of 60 determines 1 second
 - And, 1 second counts down from the time entered
 */
//
int counter, enteredTime;
//
void setup() {
  enteredTime = 13; //Variable should be in void draw() {}, entered from numPad
}
//
void draw() {
  counter++; //println(counter++);
  if ( counter%60 == 0) println(enteredTime--);
}
//End MAIN Program
