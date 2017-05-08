use strict;
use warnings;
use Data::Dumper;

$|=1;

my $string = "hello there how are you?";

my @tokens = split / /, $string;
print Dumper(@tokens);

# Print out the tokens we've extracted by 
# splitting the string, one per line.

foreach my $token(@tokens) {
    print "$token\n";
}
