use strict;
use warnings;

sub main 
{
    # Declare and initialize an array.
    my @items = (0, 5, 96, 36, 14, 73, 29, 29, 10, 20);

    # sort the array.
    @items = sort {
        if($a > $b) {
            return 1;
	}
	elsif($b > $a) {
 	    return -1;
	}
	else {
	    return 0;
	}
    } @items;

    # print the array contents.
    foreach my $item(@items) {
	print "$item\n";
    }
}

main();
