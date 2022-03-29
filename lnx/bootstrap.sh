#!/bin/bash

cd ~ || exit

. ~/dotfiles/set_symlinks.sh

vim +:PlugInstall
