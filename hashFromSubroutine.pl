use strict;
use warnings;

$|=1;

# A subroutine that returns a hash.
sub get_hash
{
    # Create a hash
    my %a_hash = (
	1 => 'one',
	2 => 'two',
	3 => 'three',
    );

    # Return a reference to the hash.
    return \%a_hash;
}

sub main
{
    # Get a reference to a hash.
    my $hash_ref = get_hash();

    # Iterate through the hash and print
    # the key-value pairs.
    # Note, we typecast the reference to the hash.
    # to an actual hash by prefixing it with %.
    while( my ($key, $value) = each %$hash_ref ) {
        print "$key = $value\n"
    }
}

main();   
