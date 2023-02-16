#!/bin/bash

cd "$HOME" || exit

. "$HOME"/dotfiles/set_symlinks.sh
. "$HOME"/dotfiles/osx/brew.sh
. "$HOME"/dotfiles/osx/osx.sh
. "$HOME"/dotfiles/osx/nodepkgs.sh

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

vim +:PlugInstall

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
