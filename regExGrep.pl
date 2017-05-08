use strict;
use warnings;

$|=1;

my @text = ('catfish', 'badger', 'dogfish', 'aardvark');

my @fish = grep(/fish/, @text);

print join(', ', @fish) . "\n";
