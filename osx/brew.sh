#!/bin/bash

brew update
brew upgrade
brew upgrade --cask

brew install node@14
brew link --force --overwrite node@14
brew pin node@14
#brew install awscli
#brew install azure-cli
#brew install terraform
brew install ripgrep
brew install git
brew install scrcpy

brew tap mongodb/brew
brew install mongodb-community@4.4

brew install --cask joplin
brew install --cask macvim
brew install --cask firefox
brew install --cask iterm2
#brew install --cask bitwarden
brew install --cask android-file-transfer
brew install --cask postman
brew install --cask android-platform-tools
brew install --cask spotify
brew install --cask clipy
brew install --cask ngrok
brew install --cask visual-studio-code
brew install --cask dotnet-sdk
#brew install --cask webex-meetings

brew tap homebrew/cask-fonts
brew install --cask font-fira-code-nerd-font

brew tap homebrew/cask-drivers
brew install logitech-options

brew install mas
mas install 937984704 # Amphetamine
mas install 497799835 # Xcode

brew cleanup
