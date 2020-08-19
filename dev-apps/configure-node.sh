#!/bin/sh

source $HOME/.zshrc

nvm install --lts
echo "NODE version"
node --version
echo "NPM version"
npm --version
npm install -g yarn
echo "YARN version"
yarn --version