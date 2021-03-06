my $id = 'V-22319';
my $title = 'The /etc/resolv.conf file must be owned by root.';
my $severity = 'medium';
my $description = 'The resolv.conf (or equivalent) file configures the system\'s DNS resolver.  DNS is used to resolve host names to IP addresses.  If DNS configuration is modified maliciously, host name resolution may fail or return incorrect information.  DNS may be used by a variety of system security functions, such as time synchronization, centralized authentication, and remote system logging.
';
my $fix = 'Change the owner of the /etc/resolv.conf file to root.
# chown root /etc/resolv.conf';
my $autotest = 1;
my $autofix = 1;
my $filename = '/etc/resolv.conf';

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
    return STIG::OwnerShouldBe($filename, 'root');
}

sub fix()
{
    return `chown root $filename`;
}

1;
