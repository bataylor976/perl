use strict;
use warnings;
use Data::Dumper;

my %hobbies = (
    'Roger' => 'hang gliding',
    'Penny' => 'diving',
    'Peter' => 'bus surfing',
    'Richard' => 'collects spores and fungi',
    'Clare' => 'competitive drinking',
    'Lisa' => 'pole vaulting',
);

# Iterate over the hash using each.

print "\nUsing each: \n";
while( my ($name, $hobby) = each %hobbies ) {
    print "$name: $hobby\n";
}

# Iterate over the hash using keys.

print "\nUsing keys: \n";

foreach my $name(keys %hobbies) {
    my $hobby = $hobbies{$name};

    print "$name: $hobby\n";
}
