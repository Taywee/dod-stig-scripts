my $id = 'V-38637';
my $title = 'The system package management tool must verify contents of all files associated with the audit package.';
my $severity = 'medium';
my $description = 'The hash on important files like audit system executables should match the information given by the RPM database. Audit executables  with erroneous hashes could be a sign of nefarious activity on the system.';
my $fix = 'The RPM package management system can check the hashes of audit system package files. Run the following command to list which audit files on the system have hashes that differ from what is expected by the RPM database: # rpm -V audit | grep \'^..5\'A "c" in the second column indicates that a file is a configuration file, which may appropriately be expected to change. If the file that has changed was not expected to then refresh from distribution media or online repositories. rpm -Uvh [affected_package]OR yum reinstall [affected_package]';
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
