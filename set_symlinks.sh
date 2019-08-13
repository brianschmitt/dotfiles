cd ~

ln -sf dotfiles/.vimrc .vimrc

ln -sf dotfiles/.ctags .ctags

ln -sf dotfiles/.global_ignore .global_ignore

if [ "$(uname)" = "Darwin" ]; then
    ln -sf dotfiles/.gitconfig-osx .gitconfig
elif [ "$(uname)" = "Linux" ]; then
    ln -sf dotfiles/.gitconfig-lnx .gitconfig
fi

ln -sf dotfiles/.jshintrc .jshintrc

ln -sf dotfiles/.aliases .aliases

ln -sf dotfiles/.bash_prompt .bash_prompt

ln -sf dotfiles/.bash_profile .bash_profile

ln -sf dotfiles/.bashrc .bashrc

ln -sf dotfiles/.zshrc .zshrc

ln -sf dotfiles/.exports .exports
