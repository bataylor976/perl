use strict;
use warnings;

$|=1;

my @strings = ('hello', 'eeeee', 'six', 'engine', 're-enter');

# Sort in order of number of e's, least e's first.
my @sorted = sort {
	
    # Get number of matches for 'e'
    # in $a and $b
    my @inA = $a =~ /e/g;
    my @inB = $b =~ /e/g;

    # Compare numbers of matches.
    # return is just for clarity.
    return scalar(@inA) <=> scalar(@inB);

} @strings;

print join(', ', @sorted) . "\n";

# prints:
# six, hello, engine, re-enter, eeeee
