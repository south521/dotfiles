#!/bin/sh
mkdir ~/.vim
mkdir ~/.vim/colors
mkdir ~/.vim/bundle
mkdir ~/.vim/after
mkdir ~/.vim/after/ftplugin
cp ~/dotfiles/vim/colors/hybrid.vim ~/.vim/colors/
ln -sf ~/dotfiles/ftplugin/python.vim ~/.vim/after/ftplugin/python.vim
