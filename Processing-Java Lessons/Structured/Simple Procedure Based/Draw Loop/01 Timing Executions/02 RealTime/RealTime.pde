/* Prgram Notes
 - When the key pad enters number into the variable,
 - And, a counter of 60 determines 1 second
 - And, 1 second counts down from the time entered
 
 NOTE: able to use any measure of time, not just milliseconds
 if formulae used
 */
//
int timerStart, enteredTimeSeconds, enteredTimeMilliSeconds, currentTime, countingTime;
//
void setup() {
  //Entered Time from Num Pad
  enteredTimeSeconds = 13; //CAUTION: will need to convert minutes and hours to seconds
  enteredTimeMilliSeconds = enteredTimeSeconds * 1000;
  //Last line in Setup to adjust currentTime in void draw(){}
  timerStart = millis(); //Measure program start time called "scope"
  println(timerStart);
}
//
void draw() {
  currentTime = millis();
  countingTime = currentTime - timerStart;
  println(timerStart, currentTime, enteredTimeMilliSeconds);
  if ( countingTime >= enteredTimeMilliSeconds ) {
    println("Timer is Done");
    exit(); //CAUTION: stops the entire program as a prototype
    //Instead of exit(), fix the BUG
    //Use loop() & noLoop() on arrow and char R key interactions
  }

  //
}
//End MAIN Program
