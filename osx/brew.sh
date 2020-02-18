#!/bin/bash

brew update
brew upgrade
brew cask upgrade

brew install bash
brew install bash-completion@2
brew install coreutils
brew install node
brew install python
#brew install awscli
#brew install azure-cli
#brew install terraform
brew install ripgrep

brew cask install joplin
brew cask install macvim
brew cask install android-platform-tools
brew cask install android-sdk
brew cask install microsoft-edge
brew cask install firefox
brew cask install iterm2
#brew cask install powershell
#brew cask install bitwarden
#brew cask install radiant-player
brew cask install sourcetree
brew cask install owasp-zap
#brew cask install android-file-transfer
brew cask install postman
brew cask install azure-data-studio

brew cask install visual-studio-code
brew cask install visual-studio
#brew cask install google-backup-and-sync

brew cask install microsoft-office
brew cask install microsoft-teams

brew cleanup
