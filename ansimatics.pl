#!/usr/bin/perl

use warnings;
use strict;

# How this will work is that an external file will have 0-7 and A-H as the
# characters to make up the ANSI art. Only will file will be read, but you
# can animate it with a for loop on the command line through bash or whichever
# your shell of choice is.

# As a reminder, here are the following colours linked to the character
# linked the background colour.
# Note, because I've found the regex to screw with 4 and 0, it is skipped. Sorry.
# 1 is black. 
# 2 is red.
# 3 is green.
# 5 is yellow.
# 6 is blue.
# 7 is magenta.
# 8 is cyan.
# 9 is white.
# A is bright black.
# B is bright red.
# C is bright green.
# D is bright yellow.
# E is bright blue.
# F is bright magenta.
# G is bright cyan.
# and lastly, H is bright white.

# Only one argument is allowed, and that is an input file. But what if none is provided?
if (not defined $ARGV[0]) {
  printf "You must supply a single file for input, please do so. Quitting now.\n";
  exit;
}

# Now, open a file.
open(my $INPUT, "<", $ARGV[0]) or die "There was an issue opening the file. Quitting $!\n";

# This is to hide the cursor.
printf "\x1b[?25l";

while (my $STR = <$INPUT>) {
  # Modify the input file to print out ANSI escape sequences.
  # Honestly, a hack job, but it works for a simple script.
  $STR =~ s/1/\033[40m /g;
  $STR =~ s/2/\033[41m /g;
  $STR =~ s/3/\033[42m /g;
  $STR =~ s/5/\033[43m /g;
  $STR =~ s/6/\033[0;44m /g;
  $STR =~ s/7/\033[0;45m /g;
  $STR =~ s/8/\033[0;46m /g;
  $STR =~ s/9/\033[0;47m /g;

  $STR =~ s/A/\033[0;100m /g;
  $STR =~ s/B/\033[0;101m /g;
  $STR =~ s/C/\033[0;102m /g;
  $STR =~ s/D/\033[0;103m /g;
  $STR =~ s/E/\033[0;104m /g;
  $STR =~ s/F/\033[0;105m /g;
  $STR =~ s/G/\033[0;106m /g;
  $STR =~ s/H/\033[0;107m /g;


  print "$STR";

}

# Cushion to wait a few second after its done.
sleep(5);

# Resume cusor
printf "\x1b[?25h ";

# Done!
