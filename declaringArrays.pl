use strict;
use warnings;

use Data::Dumper;

$|=1;


my @fruits = ('apple', 'banana', 'orange');
print "Fruits array dump: \n"; 
print Dumper(@fruits) . "\n";

=pod
Arrays in Perl can happily contain mixed data types, sort of. Actually, since Perl views all the following array elements as scalars, even though we've put numbers, strings and references into the array, the array really only contains the scalar datatype.
=cut

# Declare a hash.
my %friend_hobbies = (
    'Roger' => 'hang gliding',
    'Penny' => 'driving',
    'Peter' => 'bus surfing',
    'Richard' => 'collects spores and fungi',
    'Clare' => 'competitive drinking',
    'Lisa' => 'pole vaulting',
);

print "friend_hobbies hash dump:\n";
print Dumper(%friend_hobbies) . "\n";

# Declare an array containing a number, a string, 
# a reference to a hash and another string.

print "Mixed array dump (array of integer, string, hash, and array):\n";
my @mixed_array = (42, 'wombat', %friend_hobbies, @fruits);
print Dumper(@mixed_array) . "\n";

=pod
A good way to join the elements of an array together is by using join().

The first argument to this function is the string you want to use to join the array elements together. The second argument is the array. 
=cut

print "Join array elements using comma:\n";
my @animals = ('dog', 'cat', 'rabbit');
print join(', ', @animals) . "\n";
