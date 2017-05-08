use strict;
use warnings;
use Data::Dumper;

$|=1;

my @fruit = ('apple', 'orange', 'banana');

foreach my $fruit(@fruit) {
	$fruit = 'hello';
}

foreach my $fruit(@fruit) {
	print $fruit, "\n";
}

print Dumper(@fruit);
