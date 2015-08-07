#!/bin/sh

for file in $(rpm -Va  | grep  '^.....U' | awk '{ print $2 }'); do
    package="$(rpm -qf "$file")"
    rpm --setugids "$package"
done

