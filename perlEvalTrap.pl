use strict;
use warnings;

$|=1;

my $result = eval {
    my $wrong = 5/0;

    print "Value: $wrong";
};

print "Script is still running!\n";

unless($result) {
    print $@;
}
