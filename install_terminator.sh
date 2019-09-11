#!/bin/bash

if [[ ! "$OSTYPE" == "linux-gnu" ]]; then
  echo "terminator is only available on linux"
  return
fi

BASEDIR=$(dirname $0)

# install inconsolata
echo "going to install inconsolata font"
sudo apt-get install fonts-inconsolata

echo "going to install terminator"
sudo apt-get install terminator

if [ ! -d "$HOME/.config/terminator" ]; then
  echo "terminator config folder does not exist yet, going to create!"
  mkdir -p $HOME/.config/terminator
fi
cp $BASEDIR/terminator_config $HOME/.config/terminator/config
