my $id = 'V-29513';
my $title = 'The system must not have the systat service active.';
my $severity = 'medium';
my $description = 'The systat daemon allows remote users to see the running process and who is running them.  This may aid in information collection for an attack and weaken the security posture of the system.';
my $fix = 'Edit /etc/inetd.conf and comment out systat the service line. 

Restart the inetd service.   

# refresh -s inetd';
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
