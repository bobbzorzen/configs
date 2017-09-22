#!/bin/bash

sudo apt-get update
sudo apt-get upgrade
sudo apt-get install git weechat-curses tmux


cp .bashrc ~/
source ~/.bashrc


git config --global user.email "bobbzorzen@gmail.com"
git config --global user.name "Leopold Olsson"
git config --global user.username "bobbzorzen"
