#!/bin/bash

BASEDIR=$(dirname $0)

# install vim components
if [ ! -d "$HOME/.vim" ]; then
  echo ".vim folder does not exist yet, going to create!"
  mkdir -p $HOME/.vim/colors
fi

echo "going to copy vim files"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp $BASEDIR/*.vim $HOME/.vim/colors
cp $BASEDIR/vimrc $HOME/.vimrc

# install bashrc
echo "going to copy bashrc"
cp $BASEDIR/bashrc $HOME/.bashrc

# install awesome
if [ ! -d "$HOME/.config/awesome" ]; then
  echo ".config/awesome folder does not exist yet, going to create!"
  mkdir -p $HOME/.config/awesome
fi

echo "going to copy rc.lua file"
cp $BASEDIR/rc.lua $HOME/.config/awesome/rc.lua

# gitconfig
echo "going to copy github file"
cp $BASEDIR/gitconfig $HOME/.gitconfig

# install inconsolata
echo "going to install inconsolata font"
sudo apt-get install fonts-inconsolata

echo "done ..."
echo "please run :PluginInstall inside your vim to activate all plugins"
