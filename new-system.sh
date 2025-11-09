#!/bin/bash
echo "setting up  dotfiles"
git clone https://github.com/Tu276.dotfiles.git ~/dotfiles
ln -sf ~/dotfiles/.bashrc ~/.bashrc
ln -sf ~/dotfiles/.vimrc ~/.vimrc
source ~/.bashrc
echo "start of sea passage"
