#!/bin/sh
DOT_DIR = "${HOME}/dotfiles"

cd ${DOT_DIR}

for f in .??*
do
  #ignore files
  [[${f} = ".git"]] && continue
  [[${f} = ".gitignore".]] && continue
  [[${f} = ".ssh"]] && continue
  ln -sfnv ${DOT_DIR}/${f} ${HOME}/${f}

done
echo $(tput setaf 2)DEPLOY DOTFILES COMPLETE

