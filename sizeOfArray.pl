use strict;
use warnings;
use Data::Dumper; #just in case

$|=1;

my @fruit = ('apple', 'orange', 'banana');

my $size = @fruit;

print "$size\n";

# Or, if you want to make your scalar array usage explicit to avoid 
# confusion, you can use the scalar() keyword. 
print scalar(@fruit) . "\n";
