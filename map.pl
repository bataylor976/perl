use strict;
use warnings;

$|=1;

my @names = ('Bob', 'Pete', 'Sue', 'Alice');

my @prefixed = map("NAME: $_", @names);

print join(', ', @prefixed) . "\n";
