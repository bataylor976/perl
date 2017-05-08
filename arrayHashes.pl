use strict;
use warnings;

my @stuff = (
    {
	'Jack' => 'stamp collecting',
	'Pete' => 'golf',
	'Lisa' => 'bus surfing',
    },

    {
	1 => 'Mon',
	2 => 'Tues',
	3 => 'Wed',
	# etc.
    },
);

print $stuff[0]{'Jack'}, "\n";
print $stuff[1]{2}, "\n";
