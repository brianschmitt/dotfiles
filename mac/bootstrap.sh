#!/bin/bash

cd ~
git clone https://github.com/gmarik/vundle.git .vim/bundle/vundle
./dotfiles/setup.sh
./dotfiles/mac/brew.sh
./dotfiles/mac/osx.sh

