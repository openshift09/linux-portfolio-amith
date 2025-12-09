#! /bin/bash
echo "Searching for ERROR in /var/log/syslog"
grep -i "error" /var/log/syslog
