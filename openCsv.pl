use strict;
use warnings;

sub main
{
    # Note: this could be a full file path
    my $filename = "test.csv";
   
    open(INPUT, $filename) or die "Cannot open $filename";

    close(INPUT);
}

main();
