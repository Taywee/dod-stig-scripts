my $id = 'V-4368';
my $title = 'The at.deny file must be owned by root, bin, or sys.';
my $severity = 'medium';
my $description = 'If the owner of the at.deny file is not set to root, bin, or sys, unauthorized users could be allowed to view or edit sensitive information contained within the file.';
my $fix = 'Change the owner of the at.deny file.
# chown root /var/adm/cron/at.deny';
my $auto = 0;

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

sub auto()
{
    return $auto;
}

sub test()
{
    return 0;
}

sub fix()
{
    return 0;
}
