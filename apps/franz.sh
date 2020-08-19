#!/bin/sh

FRANZ=$(curl -fsSL https://api.github.com/repos/meetfranz/franz/releases/latest |
    grep "browser_download_url.*deb" |
    cut -d '"' -f 4)

curl -fsSL $FRANZ --output franz.deb

sudo dpkg -i franz.deb
sudo apt install -f
sudo dpkg -i franz.deb

rm franz.deb
