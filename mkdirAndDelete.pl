use strict;
use warnings;

sub main {
    my $directory = "temp";

    #unless(mkdir $directory) {
    #    die "Unable to create $directory\n";
    #}

    if (-e $directory)
    {
        print "Directory '$directory' already exists\n";
    }
    else
    {
        print "Creating directory '$directory'\n";
    }


    unless(-e $directory or mkdir $directory) {
        die "Unable to create $directory\n";
    }

    rmdir $directory;

    if(-e $directory)
    {
        print "Directory '$directory' still exists\n";
    }
    else
    {
        print "Directory '$directory' deleted.\n";
    }
}

main();
