#!/bin/bash

cd "$HOME" || exit

common_files=(
    .aliases
    .functions
    .ctags
    .global_ignore
    .gitattributes
    .vimrc
    .gitconfig
)
darwin_files=(.zshrc .p10k.zsh)
linux_files=(.bashrc .bash_profile .bash_prompt)

for file in "${common_files[@]}"; do
    ln -sf "dotfiles/$file" "$file"
done

if [ "$(uname)" = "Darwin" ]; then
    for file in "${darwin_files[@]}"; do
        ln -sf "dotfiles/$file" "$file"
    done
elif [ "$(uname)" = "Linux" ]; then
    for file in "${linux_files[@]}"; do
        ln -sf "dotfiles/$file" "$file"
    done
fi
