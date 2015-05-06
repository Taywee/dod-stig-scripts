my $id = 'V-4430';
my $title = 'The cron.deny file must be owned by root, bin, or sys.';
my $severity = 'medium';
my $description = 'Cron daemon control files restrict the scheduling of automated tasks and must be protected.
';
my $fix = '# chown root /var/adm/cron/cron.deny';
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
