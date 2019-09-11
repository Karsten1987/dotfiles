#!/bin/bash

BASEDIR=$(dirname $0)

# gitconfig
echo "going to copy github file"
cp $BASEDIR/gitconfig $HOME/.gitconfig
