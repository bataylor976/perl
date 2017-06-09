use strict;
use warnings;

$|=1;

# This is an array.
my @fruits = ('apple', 'orange', 'pear');

# This is a reference to an array.
my $creepy = ['snake', 'spider', 'ant'];

# Access an array element
print $fruits[1], "\n";

# Access an array element via a reference.
print $creepy->[2], "\n";

# Get a reference to @fruits.
my $fruits = \@fruits;

# Access fruits array via its reference.
print $fruits->[0], "\n";
