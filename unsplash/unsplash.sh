#!/bin/bash

USER="willianjusten"

rm /home/lucas/.unsplash/wallpaper.jpg
wget -O /home/lucas/.unsplash/wallpaper.jpg https://source.unsplash.com/user/$USER/1920x1080
gsettings set org.gnome.desktop.background picture-uri file:///home/lucas/.unsplash/wallpaper.jpg
gsettings set org.gnome.desktop.screensaver picture-uri file:///home/lucas/.unsplash/wallpaper.jpg

# sudo chmod +x .unsplash.sh
# ./.unsplash.sh


# crontab -e
# https://crontab.guru/#*_*/20_*_*_*
# * */20 * * * /home/lucas/.unsplash.unsplash.sh

# */15 * * * * /home/lucas/.unsplash/unsplash.sh
