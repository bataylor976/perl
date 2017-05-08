use strict;
use warnings;

$|=1;

my $string = "Tea is good with milk.";

print "Current string: $string\n";

my $substring1 = substr($string, 4, 2);
print "Substring to be replaced: $substring1\n";

my $substring2 = "might be";
print "The replacing substring: $substring2\n";

substr($string, 4, 2) = "might be";

print "New string: $string\n";
