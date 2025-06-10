# Natural Language of Structured Programming
Building a Music Player using Processing.org and Minim

**CAUTION:** Repository and Website *UNDER CONSTRUCTION*

Note: all programs can be written between static and dynamic. Static allows for specific, single lines of code to be recognized in more complicated programs as part of simle algorithms.

CAUTION: ERRORs (bugs) are sometimes built in since identifying errors is part of learning

Recommened Programs and Steps to Know about
- Reminders and Foci, <a href="">tba</a>
- Static Programs, 

---

# TBA, Reminders and Foci

Beliefs about Computational Theory
- Mathematics: use simplier mathematics when it can be combined with coding features 
- Arithmetic is separate from mathematics adn the computer does arithmetic like a calcualtor, also tracking the answers
- Iterations or steps are sometimes useful to be obvious about

Beliefs of Structured Programming
- Visual Objects visually completing Algorithms
- Algorithms are sometimes recommended Processing-Java language progressions to learn parallel with algorithms
- Bottom-up programming
- Concrete is already known as a coding word in object-orientated when an class is able to be constructed, what is the word to use when creating something concrete (i.e. prototyping)

Beliefs about learning Algorithms
- Combination of ...
- Applied Math, and sometimes relearning it to address misconcpetions
- Learning a CS Language (in HS ... learn a general langauge to learn others in post-secondary)
- Partially self-checking: visually verified
- Fully self-checking: 
   - Within problem space illustrated by Euler or Venn Diagrams
   - Wihtin hardware space and various ERRORs that can be produced

Beliefs about reading code: each line is a summary and provides echoes of information
- this information is required for the next line of code
- reading becomes slow
- object instantiation requires conceptul fluency of class & prototyping in DRIVER CLASS for exemplar data handling

Beliefs about AI as a tool
- Students are required to ensure the voice of a program
- Voice is a difficult concept to teach but AI enables the difficult to become possible

Beliefs about students and learning
- example, exemplar, concept, misconception, fluency
- learning modalities, expereince of the moment: rare pure-sense of words, applied sense of word-definition, translation to words from (logic, images, embodies, etc. )


---

# Static Programs - Vocabulary
- Program Specfications: written statements (can become psuedocode)
    - CAUTION: AI struggles with learning progressions when developing code or how a student chooses code
- Incorporated into program snippets
   - issue of copy and paste to emphasize new data structure
- Assersions
- @param
- @return
- Algorithms
- Formulae to summarize data
- Compiler Errors - end of algorithm
- Assersion (to be tested) || post-condition (tested) || pre-condition (tested)
    - Protytping in DRIVER CLASS
- Variables & Scope
- ERRORs being given (compiler in debugger, runtime, halt-errors, logic errors)

### Hello World
- print() & println() using String Literals, including escape sequences
    - Example: 1 != 1, 1==one (cannot do arithmetic on one or 1)
- location of debugger, console
- integration of VS-Code and AI
- Difference between routine and becoming aware
- **Hello World** is a time honoured tradition to become part of something more, bigger than oneself
- The examples of Hello World will be repeated and become part of a routinue
- The examples are part of awareness

- Logic or Intent ERROR fails assersion, program compilers without exception

---
- see comments for draft

### DIV_TwoD_Rect
- JAVA, @param: description of a parameter
- JAVA, @return: what a method returns
- Algorithm
- Arithmetic Operators in integer, long, float, double ( + + - - * / % )
- Truncation: removing decimals returning integers only (can creates arithmetic exception or logic errors)
- Assertion: statement of fact if program is working well
   - visually verifying
   - inspection of variables with print, println, and printArray
- Assersion (to be tested) || post-condition (tested)
- Bottom-up developement in programming starts with the simplest object-oritentated
   - Answers: how to learn a language without documentation 
   - i.e. apply compiler exceptions and errors 
- Top-down developement starts with the summary of the entire program
   - psudeocode
   - tested smaller prototypes
- Class: creation of objects, how these are used
- Compiler-Time Errors (debugger), before execution:
   - undeclared variables
   - invoking method object doesn't have access to
   - using incorrect parameter
   - 
   - **Often useful to purposefully program these, writing code backwards**
     - Program will fail at the spot developer needs to return to
     - "Finding errors" that have odd CONSOLE descriptions gets easier with this technique
- Mention floating-point division ( & multiplcation), see next exemplar for examples
- Population: testing construction of variables to be included in a class
    - Note: a music player will have a single instance from a class in CS30, special form of CLASS (static class???)
- Prmitive Data used is ???? (boolean, byte, char, short, int, long, float, double), String seems primitive but immutable

- See ReadMe.txt file for ideas
- What is lesson, concept, primitive values for debugging by reading
- What is awareness
     - skip-counting and modulus available


### DIVs: introducing math fluency
- Primitive rect() parameters can be abstracted to groups of 4
- Intialization can become patterned
- Initiailization based on single values
- Repeating lines, number changes, summarized by FOR-iteration
- Static Variable: memory allocation happens only once

- TBA
- Global Variables for DRIVER CLASS can happen on any TAB if NOT CLASS

