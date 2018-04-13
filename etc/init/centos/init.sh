#!/bin/sh
printf "password: "
read password
echo "$password" | sudo -S yum update && sudo -S yum upgrade
echo "$password" | sudo yum install -y git tmux xclip vim zsh python-pip

#Beep off
echo "$password" | echo "set bell-style none" >> /etc/inputrc


