use strict;
use warnings;

$|=1;

# Create an array containing some small numbers
# and some big numbers.
my @numbers = (1, 2, 300, 4, 500);

# Get only the small numbers
my @small = grep($_ < 10, @numbers);

print join(', ', @small) . "\n";
