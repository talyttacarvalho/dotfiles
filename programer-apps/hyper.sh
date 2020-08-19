#!/bin/sh

curl -fsSL https://releases.hyper.is/download/deb --output hyper.deb
sudo apt install -f
sudo dpkg -i hyper.deb
rm hyper.deb
