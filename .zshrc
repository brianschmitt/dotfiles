export EDITOR='vim'
export HOMEBREW_NO_AUTO_UPDATE=1

# History settings
HISTFILE=$HOME/.zsh_history
HISTSIZE=1000
SAVEHIST=1000

setopt HIST_IGNORE_ALL_DUPS  # do not put duplicated command into history list
setopt HIST_SAVE_NO_DUPS  # do not save duplicated command
setopt HIST_REDUCE_BLANKS  # remove unnecessary blanks
setopt INC_APPEND_HISTORY_TIME  # append command to history file immediately after execution
setopt EXTENDED_HISTORY  # record command start time

# Path settings
PATH=$PATH:$HOME/.lyftkube-bin
export PATH="$HOME/scripts:$HOME/Library/Python/3.9/bin:$PATH"
export PATH="/usr/local/opt/ruby/bin:/usr/local/lib/ruby/gems/3.1.0/bin:$PATH"
export PATH="/usr/local/opt/node@14/bin:$PATH"

CDPATH=.:$HOME:$HOME/src

TWILIO_AC_ZSH_SETUP_PATH=$HOME/.twilio-cli/autocomplete/zsh_setup && test -f $TWILIO_AC_ZSH_SETUP_PATH && source $TWILIO_AC_ZSH_SETUP_PATH;
source $HOME/.aliases
source $HOME/powerlevel10k/powerlevel10k.zsh-theme
source $HOME/.p10k.zsh