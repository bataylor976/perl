use strict;
use warnings;

$|=1;

my @names = ('Bob', 'Pete', 'Sue', 'Alice');

# Note that we are assigning a new value to $_
map($_ = "'$_'", @names);

print join(', ', @names) . "\n";
