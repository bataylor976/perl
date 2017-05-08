use strict;
use warnings;

$|=1;

my @items = ("apple", "orange", "banana");

# Both foreach and the default regular expression quotes //
# use the $_ variable implicitly if no other is specified.

foreach (@items) {
    /orange/ and print "Found one!" . "\n";
}
#TODO: See "Another Way of Looping Through Arrays in Perl"
