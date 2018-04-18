#!/bin/sh
# gitから落としてくる
cd 
git clone https://github.com/yyuu/pyenv.git ~/.pyenv

# pyenvをPATHに追加
if echo "$SHELL" | grep zsh >> /dev/null; then
  echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
  echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
  echo 'source' >> ~/.zshrc
  source .zshrc
fi

if echo "$SHELL" | grep bash >> /dev/null; then
  echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
  echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
  echo 'source' >> ~/.bashrc
  source .bashrc
fi
# pyenv初期化処理を追加
#echo 'source' >> ~/.zshrc

# 再読込
#source .zshrc
