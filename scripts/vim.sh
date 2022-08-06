#!/bin/bash
root=$(dirname $(cd $(dirname $0);pwd))
ln -s $root/configs/vim $HOME/.vimrc

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

