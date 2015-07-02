my $id = 'V-38628';
my $title = 'The operating system must produce audit records containing sufficient information to establish the identity of any user/subject associated with the event.';
my $severity = 'medium';
my $description = 'Ensuring the "auditd" service is active ensures audit records generated by the kernel can be written to disk, or that appropriate actions will be taken if other obstacles exist.';
my $fix = 'The "auditd" service is an essential userspace component of the Linux Auditing System, as it is responsible for writing audit records to disk. The "auditd" service can be enabled with the following commands: # chkconfig auditd on# service auditd start';
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
