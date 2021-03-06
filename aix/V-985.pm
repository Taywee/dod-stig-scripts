my $id = 'V-985';
my $title = 'The at.deny file must not be empty if it exists.';
my $severity = 'medium';
my $description = 'On some systems, if there is no at.allow file and there is an empty at.deny file, then the system assumes everyone has permission to use the at facility.  This could create an insecure setting in the case of malicious users or system intruders.';
my $fix = 'Add appropriate users to the at.deny file, or remove the empty at.deny file if an at.allow file exists.';
my $autotest = 1;
my $autofix = 1;
my $filename = '/var/adm/cron/at.allow';

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
    # if the file exists
    if (-e $filename)
    {
        return STIG::FileShouldContain($filename, qr/^.+$/);
    } else
    {
        return '';
    }
}

sub fix()
{
    return `rm $filename`;
}

1;
