# Run with perl -i.orig <name-of-script> temp.txt
# In addition to replacing 'lion' with 'orange', 
# it also creates a back-up file: temp.txt.orig
# temp.txt has the following contents:
# one two three lion four
# lion five six
# seven eight
# lion
# nine lion ten eleven

# replace 'lion' with 'orange' in temp.txt:
while(my $line = <>) {
    $line =~ s/lion/orange/g;
    print $line;
}

print "Replaced 'lion' with 'orange.'";
