my $id = 'V-22554';
my $title = 'The system must not accept source-routed IPv6 packets.';
my $severity = 'medium';
my $description = 'Source-routed packets allow the source of the packet to suggest routers forward the packet along a different path than configured on the router, which can be used to bypass network security measures. This requirement applies only to the handling of source-routed traffic destined to the system itself, not to traffic forwarded by the system to another, such as when IPv6 forwarding is enabled and the system is functioning as a router.';
my $fix = 'Configure the system to not accept source-routed IPv6 packets. 
# /usr/sbin/no -p -o ipsrcrouterecv=0';
my $autotest = 1;
my $autofix = 1;

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
    return STIG::TunableShouldNotExceed('ipsrcrouterecv', 0);
}

sub fix()
{
    return `/usr/sbin/no -po 'ipsrcrouterecv=0'`;
}

1;
