#!/bin/bash

cd ~

. ~/dotfiles/set_symlinks.sh

git clone https://github.com/gmarik/vundle.git .vim/bundle/vundle
vim +:BundleInstall
