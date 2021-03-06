my $id = 'V-4394';
my $title = 'The /etc/syslog.conf file must be group-owned by bin, sys, or system.';
my $severity = 'medium';
my $description = 'If the group owner of /etc/syslog.conf is not root, bin, or sys, unauthorized users could be permitted to view, edit, or delete important system messages handled by the syslog facility.';
my $fix = 'Change the group owner of the /etc/syslog.conf file to bin, sys, or system.

Procedure:
# chgrp system /etc/syslog.conf';
my $autotest = 1;
my $autofix = 1;
my $filename = '/etc/syslog.conf';

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
