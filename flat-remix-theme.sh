#!/bin/sh

cd $HOME
mkdir .flat-remix
cd .flat-remix
git clone https://github.com/daniruiz/flat-remix
git clone https://github.com/daniruiz/flat-remix-gtk
mkdir -p $HOME/.icons
mkdir -p $HOME/.themes

cp -r flat-remix/Flat-Remix* $HOME/.icons/ 
cp -r flat-remix-gtk/Flat-Remix-GTK* $HOME/.themes/