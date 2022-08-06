#!/bin/bash
root=$(dirname $(cd $(dirname $0);pwd))
ln -s $root/configs/zsh $HOME/.zshrc

sudo pacman -S zsh zsh-autosuggestions zsh-syntax-highlighting

