use strict;
use warnings;
use Getopt::Std;
$|=1;

#output should look like this:
#$VAR1 = {
#          'd' => 1,
#          'c' => 1,
#          'b' => 'hello',
#          'a' => 1
#        };

sub main
{
    my %opts;

    # Expect three flags, -a, -b and -c.
    # Only -b can take an argument
    # (Hence the : after b).
    getopts('ab:cd', \%opts);

    use Data::Dumper;
    print Dumper(\%opts);
}

main();
