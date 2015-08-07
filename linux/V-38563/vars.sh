#!/bin/sh
printseverity() {
    cat <<"SEVERITY"
low
SEVERITY
}

printtitle() {
    cat <<"TITLE"
The audit system must be configured to audit all discretionary access control permission modifications using removexattr.
TITLE
}

printfix() {
    cat <<"FIX"
At a minimum, the audit system should collect file permission changes for all users and root. Add the following to "/etc/audit/audit.rules": -a always,exit -F arch=b32 -S removexattr -F auid>=500 -F auid!=4294967295 \-k perm_mod-a always,exit -F arch=b32 -S removexattr -F auid=0 -k perm_modIf the system is 64-bit, then also add the following: -a always,exit -F arch=b64 -S removexattr -F auid>=500 -F auid!=4294967295 \-k perm_mod-a always,exit -F arch=b64 -S removexattr -F auid=0 -k perm_mod
FIX
}

printdescription() {
    cat <<"DESCRIPTION"
The changing of file permissions could indicate that a user is attempting to gain access to information that would otherwise be disallowed. Auditing DAC modifications can facilitate the identification of patterns of abuse among both authorized and unauthorized users.
DESCRIPTION
}

printid() {
    cat <<"ID"
V-38563
ID
}

