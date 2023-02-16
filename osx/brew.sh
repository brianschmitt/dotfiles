#!/bin/sh

command -v brew >/dev/null 2>&1 || { echo >&2 "Installing Homebrew Now"; \
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"; \
eval "$(/opt/homebrew/bin/brew shellenv)"; }

brew analytics off
brew update
brew upgrade
brew upgrade --cask

# web dev
brew install node@16
brew link --force --overwrite node@16
brew pin node@16
brew install --cask visual-studio-code
#brew install --cask postman
#brew install --cask ngrok
#brew install --cask http-toolkit

# commandline utils
brew install ripgrep
brew install git
brew install tldr
brew install fd
brew install broot
#brew install awscli
#brew install azure-cli
#brew install terraform

#brew tap mongodb/brew
#brew install mongodb-community@4.4

# phone utils
#brew install scrcpy
#brew install --cask android-file-transfer
#brew install --cask android-platform-tools

# general apps
brew install --cask joplin
brew install --cask macvim
brew install --cask firefox
brew install --cask iterm2
brew install --cask spotify
brew install --cask clipy
brew install --cask rectangle
#brew install --cask taskexplorer

# optional
#brew install --cask bitwarden
#brew install --cask dotnet-sdk
#brew install --cask lulu

brew tap homebrew/cask-fonts
brew install --cask font-fira-code-nerd-font

brew tap homebrew/cask-drivers
brew install logitech-options

brew install mas
mas install 937984704 # Amphetamine
#mas install 497799835 # Xcode

brew cleanup
