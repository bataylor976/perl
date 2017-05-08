use strict;
use warnings;

$|=1;

my @strings = ("cat", "dog", "aardvark", "lizard");

my @sorted = sort @strings;

# @sorted is now sorted. @strings remains the same, of course.

print join(', ', @sorted) . "\n";
