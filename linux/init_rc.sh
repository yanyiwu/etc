#!/bin/sh
test -d ~/.trash || mkdir ~/.trash
#cp -r .gitconfig .inputrc .bashrc .vim .vimrc .screenrc .zshrc .tmux.conf ~
ln -fs ~/etc/linux/.vim ~
test -d ~/.vim/bundle/Vundle.vim || git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
ln -fs ~/etc/linux/.vimrc ~
ln -fs ~/etc/linux/.gitconfig ~
ln -fs ~/etc/linux/.inputrc ~
ln -fs ~/etc/linux/.bashrc ~
ln -fs ~/etc/linux/.screenrc ~
ln -fs ~/etc/linux/.zshrc ~
ln -fs ~/etc/linux/.tmux.conf ~
#git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
test -d ~/.oh-my-zsh || git clone git@github.com:yanyiwu/oh-my-zsh.git ~/.oh-my-zsh
