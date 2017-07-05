use strict;
use warnings;
use Data::Dumper;

my @fruit = ('apple', 'orange', 'banana');
print "array before pop and shift: \n";
print Dumper(@fruit);
print"\n";

# Remove the last item ('banana') and save it.
my $end = pop@fruit;
print "pop'd item: \n";
print "$end\n";
print"\n";

# Remove first item off the array and save it.
my $start = shift @fruit;
print "shift'd item: \n";
print "$start\n";
print"\n";

print "array remaining after pop and shift: \n";
print Dumper(@fruit);
