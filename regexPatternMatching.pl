use strict;
use warnings;

$|=1;

# Some text...
my $text = "Let sleeping dogs lie.";

# We can use round brackets to 'capture'
# the matched text. You can use as many
# pairs of brackets as you like in your
# regex; the results appear in 
# $1, $2, $3 etc.
print "Regex (dog):\n";
$text =~ /(dog)/ and print "$1\n\n";

# Match everything between 's' and 'g'
print "Regex (s.*g):\n";
$text =~ /(s.*g)/ and print "$1\n\n";

# . matches any character. * means
# "as many as possible of these".
# Use a question mark if you want as
# few as possible.
print "Regex (s.*?g):\n";
$text =~ /(s.*?g)/ and print "$1\n\n";
