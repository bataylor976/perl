use strict;
use warnings;

$|=1;

my %hobbies = (
    'Roger' => 'hang gliding',
    'Penny' => 'diving',
    'Peter' => 'bus surfing',
    'Richard' => 'collects spores and fungi',
    'Clare' => 'competitive drinking',
    'Lisa' => 'pole vaulting',
);

print "\n";

# Iterate over the hash keys. Use keys to get the 
# keys as an array, sort the array,
# then iterate over the array with foreach.

foreach my $name(sort {$a cmp $b} keys %hobbies) {
    my $hobby = $hobbies{$name};

    print "$name: $hobby\n";
}

print "\n";

# If the hash keys are numbers, you need 
# to use <=> and not cmp to sort.

my %numbers = (
    3 => 'three',
    0 => 'zero',
    2 => 'two',
    1 => 'one',
);

foreach my $digit(sort {$a <=> $b} keys %numbers) {
    my $number = $numbers{$digit};
    
    print "$digit: $number\n";
}

print "\n";
