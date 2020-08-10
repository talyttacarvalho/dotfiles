#!/bin/bash

# _write out current crontab
crontab -l >mycron
# _echo new cron into cron file
echo "*/3 * * * * /home/lucas/.unsplash/unsplash.sh" >>mycron
# _install new cron file
crontab mycron
rm mycron
