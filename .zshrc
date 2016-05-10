# Path to your oh-my-zsh installation.
export ZSH=/Users/schmitt/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git rsync git-flow)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/schmitt/scripts/"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias l1='ls -1'

alias noderepl="node -e \"require('repl').start({ignoreUndefined: true})\""

alias gp='grep -RInf /dev/stdin . <<<' # grep with some standard options

alias gtp='cd ~/projects' # go to projects

alias gts='cd ~/Google\ Drive/Backup/Osx/scripts'

alias ff='find . -name '

grepfind () { grep -RIni $1 . --include="**/$2" }
alias gf='grepfind'

alias home='cd ~/'

alias weather='curl -4 http://wttr.in/allentown'

DEFAULT_USER='schmitt'

#
 #   L E S S   C O L O R S   F O R   M A N   P A G E S
 #
 # CHANGE FIRST NUMBER PAIR FOR COMMAND AND FLAG COLOR
export LESS_TERMCAP_md=$'\E[0;33;5;74m'  # begin bold

 # CHANGE FIRST NUMBER PAIR FOR PARAMETER COLOR
export LESS_TERMCAP_us=$'\E[0;36;5;146m' # begin underline

 # don't change anything here
export LESS_TERMCAP_mb=$'\E[1;31m'       # begin blinking
export LESS_TERMCAP_me=$'\E[0m'           # end mode
export LESS_TERMCAP_se=$'\E[0m'           # end standout-mode
export LESS_TERMCAP_so=$'\E[38;5;246m'    # begin standout-mode - info box
export LESS_TERMCAP_ue=$'\E[0m'           # end underline

 #########################################
 # Colorcodes:
 # Black       0;30     Dark Gray     1;30
 # Red         0;31     Light Red     1;31
 # Green       0;32     Light Green   1;32
 # Brown       0;33     Yellow        1;33
 # Blue        0;34     Light Blue    1;34
 # Purple      0;35     Light Purple  1;35
 # Cyan        0;36     Light Cyan    1;36
 # Light Gray  0;37     White         1;37
 #########################################

source /Users/schmitt/.iterm2_shell_integration.zsh

iterm2_print_user_vars() {
  iterm2_set_user_var gitBranch $((git branch 2> /dev/null) | grep \* | cut -c3-)
}


xam () { open -n /Applications/Xamarin\ Studio.app }

git_unsynced () {find . -name .git -type d 2>/dev/null|while read l;do (pushd "$l/../"&&git fetch&&git status -sb&&popd > /dev/null);echo;done}

export HOMEBREW_NO_ANALYTICS=1
