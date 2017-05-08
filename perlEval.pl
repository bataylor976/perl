use strict;
use warnings;

$|=1;

# Create a string containing perl code.
my $code = q|
    my $text = "Hello";

    print "$text\n";

    # Deliberately introduce an error.
    jljlk
|;

my $result = eval($code);

# If there's a problem eval'ing the 
# code, eval() returns undef and 
# the error is found in $@.
unless($result) {
    print $@;
}
