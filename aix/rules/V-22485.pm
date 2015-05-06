my $id = 'V-22485';
my $title = 'The SSH daemon must perform strict mode checking of home directory configuration files.';
my $severity = 'medium';
my $description = 'If other users have access to modify user-specific SSH configuration files, they may be able to log into the system as another user.';
my $fix = 'Edit the /etc/sshd/sshd_config file and remove the StrictModes setting or change the value of the StrictModes setting to "yes".';
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