- Symmetry creates formulae to pattern on

### Drawing 2D Shapes, identifying a start-end, and flow with making each drawing similar
- introduces another pattern (procedures)
- similar to a FOR loop but the variables are substitued in, not numbers changing

### Library Song & Sound Effect
- Two Concatenation Operators building directories and pathways

- Concatenation Operator ( + , )
- Building directories and pathways in same way
    - leads to .IO.File
    - leads to Object created by .IO.File to find image.width & image.height
    - introduces data space boundaries different than solution space ...
    - Try-Catch for threading Errors, hardware related
    - TBA
- TBA

CS20 Level - verifying variable is loaded for more advanced OS debugging 
- add if (var !=null  && ???) soundEffects-array, playList-array, text( var, rect()-parameters ) | image( var, rect()-parameters );
- ensuring variable populated for processing
- catch with else and println ERROR with Exception
- do not need to verify if variable is loaded
- can still verify behaivour in CANVAS 

### BoilerPlate & boilerplate_settings
- Compiler sees Folder and Driver Class with Main Methods (setup & draw)
- Driver Class: class within MAIN Method used to prototype program pieces before implemented in a formal class
    - setup() & draw() are MAIN Methods in Driver Class of Processing-Java 
    - TABs can be seen as subprograms (static classes without constructors) 
    - Fluency with this is in Review of Abstract Classes at the end of Pong in CS30
- Using fullScreen() and size() to input numbers into GUI
- CAUTION: size() || fullScreen() must be first-line in setup(){} 
    - note: size(displayWidth, displayHeight) == fullScreen()
    - emphasizes Processing-Java requests geometry from DISPLAY being called

### ???
- Reference Data Type: address where object || variable is stored ( i.e. printArray( minim.playList) )

---

### Other vocabulary to revisit
- Abstract Class
- Abstract Method
- Accessor Method (getter method)
- Mutator Method (setter method)
- 
- 
- Average Case, runtime estimate between worst-case and best-case
- Base Case, recursive programming: termination case will return to regular programming
- Boolean Expressions, conditionals in if-statements, etc
- Client Program accesses the public methods of a class (similar to driver program)
- Compound Assignemnt Operators, order matters ( ++ += -- -= *= /= %= )
    - increment operator
    - decriment operator
- Constructors: same name, void, & can be overloaded

- Dynamic Binding: changing choice of overidden methods
- Static Binding || Early Binding: first choosing correct overridden method
- Encapsulation
    - private variable accessible through public getters and setters
- Enhanced FOR Loop | FOR-Each Loop
- Escape Sequences for CONSOLE when inspecting Variables for Assersions
- Exceptions that HALT a programs EXECUTION && unchecked exceptions at compile time
    - ArrayIndexOutOfBoundars Exception: runtime error, +- index error beyond array.length
    - IndexOutOfBounds Exception
    - Arithemtic Exception: runtime error, division by zero
    - NullPointer Exception: access || modify instance of object with NULL value (usually variable)
    - IllegalArgument Exception - thrown to prevent processing bad data, i.e. try-catch
- Stack Overflow (comptuer runs out of memory)
- Final Variable: constant, ```final int var=25;```
- Floating Point Division
    - 7.0/2 returns 3.5
    - 3 / double(4) returns 0.75
    - 3/4 returns 0.0
    - double (3/4) returns 0.0
- Integer Operations trucate all decimals, especially * / 
    - Integer Division creates problems
- Formal Parameters: local variables set by method call
- Immutable Objects: cannot be changed
    - String is immutable
- Information Hiding: declaring class variables private restricting client classes from access information
- Inheritance, inheritance relationship ("is-a"): subclass inherits superclass variables and methods, able to add to formal constructor parameters and methods
- Method Overriding: a subclass method with same signature (name & parameters as superclass method) has different code contents
- Interface: superclass declared by ```interface```
- Logical Operator: ! && || (not, and, or) seen in single IFs
    - replicated in nested IFs
    - evalauted with short-curcuits similar to parent-IF in nested IFs
    - IF a==true then nothing else evalauted: a||b
    - if a==flase then nothing else evalauted: a&&b

- Nested FORs: formulaic iteration of more than one index

- Object: single instance of a class, computer tracks mutliple instances logically, developer tracks conceptually
- Overloaded Methods have different signatures
    - int a (int x)
    - int a (int x, int y)
    - double a (int x, int y)
- Polymorphism: correct choice of overloaded || overridden methods
- Recursive Programming: process defined in terms of itself until the base case (beginning)
- Recursive Method calls itself
    - Example: void recur() {if(){**do somethin;**}else {recur();}}
- Relational Operator return boolean ( < > <= >= != == )
- Scope of Variable, global, local, formal parameter, formal index
- Sentinel || guard data: terminate data entered by keyboard
- State of an Object: value of private class variables
- Static Method: method used by all instances of class
- Tail Recusive Method: recusive call is last statement of method

