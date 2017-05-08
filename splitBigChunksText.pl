use strict;
use warnings;

# Pretend this is a huge piece of data that we
# don't want to bung into an array.
my $string = "hello\tthere how\nare you?";

while($string =~ /([^\s]+)/g) {
    print "$1\n";
}
