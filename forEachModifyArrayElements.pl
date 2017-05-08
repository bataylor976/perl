use strict;
use warnings;

$|=1;

my @items = ("apple", "orange", "banana");

# Modify the items (this is a trivial example but
# of course it could easily do something a lot
# more complex and useful).

foreach my $item(@items) {
    $item = 'FRUIT: ' . $item;
}

# Display the array.
foreach my $item(@items) {
    print "$item\n";
}
