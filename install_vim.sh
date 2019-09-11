#!/bin/bash

BASEDIR=$(dirname $0)

# install vim components
if [ ! -d "$HOME/.vim/colors" ]; then
  echo ".vim folder does not exist yet, going to create!"
  mkdir -p $HOME/.vim/colors
fi

echo "going to copy vim files"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp $BASEDIR/*.vim $HOME/.vim/colors
cp $BASEDIR/vimrc $HOME/.vimrc

echo "going to install ctags for vim"
sudo apt-get install exuberant-ctags

echo "please run :PluginInstall inside your vim to activate all plugins"
