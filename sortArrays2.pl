use strict;
use warnings;

sub main
{
    # Declare and initialize an array.
    my @items = ("tree", "zebra", "apple", "fox");
    
    # Sort the array.
    @items = sort @items;

    # print the array contents.
    foreach my $item(@items) {
	print "$item\n";
    }
}

main();
