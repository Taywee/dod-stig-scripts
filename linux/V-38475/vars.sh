#!/bin/sh
printdescription() {
    cat <<"DESCRIPTION"
Requiring a minimum password length makes password cracking attacks more difficult by ensuring a larger search space. However, any security benefit from an onerous requirement must be carefully weighed against usability problems, support costs, or counterproductive behavior that may result.While it does not negate the password length requirement, it is preferable to migrate from a password-based authentication scheme to a stronger one based on PKI (public key infrastructure).
DESCRIPTION
}

printtitle() {
    cat <<"TITLE"
The system must require passwords to contain a minimum of 14 characters.
TITLE
}

printfix() {
    cat <<"FIX"
To specify password length requirements for new accounts, edit the file "/etc/login.defs" and add or correct the following lines: PASS_MIN_LEN 14The DoD requirement is "14". If a program consults "/etc/login.defs" and also another PAM module (such as "pam_cracklib") during a password change operation, then the most restrictive must be satisfied.
FIX
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printid() {
    cat <<"ID"
V-38475
ID
}

