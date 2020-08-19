#!/bin/sh

# Uninstall old versions
sudo apt-get remove docker docker-engine docker.io containerd runc -y

# Setup the repository
sudo apt-get update
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common -y

# Add Docker’s official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Add PPA
sudo add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

# Install Docker
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io -y

# Testing Docker
sudo docker run hello-world

# Set docker user as root
sudo usermod -aG docker $USER
