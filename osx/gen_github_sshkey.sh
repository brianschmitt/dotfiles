#!/bin/bash

ssh-keygen -t rsa -C "brianschmitt@gmail.com" -f ~/.ssh/id_rsa

eval "$(ssh-agent -s)"

ssh-add -K ~/.ssh/id_rsa

pbcopy < ~/.ssh/id_rsa.pub

read -p "Add key (in clipboard) to github and press enter to continue"

ssh -T git@github.com

read -p "Update remote on ~/dotfiles? [y/n]" -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    cd ~/dotfiles
    git remote set-url origin git@github.com:brianschmitt/dotfiles
fi
