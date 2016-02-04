#!/bin/bash
crontab -l > file; echo '* 5 1 * * (/usr/bin/aptitude -y update && /usr/bin/aptitude -y safe-upgrade) 2>&1 >> /var/log/auto_update.log' >> file;