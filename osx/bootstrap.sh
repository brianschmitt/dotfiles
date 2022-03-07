#!/bin/bash

cd ~ || exit

. ~/dotfiles/set_symlinks.sh
. ~/dotfiles/osx/brew.sh
. ~/dotfiles/osx/osx.sh
. ~/dotfiles/osx/nodepkgs.sh

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim +:PlugInstall

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"