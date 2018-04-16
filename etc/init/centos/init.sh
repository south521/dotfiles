#!/bin/sh
printf "options(a-all, z-zsh, t-tmux): "
read opt
printf "password: "
read password

echo "$password" | sudo -S yum update && sudo -S yum upgrade
echo "$password" | sudo yum install -y git ncurse-devel libevent-devel
echo "$password" | sudo yum groupinstall "Development Tool"


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
 echo "$password" | sudo yum install -y zsh
  
  

fi 

#kvm install
if echo $opt | grep -e 'k ' -e 'a' > /dev/null ; then

fi 
