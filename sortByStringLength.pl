use strict;
use warnings;

$|=1;

my @strings = ("cat", "dog", "b", "aardvark", "zebra");

# Sort in order of string length, longest first

my @sorted = sort { length($b) <=> length($a) } @strings;

print join(', ', @sorted) . "\n";
