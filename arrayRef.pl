use strict;
use warnings;

$|=1;

my $arrayRef = ['apple', 'orange', 'banana'];

print "Second item of arrayRef: $arrayRef->[1]\n";

my @fruits = ('apple', 'orange', 'banana');
my @numbers = (42, 1234);
my @strings = ('some', 'more', 'stuff', 'here');
my @assorted = ('assorted', 100, 0.7, 'hello');

# Build an array from references to the above arrays.
# (The same trick works with references to hashes!)

my @stuff = (\@fruits, \@numbers, \@strings, \@assorted);

print "First item of third array: $stuff[2][0]\n";
