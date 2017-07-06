use strict;
use warnings;

$|=1;

my @fruit = ('apple', 'orange', 'banana');

my $size = @fruit;

print "Size of array is $size\n";

# Or, if you want to make your scalar array usage explicit to avoid 
# confusion, you can use the scalar() keyword.
print "Size of array is " . scalar(@fruit) . "\n";
