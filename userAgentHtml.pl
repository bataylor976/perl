use strict;
use warnings;

use LWP::Simple;

$|=1;

sub main
{
    my $ua = LWP::UserAgent->new();

    my $response = $ua->get('http://news.bbc.co.uk');

    if ($response->is_success) {
        print "Retrieved " .
            	      length($response->decoded_content) .
		      " bytes of data.\n";
    }
    else {
        print "Error: " . $response->status_line . "\n";
    }
}

main();
