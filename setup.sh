#!/bin/bash

sudo apt-get update
sudo apt-get upgrade
sudo apt-get install git weechat-curses tmux python-pip

mkdir ~/git

git clone https://github.com/bobbzorzen/configs.git ~/git/

cp ~/git/config/.bashrc ~/
source ~/.bashrc


git config --global user.email "bobbzorzen@gmail.com"
git config --global user.name "Leopold Olsson"
git config --global user.username "bobbzorzen"
