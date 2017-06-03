use strict;
use warnings;

sub main
{
    # Note: this could be a full file path
    my $filename = "test.csv";

    open(INPUT, $filename) or die "Cannot open $filename";

    # Read the header line.
    my $line = <INPUT>;

    # Read the lines one by one.
    while($line = <INPUT>)
    {
        # Remove invisible newline character from end of line:
        chomp($line);
        
        # Just display the line for now.
        # Put variable in quotations to prove no newline character.
        print("'$line'");
    }



    close(INPUT);
}

main();
