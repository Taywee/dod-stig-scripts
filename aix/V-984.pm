my $id = 'V-984';
my $title = 'Access to the at utility must be controlled via the at.allow and/or at.deny file(s).';
my $severity = 'medium';
my $description = 'The at facility selectively allows users to execute jobs at deferred times.  It is usually used for one-time jobs. The at.allow file selectively allows access to the at facility.  If there is no at.allow file, there is no ready documentation of who is allowed to submit at jobs.';
my $fix = 'Create at.allow and/or at.deny files containing appropriate lists of users to be allowed or denied access to the "at" daemon.';
my $autotest = 1;
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
    my $allow = STIG::FileShouldExist('/var/adm/cron/at.allow');
    my $deny = STIG::FileShouldExist('/var/adm/cron/at.deny');
    if ((length($allow) > 0) && (length($deny) > 0))
    {
        return $allow . $deny;
    }
    return '';
}

sub fix()
{
    return 0;
}

1;
