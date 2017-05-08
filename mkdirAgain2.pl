use strict;
use warnings;

sub main {
    my $directory = "temp";

    unless(-d $directory or mkdir $directory) {
	die "Unable to create $directory\n";
    }
}

main();
