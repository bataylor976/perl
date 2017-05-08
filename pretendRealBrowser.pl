use strict;
use warnings;
use LWP::UserAgent;
use HTTP::Cookies;

sub main
{
    # Create the fake browser (user agent).
    my $ua = LWP::UserAgent->new();

    # Accept cookies. You don't need to supply
    # any options to new() here, but just for 
    # kicks we'll save the cookies to a file.
    my $cookies = HTTP::Cookies->new(
	file => "cookies.txt",
 	autosave => 1,
    );

    $ua->cookie_jar($cookies);

    # Pretend to be Internet Explorer.
    $ua->agent("Windows IE 7");
    # or maybe ... $ua->agent("Mozilla/8.0);
  
    # Get some HTML.
    my $response = $ua->get('http://news.bbc.co.uk');

    unless($response->is_success) {
        print "Error: " . $response->status_line;
    }

    # Let's save the output.
    my $save = "save.html";

    unless(open SAVE, '>' . $save) {
	die "\nCannot create save file '$save'\n";
    }

    # Without this line, we may get a 
    # 'wide characters in print' warning.
    binmode(SAVE, ":utf8");
    
    print SAVE $response->decoded_content;

    close SAVE;

    print "Saved " . 
 	length($response->decoded_content) .
 	" bytes of data to '$save'.\n";
}

main();
