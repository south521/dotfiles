#!/bin/sh
printf "options(a-all, z-zsh, t-tmux): "
read opt
printf "password: "
read password

#echo "$password" | sudo -S yum update && sudo -S yum upgrade
echo "$password" | sudo -S yum install -y git ncurse-devel libevent-devel
echo "$password" | sudo -S yum -y groups install Development\ Tools



if echo "$opt" | grep -e 't' -e 'a' > /dev/null ;then
#tmux install
  cd
  git clone https://github.com/tmux/tmux.git
  cd tmux
  ./autogen.sh
  ./configure && make
  echo "$password" | sudo -S make install
  cd
else
  echo "SKIP TMUX"
fi

#zsh install
if echo $opt | grep -e 'z' -e 'k' > /dev/null ; then
 # git clone https://github.com/zsh/zsh.git 
 # cd zsh
 # ./configure && make
 echo "$password" | sudo -S yum install -y zsh

else
  echo "SKIP ZSH"
  

fi 

#kvm install
#if echo $opt | grep -e 'k ' -e 'a' > /dev/null ; then

#fi 
