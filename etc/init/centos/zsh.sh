#!/bin/sh
DOT_DIR = "${HOME}/dotfiles"

if [ $# -ne 1 ]; then
  read -sp "PASS:" PASSWD
else
    PASSWD="$1"
fi


cd ${DOT_DIR}

git clone https://github.com/zsh/zsh.git 
cd zsh
./configure && make
echo "$PASSWD" | sudo -S yum install -y zsh

chsh -s $(which zsh)

cd ${DOT_DIR}
