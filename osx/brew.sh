#!/bin/sh

command -v brew >/dev/null 2>&1 || { echo >&2 "Installing Homebrew Now"; \
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"; \
eval "$(/opt/homebrew/bin/brew shellenv)"; }

brew analytics off
brew update
brew upgrade
brew upgrade --cask

# web dev
# brew install nvm
brew install node@18
brew pin node@18
brew install pipx
brew install --cask visual-studio-code
#brew install --cask postman
#brew install --cask ngrok
#brew install --cask http-toolkit

# commandline utils
brew install ripgrep
brew install git
brew install fzf
brew install tldr
brew install git-delta
#brew install fd
#brew install broot
#brew install jq
#brew install awscli
#brew install azure-cli
#brew install terraform

#brew tap mongodb/brew
#brew install mongodb-community@4.4

# phone utils
#brew install scrcpy
#brew install --cask android-file-transfer
brew install --cask android-studio
brew install --cask android-platform-tools

# general apps
brew install --cask obsidian
brew install --cask macvim
brew install --cask firefox
brew install --cask iterm2
#brew install --cask spotify
brew install --cask clipy
brew install --cask rectangle
brew install --cask calibre
brew install --cask docker
brew install --cask syncthing
#brew install --cask taskexplorer
#brew install --cask microsoft-outlook
#brew install --cask microsoft-teams
brew install --cask logi-options+

# optional
#brew install --cask bitwarden
#brew install --cask dotnet-sdk
#brew install --cask lulu

brew tap homebrew/cask-fonts
brew install --cask font-fira-code-nerd-font

brew install supabase/tap/supabase

brew install mas
mas install 937984704 # Amphetamine
mas install 1295203466 # Microsoft Remote Desktop
mas install 1452453066 # Hidden Bar
#mas install 497799835 # Xcode

brew cleanup
