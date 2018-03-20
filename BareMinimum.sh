#!/bin/bash

sudo add-apt-repository ppa:gnome-terminator
sudo apt-get update -y
sudo apt-get dist-upgrade -y
sudo apt-get install ubuntu-restricted-extras -y

# Installing Terminator
sudo apt-get install terminator
 
# Installing Git
sudo apt-get install git -y

# Install Vim
sudo apt-get install vim 

# Installing axel
sudo apt-get install axel 
