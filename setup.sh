#!/bin/bash

echo "setting up  dotfiles"
git clone https://github.com/Tu276.dotfiles.git ~/dotfiles
ln -sf ~/dotfiles/.bashrc ~/.bashrc
ln -sf ~/dotfiles/.bash_aliases ~/.bash_aliases

ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig
ls -sf ~/dotfiles/.inputrc ~/.inputrc

echo " Done! Run 'source ~/.bashrc' to reload your shell"
echo "start of sea passage"
