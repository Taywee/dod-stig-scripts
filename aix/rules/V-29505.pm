my $id = 'V-29505';
my $title = 'The system must not have the discard service active.';
my $severity = 'medium';
my $description = 'The discard service runs as root from the inetd server and can be used in Denial of Service attacks.   The discard  service is unnecessary and it increases the attack vector of the system.';
my $fix = 'Edit /etc/inetd.conf and comment out the discard service line for both TCP and UDP protocols. 
Restart the inetd service.
#refresh -s inetd';
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
