#!/bin/sh

curl -fsSL https://releases.hyper.is/download/deb --output hyper.deb
sudo dpkg -i hyper.deb
rm hyper.deb
