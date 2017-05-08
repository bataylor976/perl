use strict;
use warnings;

$|=1;

my @array1 = ("one", "two");

my @array2 = ("three", "four", "five");

push @array1, @array2;

foreach my $combined(@array1) {
    print "$combined\n";
}
