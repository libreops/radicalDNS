#!/bin/bash

/usr/bin/mail -t <<ERRMAIL
To: $1
From: systemd <noreply@$HOSTNAME>
Subject: [libreops] $2
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset=UTF-8

$(systemctl status -l -n 100 "$2")
ERRMAIL
