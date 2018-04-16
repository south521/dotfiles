#!/bin/sh
printf "options(a-all, z-zsh, t-tmux ...): "
read opt
printf "password: "
read password
echo "$password" | sudo -S apt-get update && sudo -S apt-get upgrade
echo "$password" | sudo apt-get install -y git xclip vim python-pip

#Change locale
echo 'case $TERM in' >> ~/.bashrc
echo "     linux)LANG=C ;;" >> ~/.bashrc
echo "     *)LANG=ja_JP.UTF-8 ;;" >> ~/.bashrc
echo "esac" >> ~/.bashrc

#Beep off
echo "$password" | echo "set bell-style none" >> /etc/inputrc

if echo "$opt" | grep -e 't' -e 'a' > /dev/null ;then
#tmux install
  git clone https://github.com/tmux/tmux.git
  cd tmux
  ./configure && make
  echo "$password" | sudo make install
  cd
fi

#zsh install
if echo $opt | grep -e 'z' -e 'k' > /dev/null ; then
 # git clone https://github.com/zsh/zsh.git 
 # cd zsh
 # ./configure && make
 echo "$password" | sudo -S apt-get install -y zsh
  
  

fi 

#kvm install
if echo $opt | grep -e 'k ' -e 'a' > /dev/null ; then

fi 
