#!/bin/bash

#This will setup systemlinks for these dotfiles
#This is for Linux 

echo "Setup vim files..."
ln -s $HOME/.dotfiles/vim $HOME/.vim
ln -s $HOME/.dotfiles/vimrc $HOME/.vimrc
echo "Setup git files..."
ln -s $HOME/.dotfiles/git/gitconfig $HOME/.gitconfig
ln -s $HOME/.dotfiles/git/gitignore $HOME/.gitignore
echo "Setup bash configs..."
ruby  $HOME/.dotfiles/rsense/etc/config.rb > ~/.rsense
echo "Remember to restart your bash session for the changes to appear."
echo "Be sure to install ctags or you will get an error when starting vim"
