use strict;
use warnings;

# Put the file name in a string variable
# so we can use it both to open the file
# and to refer to in an error message
# if needed.
my $file = "temp.txt";

unless(-e $file) {
    # create the file if it doesn't exist
    open my $fc, ">", $file;
    close $fc;
}

# Use the open() function to open the file.
unless(open FILE, $file) {
    #We'll just print the line for now.
    die "\nUnable to open $file\n";
}

# Read the file one line at a time.
while(my $line = <FILE>) {
    # We'll just print the line for now.
    print $line;
}

# close the file.
close FILE;

if(-e $file)
{
    print "File exists!\n";
}
else
{
    print "File gone!\n";
}

#unlink("temp.txt");
#my $delcmd = "del temp.txt";
#`$delcmd`;
#if(-e $file) 
#{
#    print "File still exists!\n";
#} 
#else 
#{
#    print "File gone!\n";
#}

# A simpler way is just to check the return value from unlink. 
# unlink returns the number of files it has deleted. 

my $removed = unlink($file);
print "Removed $removed file(s).\n";
