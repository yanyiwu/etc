#!/bin/sh
mkdir ~/.trash
cp -r .gitconfig .inputrc .bashrc .vim .vimrc .screenrc ~
git clone https://aszxqw@github.com/aszxqw/oh-my-zsh.git ~/.oh-my-zsh
cp .zshrc .aliases ~
chsh  -s /bin/zs
