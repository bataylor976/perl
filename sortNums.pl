use strict;
use warnings;

$|=1;

my @numbers = (1, 6, 4, 3, 10);

# Sort in numerical order
my @sorted = sort { $a <=> $b } @numbers;

print join(', ', @sorted) . "\n";
