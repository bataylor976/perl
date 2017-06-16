use strict;
use warnings;
use Data::Dumper; #just in case I need it

$|=1;

my @fruit = ('apple', 'orange', 'banana');
# Dump the array

print "fruit array before adding items:\n";
print Dumper(@fruit) . "\n";

# Add an item to the end of the array.
push @fruit, 'pear';

print "Fruit array after adding pear to end of array:\n";
# Dump the array
print Dumper(@fruit) . "\n";

# Add an item to the start of the array.
unshift @fruit, 'grape';

print "Fruit array after pre-pending grape to array:\n";
# Dump the array
print Dumper(@fruit);
