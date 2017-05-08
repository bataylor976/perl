use strict;
use warnings;
use Data::Dumper;

$|=1;

# Array of arrays

my @an_array = (
    [1, 2, 3],
    ['hello', 'there'],
    ['foxtrot', 'tango', 'waltz'],
);

print $an_array[1][0], "\n";

# Array of hashes

my @an_array2 = (
    { 1 => 'one', 2 => 'two', 3 => 'three' },
    { 'fox' => 'animal', 'chalk' => 'mineral' },
);

print $an_array2[1]->{'fox'}, "\n";
