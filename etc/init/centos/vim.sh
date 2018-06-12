#!/bin/sh
if [ $# -ne 1 ]; then
  read -sp "PASS:" PASSWD
else
  PASSWD="$1"
fi 

DOT_DIR="${HOME}/dotfiles"

echo "$PASSWD" | sudo -S yum install -y lua-devel

cd
git clone https://github.com/vim/vim

cd vim
./configure && make
echo "$PASSWD" | sudo -S make install
cd 

mkdir ~/.vim
mkdir ~/.vim/colors
mkdir ~/.vim/bundle
mkdir ~/.vim/after
mkdir ~/.vim/after/ftplugin
cp ~/dotfiles/vim/colors/hybrid.vim ~/.vim/colors/
ln -sf ~/dotfiles/ftplugin/python.vim ~/.vim/after/ftplugin/python.vim
