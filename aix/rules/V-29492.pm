my $id = 'V-29492';
my $title = 'The /etc/netsvc.conf file must be group-owned by bin, sys, or system.';
my $severity = 'medium';
my $description = 'The /etc/netsvc.conf file is used to specify the ordering of name resolution for the sendmail command,  alias resolution for the sendmail command, and host name resolution routines.    Malicious changes could prevent the system from functioning correctly or compromise system security.';
my $fix = 'Change the group owner of the /etc/netsvc.conf file to bin, sys, or system.

Procedure:
# chgrp system /etc/netsvc.conf';
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
