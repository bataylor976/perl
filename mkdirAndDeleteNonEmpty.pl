use strict;
use warnings;

use File::Path;

$|=1;

sub main
{
    my $directory = "temp";
    #create directory if it doesn't exist.
    unless(-e $directory or mkdir $directory) {
	die "Unable to create $directory\n";
    }

    if(-e $directory)
    {
        print "Directory '$directory' created.\n";
    }
    else
    {
        print "Directory '$directory' still not created.\n";
    }
    
    # create the file inside temp directory, if it doesn't exist
    my $file = "temp/temp.txt";
    
    unless(-e $file) {
    
    open my $fc, ">", $file;
    close $fc;
    }

    if(-e $file)
    {
        print "File '$file' created.\n";
    }
    else
    {
        print "File '$file' still not created.\n";
    }

    rmtree $directory;

    if(-e $directory)
    {
        print "Directory '$directory' still exists.\n";
    }
    else
    {
        print "Directory '$directory' and file '$file' deleted.\n";
    }
}
main();
