#!/bin/bash

BASEDIR=$(dirname $0)

# install bashrc
echo "going to copy bashrc"
cp $BASEDIR/bashrc $HOME/.bashrc
