use strict;
use warnings;

#Here's a simple program illustrating how to a) match and b) replace 
#text in Perl using regular expressions. 

# some test ...
my $text = "Let sleeping dogs lie.";

print "Before match & replace: $text\n";

# Matching
if($text =~ /dog/) {
    print "Match!\n";
}
else {
    print "No match.\n";
}

# Replace 'dog' with 'cat'.
$text =~ s/dog/cat/;

print "After match & replace: $text\n";
