my $id = 'V-22475';
my $title = 'The SSH daemon must not permit Kerberos authentication unless needed.';
my $severity = 'low';
my $description = 'Kerberos authentication for SSH is often implemented using GSSAPI.  If Kerberos is enabled through SSH, the SSH daemon provides a means of access to the system\'s Kerberos implementation.  Vulnerabilities in the system\'s Kerberos implementation may then be subject to exploitation.  To reduce the attack surface of the system, the Kerberos authentication mechanism within SSH must be disabled for systems not using this capability.
';
my $fix = 'Edit the /etc/ssh/sshd_config file and remove the KerberosAuthentication setting or change the value of the setting to "no".';
my $autotest = 1;
my $autofix = 1;
my $filename = '/etc/ssh/sshd_config';

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
    return STIG::FileShouldNotContain($filename, qr/KerberosAuthentication\s+yes/);
}

sub fix()
{
    return STIG::sedi($filename, 's/^KerberosAuthentication/#&/');;
;
}

1;
