#WIP:

use strict;
use warnings;

# For parsing
use XML::Simple;

# For downloading
use LWP::Simple;

# For debug output
use Data::Dumper;

# Turn off output buffering
$|=1;

sub main
{

    print "\nDownloading . . . \n";
    my $data = get('http://localhost/bands.xml');

    my $parser = new XML::Simple;

    print "\nParsing . . . \n";
    my $dom = $parser->XMLin($data);

    print "\n\n";

    # Debug output
    # print Dumper($dom);

    # Data structure is a hash containing one key, 'entry'.
    # Get the hash value and cast to an array.
    my @entries = @{ $dom->{'entry'} };

    # Go through each array 'entry' element.
    foreach my $entry(@entries)
    {
        # Each element is a hash.
        # The band name can be got from one hash key.
        my $band = $entry->{'band'};

        print "$band\n";

        # The hash of albums are in another has value.
        my $albums = $entry->{'album'};

        # Go through all key-values pairs of the albums hash.
        # Notice we cast the reference to a hash (%$albums)
        while( my ($album, $details) = each %$albums )
        {
            # The chart position is the sole member of the hash found
            # in one value of the albums hash.
            my $position = $details->{'chartposition'};
            
            # The album name is found in the other value of the albums hash.
            print "'$album' reached chart position $position\n";
        }
         
        print "\n\n";
    }    
}

main();
