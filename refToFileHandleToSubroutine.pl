use strict;
use warnings;

$|=1;


# You can also create references to file handles; then you can pass 
# the file handles to subroutines or even store them in objects if 
# you're doing OO programming. 


# A subroutine that writes to
# a file handle. The file handle
# is passed in as a reference.
sub write_to_file
{
    my $file_ref = shift;
    print $file_ref "Hello there";
}

sub main
{
    my $file = "temp.txt";

    # Create a file.
    unless(open FILE, '>'.$file) {
        die "\nCannot create '$file'\n";
    }

    # Pass a reference to the file handle
    # to a subroutine.
    write_to_file(*FILE);

    close FILE;
}

main();
