#!/bin/bash

#write out current crontab
crontab -l > mycron
#echo new cron into cron file
echo "*/15 * * * * /home/lucas/.unsplash/unsplash.sh" >> mycron
#install new cron file
crontab mycron
rm mycron