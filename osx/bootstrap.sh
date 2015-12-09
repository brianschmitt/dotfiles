#!/bin/bash

cd ~

. ~/dotfiles/set_symlinks.sh
. ~/dotfiles/osx/brew.sh
. ~/dotfiles/osx/osx.sh

git clone https://github.com/gmarik/vundle.git .vim/bundle/vundle
vim +:BundleInstall

# Run the android tool to choose install tools
android
