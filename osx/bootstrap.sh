#!/bin/bash

cd ~ || exit

. ~/dotfiles/set_symlinks.sh
. ~/dotfiles/osx/brew.sh
. ~/dotfiles/osx/osx.sh
. ~/dotfiles/osx/nodepkgs.sh

vim +:PlugInstall

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k