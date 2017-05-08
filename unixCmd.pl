use strict;
use warnings;

$|=1;

# Execute simple unix command.
sub main {
    my @lines = `ls -l`;
    
    print join("", @lines);
}

main();
