#!/bin/bash

ssh-keygen -t ed25519 -C "brianschmitt@gmail.com" -f id_personal

eval "$(ssh-agent -s)"

ssh-add -K "$HOME"/.ssh/id_personal

pbcopy < "$HOME"/.ssh/id_personal.pub

read -r -p "Add key (in clipboard) to github and press enter to continue"

ssh -T git@github.com

read -p "Update remote on $HOME/dotfiles? [y/n]" -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    cd "$HOME"/dotfiles || exit
    git remote set-url origin git@github.com-personal:brianschmitt/dotfiles
fi
