use strict;
use warnings;

$|=1;

sub main
{
    my $input = <STDIN>;
    
    $input =~ s/[\n\r\f\t]//g;

    print "You entered: '$input'\n";
}

main();
