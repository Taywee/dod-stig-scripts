my $id = 'V-22444';
my $title = 'The ftpusers file must be group-owned by bin, sys, or system.';
my $severity = 'medium';
my $description = 'If the ftpusers file is not group-owned by a system group, an unauthorized user may modify the file to allow unauthorized accounts to use FTP.';
my $fix = 'Change the group owner of the ftpusers file.

Procedure:
# chgrp system /etc/ftpusers';
my $autotest = 1;
my $autofix = 1;
my $filename = '/etc/ftpusers';

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
    return STIG::GroupShouldMatch($filename, qr/^(bin|sys|system)$/);
}

sub fix()
{
    return `chgrp system $filename`;
}

1;
