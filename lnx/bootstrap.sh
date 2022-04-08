#!/bin/bash

cd "$HOME" || exit

. "$HOME"/dotfiles/set_symlinks.sh

vim +:PlugInstall
