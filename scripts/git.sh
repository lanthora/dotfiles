#!/bin/bash
root=$(dirname $(cd $(dirname $0);pwd))
ln -s $root/configs/git $HOME/.gitconfig

