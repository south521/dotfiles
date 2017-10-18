#!/bin/sh
printf "password: "
read password
echo "$password" | sudo -S apt-get update && sudo -S apt-get upgrade
echo "$password" | sudo apt-get install -y git tmux xclip vim zsh python-pip

#Change locale
echo 'case $TERM in' >> ~/.bashrc
echo "     linux)LANG=C ;;" >> ~/.bashrc
echo "     *)LANG=ja_JP.UTF-8 ;;" >> ~/.bashrc
echo "esac" >> ~/.bashrc

#Beep off
echo "$password" | echo "set bell-style none" >> /etc/inputrc


