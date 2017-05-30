use strict;
use warnings;

# Sometimes you want to split a string up but you don't want to throw anything 
# away. You want to include the stuff you're splitting on in the tokens. 
# Here we split some text on XML tags, but we include the tags in the tokens. 

my $text = q|
<one>some text</one> <two>contained</two>
<three>in tags</three>
|;

# (?= ... ) says that we do not want to include
# the enclosed regular expression in the match.
# With split, this means the matched stuff
# isn't thrown away.
# [^/<>] means "any character except , < or >
my @sentences = split /(?=<[^\/<>]+>)/, $text;

foreach my $sentence(@sentences) {
    # Remove newlines for readability.
    # Replace them with spaces
    $sentence =~ s/[\n\r\f]/ /g;

    # Trim space from the start and end.
    $sentence =~ s/^s*|s*$//;
    print "$sentence\n";
}
