use strict;
use warnings;

$|=1;

my @items = ("apple", "orange", "banana");

for(my $i=0; $i < @items; $i++) {
    print $items[$i], "\n";
}

my @items2 = ("hammer", "screwdriver", "chainsaw");

for(my $i=0; $i < scalar(@items2); $i++) {
    print $items2[$i], "\n";
}
