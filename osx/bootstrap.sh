#!/bin/bash

cd ~

. ~/dotfiles/set_symlinks.sh
. ~/dotfiles/osx/brew.sh
. ~/dotfiles/osx/osx.sh
. ~/dotfiles/osx/nodepkgs.sh

git clone https://github.com/gmarik/vundle.git .vim/bundle/vundle
vim +:BundleInstall

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"