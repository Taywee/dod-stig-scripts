#!/bin/sh
printid() {
    cat <<"ID"
V-38655
ID
}

printdescription() {
    cat <<"DESCRIPTION"
Allowing users to execute binaries from removable media such as USB keys exposes the system to potential compromise.
DESCRIPTION
}

printtitle() {
    cat <<"TITLE"
The noexec option must be added to removable media partitions.
TITLE
}

printfix() {
    cat <<"FIX"
The "noexec" mount option prevents the direct execution of binaries on the mounted filesystem. Users should not be allowed to execute binaries that exist on partitions mounted from removable media (such as a USB key). The "noexec" option prevents code from being executed directly from the media itself, and may therefore provide a line of defense against certain types of worms or malicious code. Add the "noexec" option to the fourth column of "/etc/fstab" for the line which controls mounting of any removable media partitions.
FIX
}

printseverity() {
    cat <<"SEVERITY"
low
SEVERITY
}

