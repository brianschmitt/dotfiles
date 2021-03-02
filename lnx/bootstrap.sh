#!/bin/bash

cd ~

. ~/dotfiles/set_symlinks.sh

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim +:PlugInstall
