#!/bin/sh
if [ $# -ne 1 ]; then
  read -sp "PASS:" PASSWD
else
  PASSWD="$1"
fi

echo "$PASSWD" | sudo -S yum update && sudo -S yum upgrade                  
echo "$PASSWD" | sudo -S yum install -y git ncurses-devel libevent-devel     
echo "$PASSWD" | sudo -S yum -y groups install Development\ Tools    
