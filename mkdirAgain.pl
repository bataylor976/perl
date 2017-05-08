use strict;
use warnings;

sub main {
    my $directory = "temp";

    unless(mkdir $directory) {
	die "Unable to create $directory\n";
    }
}

main();
