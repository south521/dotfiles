if [ $# -ne 1 ]; then
  read -sp "PASS:" PASSWD
else
  PASSWD="$1"
fi 

DOT_DIR = "${HOME}/dotfiles"

#tmux install
cd 
git clone https://github.com/tmux/tmux.git
cd tmux
./autogen.sh
./configure && make
echo "$PASSWD" | sudo -S make install
cd
