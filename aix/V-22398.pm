my $id = 'V-22398';
my $title = 'The at.deny file must be group-owned by system, bin, sys, or cron.';
my $severity = 'medium';
my $description = 'If the group owner of the at.deny file is not set to system, bin, sys, or cron, unauthorized users could be allowed to view or edit sensitive information contained within the file.  Unauthorized modification could result in Denial of Service to authorized at users or provide unauthorized users with the ability to run at jobs.';
my $fix = 'Change the group owner of the at.deny file to bin, sys, system, or cron.
Procedure: 
# chgrp cron /var/adm/cron/at.deny';
my $autotest = 1;
my $autofix = 1;
my $filename = '/var/adm/cron/at.deny';

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
