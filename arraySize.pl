use strict;
use warnings;

$|=1;

my @items = ("apple", "orange", "banana");

my $size = @items;
print "Array contains $size items.\n";

my @items2 = ("apple", "orange", "banana");

# Below is same, but ues the scalar keyword 
# to make things more explicit.
my $size2 = scalar(@items2);
print "Array contains $size items.\n"
