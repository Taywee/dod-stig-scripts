#!/bin/sh
printfix() {
    cat <<"FIX"
When the so-called 'sticky bit' is set on a directory, only the owner of a given file may remove that file from the directory. Without the sticky bit, any user with write access to a directory may remove any file in the directory. Setting the sticky bit prevents users from removing each other's files. In cases where there is no reason for a directory to be world-writable, a better solution is to remove that permission rather than to set the sticky bit. However, if a directory is used by a particular application, consult that application's documentation instead of blindly changing modes. To set the sticky bit on a world-writable directory [DIR], run the following command: # chmod +t [DIR]
FIX
}

printdescription() {
    cat <<"DESCRIPTION"
Failing to set the sticky bit on public directories allows unauthorized users to delete files in the directory structure. The only authorized public directories are those temporary directories supplied with the system, or those designed to be temporary file repositories. The setting is normally reserved for directories used by the system, and by users for temporary file storage - such as /tmp - and for directories requiring global read/write access.
DESCRIPTION
}

printtitle() {
    cat <<"TITLE"
The sticky bit must be set on all public directories.
TITLE
}

printseverity() {
    cat <<"SEVERITY"
low
SEVERITY
}

printid() {
    cat <<"ID"
V-38697
ID
}

