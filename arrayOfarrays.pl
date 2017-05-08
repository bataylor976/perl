use strict;
use warnings;

$|=1;

my @stuff = (
	['apple', 'orange', 'banana'],
	[42, 1234],
	['some', 'more', 'stuff', 'here'],
 	['assorted', 100, 0.7, 'hello']
);

print $stuff[0][1] . "\n";	# prints 'orange'
print $stuff[2][3] . "\n"; 	# prints 'here'
print $stuff[3][2] . "\n";	# prints 0.7
