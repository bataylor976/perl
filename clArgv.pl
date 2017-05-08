use strict;
use warnings;

$|=1;

#outputs whatever is passed at command line.

sub main
{
    foreach my $arg(@ARGV) {
	print "$arg\n";
    }
}

main();
