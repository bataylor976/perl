use strict;
use warnings;

use LWP::Simple;
$|=1;

sub main
{
    my $data = get("http://news.bbc.co.uk");
   
    print "Retrieved " . length($data) . " bytes of data.\n";
}

main();
