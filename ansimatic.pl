#!/usr/bin/perl

use warnings;
use strict;

# 16 colours are avilable, with bright and regular variants.
# The order is the following:
# A - Black
# B - Red
# C - Yellow
# D - Blue
# E - Mangenta
# F - Cyan
# G - White

# bA for example is the bright variant.

my $A = "\033[0;40m"; # Black
my $B = "\033[0;41m"; # Red
my $C = "\033[0;42m"; # Green
my $D = "\033[0;43m"; # Yellow
my $E = "\033[0;44m"; # Blue
my $F = "\033[0;45m"; # Mangenta
my $G = "\033[0;46m"; # Cyan
my $H = "\033[0;47m"; # White

my $bA = "\033[0;100m"; # Bright Black
my $bB = "\033[0;101m"; # Bright Red
my $bC = "\033[0;102m"; # Bright Green
my $bD = "\033[0;103m"; # Bright Yellow
my $bE = "\033[0;104m"; # Bright Blue
my $bF = "\033[0;105m"; # Bright Mangenta
my $bG = "\033[0;106m"; # Bright Cyan
my $bH = "\033[0;107m"; # Bright White

# Needed to hide the cursor.  
# There is a print command to return to cursor, but if you quit early, you must
# manually reset your terminal emulator. Any POSIX following system should have reset.
printf "\x1b[?25l";

# Convenience subroutine
sub runframe {
  printf("@_");  # Print the arguments sent in quotes to the subroutine.
  sleep(1); # Adding in sleep for a cushion. You can remove it if you wish.
  printf("\033[A$A\r");
}


#<----------Animation can begin below------------->
# Below is an example, remove it if you're making a new one from scratch.

runframe "
$B";

runframe "
$B ";

runframe "
$B  ";

runframe "
$B     ";

runframe "
 $B      ";

runframe "
  $B     ";

runframe "
   $B    ";

runframe "
    $B   ";

runframe "
     $B  ";

runframe "
       $B";

runframe "
$A ";

#<---------------------------------------------------------------->
# End of animation. I have decided to add a sleep to keep the final frame active for a bit.
sleep(5);

printf "\x1b[?25h";
