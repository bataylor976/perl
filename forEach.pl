use strict;
use warnings;

$|=1;

my @items = ("apple", "orange", "banana");

foreach my $item(@items) {
    print "$item\n";
}

# The following is equivalent to the one above.
# It just uses the default variable, '$_'.

my @items2 = ("apple", "orange", "banana");

foreach(@items2) {
    print "$_\n";
}
