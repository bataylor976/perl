use strict;
use warnings;

use Getopt::Std;

sub main
{
    my %opts;

    # Note: colons after a and b, but
    # not after c or d.
    # -a and -b expect arguments.
    getopts('a:b:cd', \%opts);

    if($opts{c}) {
        print "Got -c flag\n";
    }

    if($opts{d}) {
        print "Got -d flag\n";
    }

    if($opts{a}) {
        print "Value of -a flag: " . $opts{a} . "\n";
    }

    if($opts{b}) {
        print "Value of -b flag: " . $opts{b} . "\n";
    }
}

main();  
