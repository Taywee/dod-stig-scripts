#!/bin/sh

file="$1"
perms=0"$2"

mode=0"$(stat -c %a /etc/gshadow)"

# if mode has more unspecified bits that aren't in perms
if [ "$((($mode | $wantedmode) != $wantedmode))" -ne 0 ]; then
then
    echo "$file permissions ($perms) are too permissive"
    exit 1
fi

exit 0
