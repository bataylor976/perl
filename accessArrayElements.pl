use strict;
use warnings;
use Data::Dumper; #just in case I need it

$|=1;

my @items = (42, 'wombat', 'hello');

print "$items[0]\n";
print "$items[1]\n";
print "$items[2]\n";
print "$items[$#items]\n";

my @fruit = ('apple', 'orange', 'banana');

# Add an item to the end of the array.

push @fruit, 'pear';
print Dumper(@fruit);

unshift @fruit, 'grape';

print Dumper(@fruit);
