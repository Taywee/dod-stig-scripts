my $id = 'V-978';
my $title = 'Crontab files must have mode 0600 or less permissive.';
my $severity = 'medium';
my $description = 'To protect the integrity of scheduled system jobs and prevent malicious modification to these jobs, crontab files must be secured.
';
my $fix = 'Change the mode of the crontab files.
# chmod 0600 /var/spool/cron/crontabs/*';
my $autotest = 0;
my $autofix = 0;

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
    return 0;
}

sub fix()
{
    return 0;
}

1;
