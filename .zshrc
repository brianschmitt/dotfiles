# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#zmodload zsh/zprof # for profiling

export EDITOR='vim'
export HOMEBREW_NO_AUTO_UPDATE=1

# History settings
HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

#setopt SHARE_HISTORY # allow multiple term sessions to write to hist
setopt HIST_IGNORE_ALL_DUPS  # do not put duplicated command into history list
setopt HIST_IGNORE_DUPS  # do not save duplicated command
setopt HIST_REDUCE_BLANKS  # remove unnecessary blanks
setopt INC_APPEND_HISTORY_TIME  # append command to history file immediately after execution
setopt EXTENDED_HISTORY  # record command start time

# bind arrow keys
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down
bindkey '^[[H' beginning-of-line # Home
bindkey '^[[F' end-of-line # End

# Path settings
export PATH="$HOME/src/scripts:$PATH"
export PATH="$HOME/Library/Python/3.9/bin:$PATH"
export PATH="/opt/homebrew/opt/node@22/bin:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

# Autocompletion settings
export FPATH="$HOME/dotfiles/osx:$FPATH"

# default commands
export FZF_DEFAULT_COMMAND='rg --files --hidden --glob "!.git"'

PATH_SUFFIXES+=('.sh')

CDPATH=.:$HOME:$HOME/src

TWILIO_AC_ZSH_SETUP_PATH=$HOME/.twilio-cli/autocomplete/zsh_setup && test -f $TWILIO_AC_ZSH_SETUP_PATH && source $TWILIO_AC_ZSH_SETUP_PATH;

autoload -Uz compinit
# init once per day
if [ "$(date +'%j')" != "$(stat -f '%Sm' -t '%j' ~/.zcompdump 2>/dev/null)" ]; then
    compinit
else
    compinit -C
fi

source $HOME/.aliases
source $HOME/.functions
source $HOME/powerlevel10k/powerlevel10k.zsh-theme
source $HOME/.p10k.zsh

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}' # case-insensitive matching

eval "$(/opt/homebrew/bin/brew shellenv)"eval

#zprof