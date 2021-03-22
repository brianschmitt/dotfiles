# Path to your oh-my-zsh installation.
export ZSH="/Users/bschmitt/.oh-my-zsh"

ZSH_THEME="agnoster"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

plugins=(git npm)

# User configurations
for file in ~/.{path,exports,aliases,extra}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

export PATH="$HOME/scripts:$PATH"
ZSH_DISABLE_COMPFIX=true

source $ZSH/oh-my-zsh.sh

DEFAULT_USER='bschmitt'

# twilio autocomplete setup
TWILIO_AC_ZSH_SETUP_PATH=/Users/bschmitt/.twilio-cli/autocomplete/zsh_setup && test -f $TWILIO_AC_ZSH_SETUP_PATH && source $TWILIO_AC_ZSH_SETUP_PATH;
PATH=$PATH:/Users/bschmitt/.lyftkube-bin
