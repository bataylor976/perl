use strict;
use warnings;

my $text = "one|two|three";

# // Here are regular expression quotes.
# Note the backslash before the pipe.
# Pipes are a special character in regular
# expressions (used to specify alternatives)
# therefore we need to escape them here.
my @tokens = split /\|/, $text;

# Display the tokens.
print join(', ', @tokens) . "\n";
