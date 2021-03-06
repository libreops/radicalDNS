#!/bin/bash

# Get StevenBlack hosts
curl -sLo /tmp/hosts.txt https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts
chmod 0644 /tmp/hosts.txt
chown pdns:pdns /tmp/hosts.txt

# Get diff
diff -q <(sort -V /etc/powerdns/hosts.txt | column -t) <(sort -V /tmp/hosts.txt | column -t)
DIFF_STATUS=$?

# Get Lines
LINES=$(grep -c ^ /tmp/hosts.txt)

# Check & restart if needed
if [ "${LINES}" -gt "200" ] && [ "${DIFF_STATUS}" != "0" ]; then
  mv -f /tmp/hosts.txt /etc/powerdns/hosts.txt && systemctl restart pdns-recursor
fi
