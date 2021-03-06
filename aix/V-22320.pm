my $id = 'V-22320';
my $title = 'The /etc/resolv.conf file must be group-owned by bin, sys, or system.';
my $severity = 'medium';
my $description = 'The resolv.conf (or equivalent) file configures the system\'s DNS resolver.  DNS is used to resolve host names to IP addresses.  If DNS configuration is modified maliciously, host name resolution may fail or return incorrect information.  DNS may be used by a variety of system security functions, such as time synchronization, centralized authentication, and remote system logging.';
my $fix = 'Change the group owner of the /etc/resolv.conf file to bin, sys, or system.

Procedure:
# chgrp system /etc/resolv.conf';
my $autotest = 1;
my $autofix = 1;
my $filename = '/etc/resolv.conf';

use lib 'lib';
use STIG;


sub getId()
{
    return $id;
}

sub getTitle()
{
    return $title;
}

sub getSeverity()
{
    return $severity;
}

sub getDescription()
{
    return $description;
}

sub getFix()
{
    return $fix;
}

sub canTest()
{
    return $autotest;
}

sub canFix()
{
    return $autofix;
}

sub test()
{
    return STIG::GroupShouldMatch($filename, qr/^(bin|sys|system)$/);
}

sub fix()
{
    return `chgrp system $filename`;
}

1;
