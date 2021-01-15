#!/bin/bash

brew update
brew upgrade
brew upgrade --cask

brew install node@14
brew link --force --overwrite node@14
#brew install awscli
#brew install azure-cli
#brew install terraform
brew install ripgrep
brew install git
brew install scrcpy

brew tap mongodb/brew
brew install mongodb-community@4.4

brew tap twilio/brew
brew install twilio

brew install --cask joplin
brew install --cask macvim
brew install --cask firefox
brew install --cask iterm2
brew install --cask bitwarden
brew install --cask android-file-transfer
brew install --cask postman
brew install --cask android-platform-tools
brew install --cask spotify
brew install --cask clipy
brew install --cask ngrok
brew install --cask visual-studio-code
brew install --cask dotnet-sdk
brew install --cask webex-meetings

brew cleanup
