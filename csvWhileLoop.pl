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

        # split $line on commas and declare an array of named variables and 
        # set them equal to the results of the split.
        my ($firstname, $surname, $job) = split(',', $line);
        
        # Print each line, filling in the variables w/ respective items.
        print "$firstname $surname works as a $job\n";
    }

    close(INPUT);
}

main();
