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
}

main();


