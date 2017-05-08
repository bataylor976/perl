use strict;
use warnings;
use Data::Dumper;

$|=1;

# Create a scalar value.
my $a_scalar = "Some text.";

# Create an array
my @an_array = ('apple', 'orange', 'cherry');

my %a_hash = (
    'animal' => 'bear',
    'plant' => 'oak',
    'fungus' => 'truffle',
);

# Reference to a scalar
my $scalar_ref = \$a_scalar;

# Reference to an array
my $array_ref = \@an_array;

# Reference to a hash.
my $hash_ref = \%a_hash;

#print scalar value
print $a_scalar, "\n";

#print scalar value using reference
print $$scalar_ref, "\n";

#print array value
print $an_array[0], "\n";

#print array value using reference
print $array_ref->[0], "\n";

#print hash value
print $a_hash{'plant'}, "\n";

#print hash value using reference
print $hash_ref->{'plant'}, "\n";

#create references to array directly:
my $array_ref = ['one', 'two', 'three'];

#create reference to hash directly:
my $hash_ref = {
    'fox' => 'animal',
    'rabbit' => 'animal',
    'chalk' => 'mineral',
    'cabbage' => 'vegetable',
};

print Dumper($array_ref), "\n";
print Dumper($hash_ref), "\n";
