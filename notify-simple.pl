#!/usr/bin/perl
use MIME::Lite;
 
$to = 'email@some-place.com';
#$cc = 'email@another-place.com';
$from = 'email@somewhere-else.com';
$subject = 'Test Email';
$message = 'This is a test email sent by Perl Script. See attached.';

$msg = MIME::Lite->new(
                 From     => $from,
                 To       => $to,
#                 Cc       => $cc,
                 Subject  => $subject,
                 Type     => 'multipart/mixed'
                 );

# Add your text message.
$msg->attach(Type         => 'text',
             Data         => $message
             );
            
# Specify your file as attachement.
$msg->attach(Type         => 'text/plain',
             Path         => '/var/log/',
             Filename     => 'log.txt',
             Disposition  => 'attachment'
            );       
                 
$msg->send;
