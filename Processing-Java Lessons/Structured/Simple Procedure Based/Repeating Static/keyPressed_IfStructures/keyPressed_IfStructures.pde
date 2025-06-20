/* Key Pressed for all Buttons, Output to Console Only
 - Idea is to mimic IF statements, measuring the outputs and time
 - Concept: most common IF-conditional checked first, ignoring all the rest
 - Goal: decrease lines of code processed
 
 - Single Line IFs: all checked every keyPressed
 - IF-elseIF-else: most common conditional checked first, then decreasing
 
 - Note: KEY requires keyPressed() to exist
 - Note: mouseX&Y key-variables exist with draw()
 
 */
//
void setup() {
  //Display
  //size(); //width //height
  //fullScreen(); //displayWidth //displayHeight
  //
} //End setup()

/* Key Board Short Cuts ... learning what the Music Buttons could be
 Note: CAP Lock with ||
 if ( key==? || key==? ) ; //'' only
 -
 if ( key==CODED || keyCode==SpecialKey ) ; //Special Keys abriviated CAPS
 -
 All Music Player Features are built out of these Minim AudioPlayer() functions
 .isPlaying()
 .isMuted()
 .loop(0), parameter is number of iterations after play
 .loop(), parameter is infinite interations
 .play(), parameter is built-in skip (milli-seconds or crystal-time)
 .pause()
 .rewind()
 .skip()
 .unmute()
 .mute()
 -
 Lesson Music Button Features based on single, double, and spamming taps
 - Play
 - Pause
 - Stop
 - Loop Once
 - Loop Infinite
 - Fast Forward
 - Fast Rewind
 - Mute
 - Next Song
 - Previous Song
 - Shuffle
 
 - Advanced Buttons & Combinations: see below, for exploration in Intermediate
 
 */
//
void draw() {
  //println("Mouse X", mouseX, "& Y", mouseY, "in coordinates");
}//End draw()
//
void keyPressed() {
  //the KEY-Variable does not exist without the procedure keyPressed
  //Verified by executing a STATIC program
  //
  if ( key=='P' || key=='p' ) println("Play");
  if ( key=='O' || key=='o' ) println("Pause");
  if ( key=='S' || key=='s' ) println("Stop");
  if ( key=='L' || key=='l' ) println("Loop ONCE");
  if ( key=='K' || key=='k' ) println("Loop Infinite");
  if ( key=='F' || key=='f' ) println("Fast Forward");
  if ( key=='R' || key=='r' ) println("Fast Rewind");
  if ( key=='M' || key=='m' ) println("Mute");
  if ( key==CODED || keyCode==ESC ) println("Quit CANVAS ... Will actually QUIT the CANVAS since hardcoded");
  if ( key=='Q' || key=='q' ) println("Exit Program");
  if ( key=='N' || key=='n' ) println("Next Song");
  if ( key=='B' || key=='b' ) println("Previous Song");
  if ( key=='Y' || key=='y' ) println("Random Next Song, algorithmicly not random due to repeats per playlist");
  //
  println("I pressed a unless key");
  println("Code outside IF structure will always execute");
  //
  /* To Be finished by Student & Commented out, will be finished in Itermediate Computer Science
   - need to have basic GUI complete first
   
   if ( key=='' || key=='' ) ; // Play-Pause-STOP //Advanced, beyond single buttons
   
   if ( key=='' || key=='' ) ; // Loop ONCE - Loop INFINITELY //Advanced, beyond single buttons
   
   if ( key=='' || key=='' ) ; // First 10s, NEXT - Last 20% FF | Mute, NEXT - Otherwise FF //Advanced, beyond single buttons
   if ( key=='' || key=='' ) ; // First 10s, PREVIOUS - Single-Tap RR | Double-Tap PREVIOUS //Advanced, beyond single buttons
   
   if ( key=='D' || key=='d' ) println("Shuffle, no repeats per playList");
   
   if ( key=='' || key=='' ) ; // AutoPlay when App Starts //Advanced, beyond single buttons
   if ( key=='' || key=='' ) ; // AutoPlay NEXT Song //Advanced, beyond single buttons
   if ( key=='D' || key=='d' ) println("Shuffle-Play-Next");
   
   */
  //
}//End keyPressed
//
//End MAIN Program
