# Summative Task

## Overall goal

To make an interactive chemistry experience where you can make atoms that bounce around and bond with each other. This is focused on organic chemistry so it will only include Carbon, Hydrogen, and Oxygen.
The simulation will be completed in processing using java coding knowledge and organized through github. 

Using the keyboard the user can generate atoms that spawn at the mouse cursor with random velocities. They bounce off the edges of the screen and when they bounce off of each other they form bonds, if they are available. Carbon can bond 4 times, Oxygen can bond 2 times, and Hydrogen can bond once.

## Sub-goals

-Create an atom class that has properties of element, bonds numbers, size, and colour.
-Extend atom with oxygen, hydrogen, carbon
-Modify bouncer code to allow atoms to bond into molecules
-Possibly find a way to make double bonds?

QUESTIONS:
1. What (if anything – although there is probably at least something) does the user need to know about what your program does?
It generates the three main molecules involved in organic chemistry: carbon, oxygen, and hydrogen. Each can only bond a set number of times, and if it is knocked off of a bond by a faster atom, it loses those bonding electrons forever (although this is not necessarily how it works all the time in the real world)

2. What (if anything) does the user need to know to operate your program (keystrokes, et cetera)?
Pressing C generates a carbon atom at the mouse, while H and O do the same thing with hydrogen and oxygen respectively.

3. How does your program show evidence of your understanding of object-oriented programming concepts like encapsulation and inheritance?
I made a superclass "atom" that gives a few base classes that are extended by carbon, hydrogen, and oxygen. This allows these core classes to remain concise and simple. Atom contains all of the parameters that these atoms need to run such as bond count, and size. It also contains a method that checks the edges of the screen.

4. What evidence can you provide that your program is human-readable?
It would be easier to provide the one example of non readable code in the project. Although there is a comment describing the function, the be() function may be a confusing name. I chose it because it allows the atom to "be" an atom. Other readable methods are named checkEdges() to check if the atom is hitting the edge of the screen, keyPressed() to check what key has been pressed (although that is included in processing). collision() may have some confusing code in it, but it is well commented and is named appropriately. All variables are named appropriately, bonds represents the number of times a given element can bond, atoms is an arraylist of all atoms in the simulation, and size is the size of the atom. 

5. What is the most important algorithm, or algorithm(s), in your program?
That would be the collision() method because that is where the code responsible for bonding atoms is. It averages the velocities of the two colliding atoms and then reduces their bond values by 1.

6. How have you made your program easy to use?
The readme contains the controls, other than that its just a matter of pressing the keys and watching the chemistry!

7. How have you made correct use of source control?
Early on, I made frequent commits, but then I would just sit down and work on a thick block of code and impliment it at the end of the day. I kept the commit messages short and simple.
