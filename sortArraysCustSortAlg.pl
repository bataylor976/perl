use strict;
use warnings;

$|=1;

sub main
{
    # Declare and initialize an array.
    my @items = (0, 5, 10, 20);
    
    # Sort the array.
    @items = sort {$a <=> $b} @items;

    # print the array contents.
    foreach my $item(@items) {
        print "$item\n";
    }
}

main();
