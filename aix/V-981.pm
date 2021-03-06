my $id = 'V-981';
my $title = 'Cron and crontab directories must be group-owned by system, sys, bin, or cron.';
my $severity = 'medium';
my $description = 'To protect the integrity of scheduled system jobs and to prevent malicious modification to these jobs, crontab files must be secured.  Failure to give group ownership of cron or crontab directories to a system group provides the designated group and unauthorized users with the potential to access sensitive information or change the system configuration which could weaken the system\'s security posture.';
my $fix = 'Change the group owner of the crontab directories to sys, system, bin, or cron. 
Procedure: # 
chown cron /var/spool/cron/crontabs';
my $autotest = 1;
my $autofix = 1;
my $filename = '/var/spool/cron/crontabs';

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
