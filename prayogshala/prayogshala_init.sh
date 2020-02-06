#!/usr/bin/env bash

pushd $PWD

# Set computer properties
hostnamectl set-hostname prayogshala

# Add ppa graphics drivers repository
sudo add-apt-repository ppa:graphics-drivers/ppa --yes

# Ubuntu drivers
sudo apt install ubuntu-drivers-common --yes
echo "Check the recommendation below..."
ubuntu-drivers devices

# Nvidia driver
sudo apt install nvidia-driver-435 nvidia-utils-435 --yes

# Symlinks
source $HOME/Developer/scaffold/prayogshala/prayogshala_symlinks.sh

popd
