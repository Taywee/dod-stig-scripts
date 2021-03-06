my $id = 'V-787';
my $title = 'System log files must have mode 0640 or less permissive.';
my $severity = 'medium';
my $description = 'If the system log files are not protected, unauthorized users could change the logged data, eliminating its forensic value.';
my $fix = 'Change the mode of the system log file(s) to 0640 or less permissive.

Procedure:
# chmod 0640 /path/to/system-log-file

NOTE: Do not confuse system log files with audit logs.   Any subsystems that require less stringent permissions must be documented.';
my $autotest = 1;
my $autofix = 1;
my $filename = '/var/log/syslog';

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
    return STIG::ModeShouldNotExceed($filename, 0640);
}

sub fix()
{
    return `chmod 0640 $filename`;
}

1;
