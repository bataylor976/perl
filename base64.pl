use strict;
use warnings;

use MIME::Base64;

sub main {
    my $text =
	    "We want the finest wines available to humanity.";

    print "Original text: $text\n";

    $text = encode_base64($text);
    print "Encoded text: $text\n";

    $text = decode_base64($text);
    print "Original text again: $text\n";
}

main();
