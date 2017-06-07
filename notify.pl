#!/usr/bin/perl
# 
# Modified / updated by Ketan Patel & Ben Taylor
# This script sends email with attachment
# It is called inside another script, sa_report.sh

use MIME::Lite;
use Getopt::Std;
use Net::SMTP;
 
my $SMTP_SERVER = '/usr/sbin/sendmail -t';
my $DEFAULT_SENDER = 'person@email.com';
my $DEFAULT_RECIPIENT = 'person@another-email.com';
#my $def_cc ='person@some-other-email.com';
   
my $stamp = `date -d 'now -1 days' +%b-%d-%y`;
my $hstnm = `hostname`;
     
# process options
getopts('hf:t:s:', \%o);
     
$o{f} ||= $DEFAULT_SENDER;
$o{t} ||= $DEFAULT_RECIPIENT;
$o{s} ||= $stamp.' '.$hstnm.' '.' : System Utilization Report';
     
if ($o{h} or !@ARGV) {
    die "usage:\n\t$0 -h -f -t -s /var/log/log.txt\n";
}
     
# construct and send email
$msg = MIME::Lite->new(
    From => $o{f},
    To => $o{t},
#    cc => ($def_cc),
    Subject => $o{s},
    Data => "Hi",
    Type => "multipart/mixed",
);
while (@ARGV) {
    $msg->attach(
        'Type' => 'application/octet-stream',
        'Encoding' => 'base64',
        'Path' => shift @ARGV
    );
}
     
$msg->send();
