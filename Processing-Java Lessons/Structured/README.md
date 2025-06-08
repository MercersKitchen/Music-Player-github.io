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

Beliefs about learning Algorithms
- Combination of ...
- Applied Math, and sometimes relearning it to address misconcpetions
- Learning a CS Language (in HS ... learn a general langauge to learn others in post-secondary)
- Partially self-checking: visually verified
- Fully self-checking: 
   - Within problem space illustrated by Euler or Venn Diagrams
   - Wihtin hardware space and various ERRORs that can be produced


---

# Static Programs - Vocabulary
- Incorporated into program snippets
   - issue of copy and paste to emphasize new data structure
- Assersions
- @param
- @return
- Algorithms
- Formulae to summarize data
- Compiler Errors - end of algorithm


### Hello World
- print() & println() local strings
- location of debugger, console
- integration of VS-Code and AI
- Difference between routine and becoming aware
- **Hello World** is a time honoured tradition to become part of something more, bigger than oneself
- The examples of Hello World will be repeated and become part of a routinue
- The examples are part of awareness

---
- see comments for draft

### DIV_TwoD_Rect
- JAVA, @param: description of a parameter
- JAVA, @return: what a method returns
- Algorithm
- Arithmetic Operators in integer, long, float, double ( + - * / % )
- Truncation: removing decimals returning integers only (can creates arithmetic exception or logic errors)
- Assertion: statement of fact if program is working well
   - visually verifying
   - inspection of variables with print, println, and printArray
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


### DIVs: introducing math fluency
- Primitive rect() parameters can be abstracted to groups of 4
- Intialization can become patterned
- Initiailization based on single values
- Repeating lines, number changes, summarized by FOR-iteration

- TBA

---

### Other vocabulary to revisit
- Abstract Class
- Abstract Method
- Accessor Method (getter method)
- Arithemtic Exception: runtime error, division by zero
- ArrayIndexOutOfBoundars Exception: runtime error, +- index error beyond array.length
- Average Case, runtime estimate between worst-case and best-case
- Base Case, recursive programming: termination case will return to regular programming
- Boolean Expressions, conditionals in if-statements, etc
- Client Program accesses the public methods of a class (similar to driver program)
- Compound Assignemnt Operators, order matters ( += -= *= /= %= )

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