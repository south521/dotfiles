#!/bin/sh
DOT_DIR="${HOME}/dotfiles"

echo "Select Options(Default: initial all)"
echo "i-inital setup, t-tmux, k-kvm, z-zsh, p-pyenv, "
read -p " : " opt
read -sp "Password: " PASSWD

#initial update


#dotlink


#install tools
STR_T="Installed: "

if echo "$opt" | grep -e 't' -e 'a' > /dev/null ;then
  echo "t"
  STR_T="${STR_T} tmux"
fi

#zsh install
if echo $opt | grep -e 'z' -e 'a' > /dev/null ; then
  echo "z"
  STR_T="${STR_T}, Zsh"
fi 

echo $STR_T
