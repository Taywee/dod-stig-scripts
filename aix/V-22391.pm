my $id = 'V-22391';
my $title = 'The cron.allow file must be group-owned by system, bin, sys, or cron.';
my $severity = 'medium';
my $description = ' If the group of the cron.allow is not set to system, bin, sys, or cron, the possibility exists for an unauthorized user to view or edit the list of users permitted to use cron. Unauthorized modification of this file could cause Denial of Service to authorized cron users or provide unauthorized users with the ability to run cron jobs.

';
my $fix = 'Change the group owner of the cron.allow file to bin, sys, system, or cron. 
Procedure: 
# chgrp cron /var/adm/cron/cron.allow';
my $autotest = 1;
my $autofix = 1;
my $filename = '/var/adm/cron/cron.allow';

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
    return STIG::GroupShouldMatch($filename, qr/^(bin|sys|cron|system)$/);
}

sub fix()
{
    return `chgrp cron $filename`;
}

1;
