use strict;
use warnings;

$|=1;

my @stuff = ('one', 'two', 'three');

print join(', ', @stuff) . "\n";

@stuff = ();

# Now it's an empty array!

print join(', ', @stuff) . "\n";
