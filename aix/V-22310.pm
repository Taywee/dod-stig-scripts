my $id = 'V-22310';
my $title = 'The root account\'s library search path must be the system default and must contain only absolute paths.';
my $severity = 'medium';
my $description = 'The library search path environment variable(s) contains a list of directories for the dynamic linker to search to find libraries. If this path includes the current working directory or other relative paths, libraries in these directories may be loaded instead of system libraries. This variable is formatted as a colon-separated list of directories. If there is an empty entry, such as a leading or trailing colon or two consecutive colons, this is interpreted as the current working directory. Entries starting with a slash (/) are absolute paths.';
my $fix = 'Edit the root user\'s initialization files and remove any definition of LD_LIBRARY_PATH and LIBPATH.';
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
    return STIG::FileShouldNotContain('/home/root/.profile', qr/LD_LIBRARY_PATH|LIBPATH/);
}

sub fix()
{
    return 0;
}

1;
