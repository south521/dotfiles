
# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH
export PYENV_ROOT=$HOME/.pyenv
export PATH=$PYENV_ROOT/bin:$PATH
export PATH=$PATH:$HOME/local/openmpi/bin
export DYLD_LIBRARY_PATH=$HOME/local/openmpi/lib
eval "$(pyenv init -)"
alias ls="ls -G"
alias ll="ls -lG"
alias la="ls -laG"
