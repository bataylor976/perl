use strict;
use warnings;

$|=1;

my @strings = ("cat", "dog", "aardvark", "zebra");

# Sort in alphabetical order (default).
my @sorted = sort { $a cmp $b } @strings;

print join(', ', @sorted) . "\n";
