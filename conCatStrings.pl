use strict;
use warnings;

$|=1;

my $string1 = "Nice";
my $string2 = "weather";
my $string3 = "today";

my $string4 = $string1 . ' ' . $string2 . ' ' . $string3;

print $string4 . "\n";

my $string5 = "cat";
my $string6 = "fish";

print $string5 . $string6 . "\n";
print $string5, $string6 . "\n";

my $user = "Frank";
my $fruit = "tangerine";

print "Hello $user, would you like a $fruit?\n";
