#!/usr/bin/perl
# invoked by entering: 'http://<ip-address></path/to/cgi-bin><script-name>?&mode=enter'
# All variables must be declared.
use strict;

# Warn about uninitialized values.
use warnings;

# Use CGI.pm to get url parameters.
use CGI;

# prints 'hello'
sub hello {
    print "Hello\n";
}

# prints 'Goodbye'
sub goodbye {
    print "Goodbye\n";
}

# Entry point -- called later.
sub main {
    
    # Print the standard HTML MIME header.
    print 'Content-Type: text/html';
    print "\n\n";

    # Get the 'mode' URL parameter
    # If it's not defined, set it to
    # an empty string.
    my $mode = CGI::param('mode') || '';

    # Define a hash with strings as the keys
    # and references to subroutines as the values.
    my %routines = (
        'enter' => \&hello,
        'exit' => \&goodbye,
    );

    # Try to get a subroutine for the given mode.
    my $routine = $routines{$mode};

    # If we didn't find a subroutine corresponding
    # to this mode parameter, quit.
    unless(defined($routine)) {
        print "\nUnknown mode|n";
        die;
    }

    # Call the subroutine via its reference.
    $routine->();
}

# Start everything.
main();
