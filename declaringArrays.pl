use strict;
use warnings;

use Data::Dumper;

$|=1;


my @items = ('apple', 'bannana', 'orange');
print Dumper(@items);

=pod
Arrays in Perl can happily contain mixed data types, sort of. Actually, since Perl views all the following array elements as scalars, even though we've put numbers, strings and references into the array, the array really only contains the scalar datatype.
=cut
 
# Declare an empty hash
my %hash;
print Dumper(%hash);

# Declare an array containing a number, a string, 
# a reference to a hash and another string.
my @items2 = ();
my @items3 = (42, 'wombat', %hash, 'hello');
print Dumper(@items);

=pod
A good way to join the elements of an array together is by using join().

The first argument to this function is the string you want to use to join the array elements together. The second argument is the array. 
=cut

my @animals = ('dog', 'cat', 'rabbit');
print join(', ', @animals);
