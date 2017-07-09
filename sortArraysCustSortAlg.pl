use strict;
use warnings;
use Data::Dumper;

$|=1;

sub main
{
    # Declare and initialize an array.
    my @items = (10, 5, 20, 0);
    print "Array dump before sort: \n" . Dumper(@items) . "\n";

    # Sort the array.
    @items = sort {$a <=> $b} @items;
    print "Array dump after sort: \n" . Dumper(@items) . "\n";

    # print the array contents.
    foreach my $item(@items) {
        print "$item\n";
    }
}

main();
