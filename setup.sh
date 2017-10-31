#!/bin/bash

# Update and install necessary programs
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install git weechat-curses tmux python-pip apache2

# Get config data
mkdir ~/git
git clone https://github.com/bobbzorzen/configs.git ~/git/
cp ~/git/configs/.bashrc ~/
source ~/.bashrc

# Configure git
git config --global user.email "bobbzorzen@gmail.com"
git config --global user.name "Leopold Olsson"
git config --global user.username "bobbzorzen"

# Configure weechat
wget https://weechat.org/files/scripts/buffers.pl
mv buffers.pl ~/.weechat/perl/autoload/
cat ~/git/configs/bsnetconfig.txt >> ~/.weechat/irc.conf

# Set timezone
sudo timedatectl set-timezone Europe/Stockholm
