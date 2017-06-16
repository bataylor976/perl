use strict;
use warnings;
use Data::Dumper; #just in case I need it

$|=1;

my @items = (42, 'wombat', 'hello');

print "$items[0]\n";
print "$items[1]\n";
print "$items[2]\n";
print "$items[$#items]\n";