- Key Word: class, static, public, private, void, abstract, etc.
- Abstract (class & method)
- Class
- Extends
- impliments (concrete or abstract)
- inteface: collection of abstract mehtods
- private: helper variables or methods called internally to the class
- public: all data can be changed by client programs (variables and methods)
- static (variable or method, one memory slot) shared by all instances of class, nested class (i.e. music player as a nested class to MAIN Program & DRIVER)
- super(); used to implement constructor of subclass with the same values for the superclass
     - in subclass, super.doSomething(); signals superclass method doSomething should be invoked here
- this. initializes constructor variables separately for mutation

- return: breaks or returns a method after processing (i.e. void can return before full method executed)
- throw
     - Example: if (numScores==0) throw new ArithmeticException("cannot divide by zero")
- void (method doesn't return a value)

- import (packages, libraries)
- new: creation of new objects, arrays
- final: creates constant or immutable variable
- boolean (variable & return)
- int (4-bytes, 32-bit, integer variable & return, size depends sign, i.e. -2,147,483,648 to 2,147,483,647 or 0 to 4,294,967,295)
- double (64-bit floating variable & return)

- null: once declared variables and objects are null, when populated used to test if initialized for processing or mutation


---

Interesting logic errors 
- background image looses 1 pixel when placed in rectangle with an outline









---

# TBA

What is Grade 10 being aimed at - alogorithmically
- what is the math behind this
- what is the object being built

int numSquares = 10; // Number of squares
int squareSize = 50; // Size of each square

void setup() {
  size(800, 600); // Set the size of the canvas
  background(255); // Set the background color
  noLoop(); // Stop draw() from looping
}

void draw() {
  float spacing = (width - (numSquares * squareSize)) / (numSquares + 1); // Calculate the spacing

  for (int i = 0; i < numSquares; i++) {
    float x = spacing + i * (squareSize + spacing); // Calculate x position
    float y = height - squareSize; // y position (bottom of the page)
    rect(x, y, squareSize, squareSize); // Draw the square
  }
}


---

# To Include
- GUI: diagram, Google Prototyping, Paperfolding, creating of percent references, formulaic representation, how a computer sees creativitiy
- Music Buttons: symbolic representation, list, paperfolding & intersections
- Combination of keyPressed(){} and mouseX&Y

---

Files to Acknoweldge for Vocabulary: Juristicational Curriculum
- https://education.alberta.ca/media/159478/cse_sum.pdf
- https://education.alberta.ca/media/159479/cse_pos.pdf

Links
- https://processing.org/
- https://processing.org/reference
- https://code.compartmental.net/minim/: AudioPlayer & AudioMetaData
- https://github.com/ddf/Minim

---

DIVs
- Layout where all the pieces of the GUI are

2D Buttons
- Extra Feature: Hover-over Feedback
- Extra Feature, material design, see Google Prototyping video 
  URL: https://www.youtube.com/watch?v=JMjozqJS44M
  Shared: https://youtu.be/JMjozqJS44M?si=8mDrXhxw_JbH4L4f

Images
- Simple images, no aspect ratio
- Data: images change with song (leading to multiple arrays)
- Algorithm: images in aspect ration
- Idea: drag and drop

- Emphasize how the shape is drawn in the abstract DIV
- Then emphasize the X&Y variables move the abstract shape to a specfic location
- Introduces procedures

- Extra Features: tint, etc.

Ideas:
- drag and drop



Text
- Meta Data Only
- as a check of the image aspect ratio
- Extra Features


Need a flowchart about how the music buttons what the will control 
- Simple Buttons
- Scrolling feature
- Intermediate: parameters of simple buttons
- Intermediate: combinations of simple buttons
- Intermediate: using void draw() {} as play
- Intermediate: minimalistic buttons and intuitive feel
- Advanced: saving preferences and which song, position


Colours: Day, Dark, Night Modes

NEXT & PREVOIUS Button
Lesson for NEXT: layout functions strips in jigsaw
Student Complete Previous

Data Structures
- Song # | Meta Data for Strings and Numbers
- Image # | Connected to Song #

TBA: GUI Overlap and difficulty reading it

---

Grading & APP Ideas
- LIbrary
- Play Song
- All DIVs
- 2D Shapes
- Music Functions
- Buttons
- Images
- Text

---

Hoverover

---

# To Include
- DIVs give opportunity to visually see completed variable manipulation | use print() & println()
- 2D Images gives opportunity to create library code for different Music Function Buttons
   - Lesson is about putting multiple shapes into one extra large DIV
   - Able to copy and paste after
   - Proceudres will make this exercise easier

---

# To Include: vocabulary in Static 

Static will not
- Allow mulitple declarions and initializations per line

Introducing Processing IDE v. VS-Code and Chat-GPT
- CANVAS
- Debugger v. "correct my mistakes"
- Console v. "explain this mistake to me" (highlighting)

DIV_TwoD_Rect.pde
- Display
- Functions, blue
- Parameters: how to think about the code behind the function
- Variables as memories of key-variables
- Variables to manipulate
- Variable Declaration in strongly formatted language
- Variable initialization
 
- Input: Display Geometry
- Output: 2-D Shapes

- typing practice: start with function, then populate variables


---