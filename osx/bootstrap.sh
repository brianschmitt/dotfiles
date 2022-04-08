#!/bin/bash

cd "$HOME" || exit

. "$HOME"/dotfiles/set_symlinks.sh
. "$HOME"/dotfiles/osx/brew.sh
. "$HOME"/dotfiles/osx/osx.sh
. "$HOME"/dotfiles/osx/nodepkgs.sh

vim +:PlugInstall

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
