use strict;
use warnings;

$|=1;

my $string = "hello\tthere how\nare you?";

my @tokens = split /\s/, $string;

#Print out the tokens we've extracted by
#splitting the string, one per line.
foreach my $token(@tokens) {
    print "$token\n";
}

my $string2 = "hello\tthere  how\nare you?";

my @tokens2 = split /\s+/, $string;

#Print out the tokens we've extracted by
#splitting the string, one per line.
foreach my $token(@tokens2) {
    print "$token\n";
}
