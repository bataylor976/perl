use strict;
use warnings;
use Data::Dumper;
$|=1;

my $text = "No money and no hair";

# split on spaces

my @items = split ' ', $text;
print Dumper(@items);
