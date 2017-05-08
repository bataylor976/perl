use strict;
use warnings;

sub main
{
    my $input = <STDIN>;
    # Removes the carriage return between the t and second single
    # quotation mark.
    chomp $input;

    print "You entered: '$input'\n";
}

main();
