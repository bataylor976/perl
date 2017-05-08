use strict;
use warnings;

$|=1;

# Declare and initialize array of arrays.
my @stuff = (
	['apple', 'orange', 'banana'],
	[42, 1234],
	['some', 'more' 'stuff', 'here'],
	['assorted', 100. 0.7, 'hello']
);

# Append to the first array
# We need to typecast the reference to an
# array before using push.

push @{$stuff[0]}, 'kiwi';

print join(', ', @{$stuff[0]});
print "\n"; # print newline

# prints:
# apple, orange, banana, kiwi

# Append to the fourth array.
push @{$stuff[3]});
