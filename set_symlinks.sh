#!/bin/bash

cd "$HOME" || exit

ln -sf dotfiles/.aliases .aliases

ln -sf dotfiles/.ctags .ctags

ln -sf dotfiles/.global_ignore .global_ignore

ln -sf dotfiles/.vimrc .vimrc

if [ "$(uname)" = "Darwin" ]; then
    ln -sf dotfiles/.gitconfig-osx .gitconfig
    ln -sf dotfiles/.zshrc .zshrc

elif [ "$(uname)" = "Linux" ]; then
    ln -sf dotfiles/.gitconfig-lnx .gitconfig
    ln -sf dotfiles/.bashrc .bashrc
    ln -sf dotfiles/.bash_profile .bash_profile
    ln -sf dotfiles/.bash_prompt .bash_prompt
fi
