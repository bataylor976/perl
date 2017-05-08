use strict;
use warnings;

$|=1;

my $string = "Tea is good with milk.";
$string =~ s/tea/coffee/ig;
print $string . "\n";

my $string2 = q|
Here is some multi-line text.
We could replace all words in this text
beginning with "c" with the word "badger".
Or of course we could do something 
completely different.
|;

# In the regular expression we've used b to match word boundaries  
# and w to match alphanumeric characters. 

$string2 =~ s/\bc\w*\b/badger/ig;

print $string2 . "\n";

my $string3 = q|
In 1956, Hungarians rose up against
their Russian-influenced communist
government. Stories abound of 13-year-old
girls throwing molotov cocktails at tanks.
For 4 days, the revolution seemed to have
succeeded.
|;

# find all numeric digits in a string and surround them with quotes
# d+ specifies that we want to match one or more consecutive 
# occurrences of digits. Surround the regular expression with 
# brackets (...) to capture the matched string. The captured string 
# can then be used in the replacement expression, where it can be 
# referred to as $1. 

$string3 =~ s/(\d+)/"$1"/ig;

print $string3 . "\n";
