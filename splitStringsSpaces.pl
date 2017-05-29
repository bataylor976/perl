use strict;
use warnings;

#To split on spaces, use the s (space) regex expression, followed by a plus 
#symbol (+). The plus matches one or more of the preceeding (space) characters. 
#This ensure that consecutive spaces are treated as one. 

# Note: two spaces between 'one' and 'two':
my $text = "one  two three";

# The plus symbol ("one or more")
# enables us to treat consecutive
# spaces as one.
my @tokens = split /\s+/, $text;

#Display the tokens.
print join(', ', @tokens) . "\n";
