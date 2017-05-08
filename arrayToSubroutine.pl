use strict;
use warnings;

$|=1;

# A subroutine that prints
# an array.

sub print_array
{
    # Expect to be passed a reference
    # to an array.
    my $array_ref = shift;

    # Print each value of the array.
    # Note that we typecast the reference
    # to an actual array by prefixing it
    # with @.
    foreach my $value(@$array_ref) {
        print "$value", "\n";
    }
}

sub main
{
    # Declare and initialize an array.
    my @fruits = ('apple', 'orange', 'banana');

    # Pass a reference to the array to a function.
    print_array(\@fruits);
}

main();
