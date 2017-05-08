use strict;
use warnings;

$|=1;

my @names = qw(Foo Bar Baz);
foreach (@names) {
	print $_ . "\n";
}
