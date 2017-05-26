use strict;
use warnings;

# Use q|| (multi-line quote) to create a
# big string.
my $text = q|

<text>
1. My attorney had taken his shirt off and 
was pouring beer on his chest, to 
facilitate the tanning process. 
"What the hell are you yelling about?" 
he muttered, staring up at the sun 
with his eyes closed and covered 
with wraparound Spanish sunglasses. 
2. "Never mind," I said. 
"It's your turn to drive." 
I hit the brakes and aimed the 
Great Red Shark toward the shoulder 
of the highway. No point mentioning 
those bats, I thought. 3. The poor 
bastard will see them soon enough. 
</text>

|;

# Match all words:
# b matches word boundaries
# (matching words is half art, half science;
# so this simple solution is approximate).
my @words = $text =~ /\b\w+\b/g;

print "Found " . @words . " words.\n";


# Match xml tags:
# [...] matches ONE character; possible
# characters are placed between the [].
# If we start with ^, it means, match
# one character EXCEPT one of the enclosed.
# + means 'at least one of the preceeding'.
my @tags = $text =~ /(<[^<>]+>)/g;

print join(', ', @tags), "\n";

# Remove all newline characters.
$text =~ s/[\n\r\f]//g;

# Match the first 20 characters.

# ^ anchors to the start of the string.
# Without the g flag, the returned array 
# of matches will always contain at most 
# one match.

my ($match) = $text =~ /^(.{20})/;

print "First 20: $match\n";

# Remove space and newlines from the 
# start and end of the string. 
#We'll use ^ and $ to anchor
# to the start and end respectively.
# | specifies alternative matches.

$text =~ s/^[\n\r\f\s]*|[\n\r\f\s]*$//g;


# Step through the text matching all digits.
# This illustrates how to step through text
# looking for matches, without having to
# place all the matches all at once in 
# an array.
# We use d to match digits. We can equally well
# use [0-9] 

while($text =~ /(\d+)/g) {
    print "$1\n";
}
