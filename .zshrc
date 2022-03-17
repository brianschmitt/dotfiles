export ZSH="/Users/bschmitt/.oh-my-zsh"

ZSH_THEME="agnoster"

plugins=(npm)

# User configurations
for file in ~/.{path,exports,aliases,extra}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

ZSH_DISABLE_COMPFIX=true

CDPATH=.:~:~/src

source $ZSH/oh-my-zsh.sh

DEFAULT_USER='bschmitt'
