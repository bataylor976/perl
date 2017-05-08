use strict;
use warnings;
use Data::Dumper; #Just in case :)
$|=1;

# Declare and initialize array
my @fruit = ('apple', 'orange', 'banana');

foreach my $fruit(@fruit) {
	print $fruit, "\n";
}

my @pets = ('horse', 'toad', 'fish');

foreach(@pets) {
    	print $_, "\n";
}

my @cars = ('Honda', 'Ford', 'Kia');

foreach(@cars) {
	print;
	print "\n";
}
