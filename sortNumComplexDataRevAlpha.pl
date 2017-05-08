use strict;
use warnings;

$|=1;

my @strings = ("cat", "dog", "aardvark", "zebra");

# Sort in reverse alphabetical order
my @sorted = sort { $b cmp $a } @strings;

print join(', ', @sorted) . "\n";
