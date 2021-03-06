#!/bin/sh
printdescription() {
    cat <<"DESCRIPTION"
Arbitrary changes to the system time can be used to obfuscate nefarious activities in log files, as well as to confuse network services that are highly dependent upon an accurate system time (such as sshd). All changes to the system time should be audited.
DESCRIPTION
}

printid() {
    cat <<"ID"
V-38525
ID
}

printtitle() {
    cat <<"TITLE"
The audit system must be configured to audit all attempts to alter system time through stime.
TITLE
}

printseverity() {
    cat <<"SEVERITY"
low
SEVERITY
}

printfix() {
    cat <<"FIX"
On a 32-bit system, add the following to "/etc/audit/audit.rules": # audit_time_rules-a always,exit -F arch=b32 -S stime -k audit_time_rulesOn a 64-bit system, the "-S stime" is not necessary. The -k option allows for the specification of a key in string form that can be used for better reporting capability through ausearch and aureport. Multiple system calls can be defined on the same line to save space if desired, but is not required. See an example of multiple combined syscalls: -a always,exit -F arch=b64 -S adjtimex -S settimeofday -S clock_settime -k audit_time_rules
FIX
}

