#!/bin/sh

exitstatus=0

for file in $(rpm -Va  | grep '^.M' | awk '{ print $2 }'); do
    wantedmode=$(rpm -q --queryformat "[%{FILENAMES} %{FILEMODES:octal}\n]" $(rpm -qf "$file") | grep -E "^$file [[:digit:]]*$" | sed 's/^.*\(...\)$/\1/')

    if ! test_perms.sh $file $wantedmode; then
        exitstatus=1
    fi
done

exit $exitstatus
