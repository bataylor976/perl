use strict;
use warnings;

sub main
{
    # Note: this could be a full file path
    my $filename = "test.csv";
   
    open(INPUT, $filename) or die "Cannot open $filename";
    
    # Read the header line.
    my $line = <INPUT>;

    # Display the header, just to check things are working.
    print($line);

    close(INPUT);
}

main();
