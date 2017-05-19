use strict;
use warnings;

$|=1;

# Use q|| (multi-line quote) to create a
# big string.
my $text = q|
My attorney had taken his shirt off and 
was pouring beer on his chest, to 
facilitate the tanning process. 
"What the hell are you yelling about?" 
he muttered, staring up at the sun 
with his eyes closed and covered 
with wraparound Spanish sunglasses. 
"Never mind," I said. 
"It's your turn to drive." 
I hit the brakes and aimed the 
Great Red Shark toward the shoulder 
of the highway. No point mentioning 
those bats, I thought. The poor 
bastard will see them soon enough.
|;

# Match all occurrences of 'the':
my @matches = $text =~ /(the)/g;

# Display the matches.
print "Matching all occurrences of 'the': \n";
print join(', ', @matches), "\n\n";

# Same again, but this time we'll
# add in the i flag (case insensitive)

print "Matching all occurrences of 'the' (case insensitive): \n";
# Match all occurrences of 'the':
my @matches2 = $text =~ /(the)/ig;

# Display the maches.
print join(', ', @matches2), "\n";
