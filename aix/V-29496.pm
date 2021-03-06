my $id = 'V-29496';
my $title = 'The system must provide protection from Internet Control Message Protocol (ICMP) attacks on TCP connections.';
my $severity = 'medium';
my $description = 'The ICMP attacks may be of the form of ICMP source quench attacks and Path MTU Discovery (PMTUD) attacks. If this network option tcp_icmpsecure is turned on, the system does not react to ICMP source quench messages. This will protect against ICMP source quench attacks.  The payload of the ICMP message is tested to determine if the sequence number of the TCP header portion of the payload is within the range of acceptable sequence numbers. This will mitigate PMTUD attacks to a large extent.  
';
my $fix = 'Set the tcp_icmpsecure parameter to 1.
 
# /usr/sbin/no -p -o tcp_icmpsecure=1';
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
    return STIG::TunableShouldBeAtLeast('tcp_icmpsecure', 1);
}

sub fix()
{
    return `/usr/sbin/no -po 'tcp_icmpsecure=1'`;
}

1;
