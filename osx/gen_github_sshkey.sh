#!/bin/bash

ssh-keygen -t ed25519 -C "brianschmitt@gmail.com" -f ~/.ssh/github_rsa

eval "$(ssh-agent -s)"

ssh-add -K ~/.ssh/github_rsa

pbcopy < ~/.ssh/github_rsa.pub

read -r -p "Add key (in clipboard) to github and press enter to continue"

ssh -T git@github.com

read -p "Update remote on ~/dotfiles? [y/n]" -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    cd ~/dotfiles || exit
    git remote set-url origin git@github.com:brianschmitt/dotfiles
fi
