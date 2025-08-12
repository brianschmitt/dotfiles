#!/bin/bash

cd "$HOME" || exit

ln -sf dotfiles/.aliases .aliases

ln -sf dotfiles/.functions .functions

ln -sf dotfiles/.ctags .ctags

ln -sf dotfiles/.global_ignore .global_ignore

ln -sf dotfiles/.gitattributes .gitattributes

ln -sf dotfiles/.vimrc .vimrc

ln -sf dotfiles/.gitconfig .gitconfig

if [ "$(uname)" = "Darwin" ]; then
    ln -sf dotfiles/.zshrc .zshrc
    ln -sf dotfiles/.p10k.zsh .p10k.zsh

elif [ "$(uname)" = "Linux" ]; then
    ln -sf dotfiles/.bashrc .bashrc
    ln -sf dotfiles/.bash_profile .bash_profile
    ln -sf dotfiles/.bash_prompt .bash_prompt
fi
