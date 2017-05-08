use strict;
use warnings;

$|=1;

my @strings = ("fox", "cat", "apple");

my @sorted_strings = sort {$a cmp $b} @strings;

# Sort numbers numerically
my @numbers = (7, 10, 5.3, 8);

# Sort numbers in ascending numerical order.
my @sorted_numbers = sort {$a <=> $b} @numbers;

# Sort numbers in descending numerical order.
my @reverse_sorted = sort {$b <=> $a} @numbers;

foreach my $sorted_string(@sorted_strings) {
    print "$sorted_string\n";
} 

foreach my $sorted_number(@sorted_numbers) {
    print "$sorted_number\n";
}

foreach my $reverse_sorted(@reverse_sorted) {
    print "$reverse_sorted\n"
}
