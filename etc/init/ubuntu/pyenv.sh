#!/bin/sh
# gitから落としてくる
git clone https://github.com/yyuu/pyenv.git ~/.pyenv

# pyenvをPATHに追加
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc

# pyenv初期化処理を追加
echo 'source' >> ~/.zshrc

# 再読込
source .zshrc
