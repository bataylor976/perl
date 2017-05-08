use strict;
use warnings;

$|=1;

my %sky = (
    'blue' => 'sun',
    'grey' => 'rain',
    'black' => 'night',
    'yellow' => 'storm',
);

print "Entries: ", scalar(keys(%sky)). "\n";
