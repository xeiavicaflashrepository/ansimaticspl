# ansimaticspl
A very crude perl script for printing ANSI escape sequences to the terminal for art and animation purposes.  
I like doing things very frame by frame with animation, so I whipped together this crude quick and dirty perl script. It's nothing impressive, but I really had to store this somewhere so I won't have to write it again.

What you have to do, is make an external file (Name it something like frame0000.txt if you want to animate it) and use the following characters to be subsituted wtih the perl script.  
1 is black.  
2 is red.  
3 is green.  
5 is yellow.  
6 is blue.  
7 is magenta.  
8 is cyan.  
9 is white.  
A is bright black.  
B is bright red.  
C is bright green.  
D is bright yellow.  
E is bright blue.  
F is bright magenta.  
G is bright cyan.  
and lastly, H is bright white.  

0 and 4 were skipped because otherwise the regex screwed with the results. Sorry.
