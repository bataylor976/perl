use strict;
use warnings;

$|=1;

my $string = q|
In 1956, Hungarians rose up against
their Russian-influenced communist
government. Stories abound of 13-year-old
girls throwing molotov cocktails at tanks.
For 4 days, the revolution seemed to have
succeeded.
|;

sub fix_numbers
{
    # Get the subroutine's argument.
    my $arg = shift;

    # Hash of stuff we want to replace.
    my %replace = (
        "13" => "thirteen",
	"4" => "four",
    );

    # See if there's a replacement.
    # for the given text.
    my $text = $replace{$arg};

    if(defined($text))
    {
        # Got a replacement; return it.    
	return $text;
    }

    # No replacement; return original text.
    return $arg;
}

sub main
{
    #Note that we've had to add the e flag on the end of the s/// 
    #expression in order to run the replacement text as Perl code.   
    #As before we've captured the text we want to replace, but this  
    #time we've passed it to the subroutine as an argument.

    $string =~ s/(\d+)/fix_numbers($1)/eig;

    print $string;
}

main();
