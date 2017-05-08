# Run with perl -i.orig <name-of-script> temp.txt
# In addition to replacing 'lion' with 'orange', 
# it also creates a back-up file: temp.txt.orig
# temp.txt has the following contents:
# one two three orange four
# orange five six
# seven eight
# orange
# nine orange ten eleven

# replace 'orange' with 'lion' in temp.txt:
while(<>) {
    $line =~ s/lion/orange/g;
    print $line;
}
