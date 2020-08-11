#!/bin/sh

NVM_VERSION=$(curl -fsSL https://api.github.com/repos/nvm-sh/nvm/releases/latest |
    grep "tag_name" |
    cut -d '"' -f 4)

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/$NVM_VERSION/install.sh | bash

source $HOME/.zshrc

nvm install --lts
echo "NODE version"
node --version
echo "NPM version"
npm --version
npm install -g yarn
echo "YARN version"
yarn --version
