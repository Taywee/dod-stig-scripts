my $id = 'V-777';
my $title = 'The root account must not have world-writable directories in its executable search path.';
my $severity = 'medium';
my $description = 'If the root search path contains a world-writable directory, malicious software could be placed in the path by intruders and/or malicious users and inadvertently run by root with all of root\'s privileges.
';
my $fix = 'For each world-writable path in root\'s executable search path, perform one of the following.

1. Remove the world-writable permission on the directory.
Procedure:
# chmod o-w <path>

2. Remove the world-writable directory from the executable search path.

Procedure:
Identify and edit the initialization file referencing the world-writable directory and remove it from the PATH variable.';
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
