use strict;
use warnings;
use Data::Dumper;

my @fruit = ('apple', 'orange', 'banana');

# Remove the last item ('banana') and save it.
my $end = pop @fruit;

print "$end\n";
# Remove first item off the array and save it.
# Remove first item off the array and save it.
my $start = shift @fruit;

print "$start\n";

print Dumper(@fruit);
