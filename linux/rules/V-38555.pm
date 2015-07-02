my $id = 'V-38555';
my $title = 'The system must employ a local IPv4 firewall.';
my $severity = 'medium';
my $description = 'The "iptables" service provides the system\'s host-based firewalling capability for IPv4 and ICMP.';
my $fix = 'The "iptables" service can be enabled with the following commands: # chkconfig iptables on# service iptables start';
my $autotest = 0;
my $autofix = 0;

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
    return 0;
}

sub fix()
{
    return 0;
}
