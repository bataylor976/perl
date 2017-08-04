use strict;
use warnings;

use MIME::Base64;
use Getopt::Std;

sub usage {
my $usage =q{
Encodes or decodes base64 files to or from binary files.
usage: 
    code64.pl [-d|-e] <input file> [-o] 
    
examples:

    decoding:
    code64.pl -d temp.txt -o out.txt
    
    encoding:
    code64.pl -e temp.txt -o out.txt
};

    return $usage;
}

sub main {
    my %opts;

    # Get command-line options. We want the use 
    # to specify an input file (either for encoding
    # or decoding) and an output file.
    getopts('e:d:o:', \%opts);

    # User must enter either -e or 
    # -d
    unless($opts{e} or $opts{d}) {
        print "\nNo input file specified\n";
        die usage();
    }

    # User must specify -o and hasn't.
    unless($opts{o}) {
        die "\nNo output file specified\n";
    }
    
    # Now we've got an output file name.
    my $output = $opts{o};

    # The input file name is after -e or -d.
    my $input = $opts{e} || $opts{d};
   
    # Open the input file.
    unless(open INPUT, $input) {
        die "\nUnable to open input file '$input'\n";
    }

    unless(open OUTPUT, '>' .$output) {
        die "\nUnable to create output file '$output'\n";
    }

    # Stop text mode mangling our files.
    binmode INPUT;
    binmode OUTPUT;

    # Undef the file record separator so we can read the
    # whole thing in one go.
    undef $/;

    # Read the input file.
    my $contents = <INPUT>;

    # Create the output file, encoding or decoding as 
    # specified by the user.
    if($opts{e}) {
        print OUTPUT encode_base64($contents);
        print "Encoded '$input'; results in '$output'\n";
    }
    elsif($opts{d}) {
        print OUTPUT decode_base64($contents);
        print "Decoded '$input'; results in '$output'\n";
    }
    
    close INPUT;
    close OUTPUT;
}

main();
