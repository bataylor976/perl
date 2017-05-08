use strict;
use warnings;

sub main {
    my $directory = "fruit";

    unless(mkdir($directory, 0755)) {
	die "Unable to create $directory\n";
    }
}

main();
