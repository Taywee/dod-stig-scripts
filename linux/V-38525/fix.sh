#!/bin/sh

fix_audit_watch_syscall settimeofday
fix_audit_watch_syscall clock_settime
fix_audit_watch_syscall adjtimex
