#!/bin/bash

brew update
brew upgrade

#brew install android-platform-tools
brew install android-sdk
brew install bash
brew install bash-completion
brew install coreutils
brew install git-flow
brew install macvim --with-override-system-vim
brew install mono
brew install node
brew install openssl

brew linkapps macvim

brew install caskroom/cask/brew-cask

brew cask install java
#brew cask install bettertouchtool
brew cask install firefox
brew cask install google-chrome
brew cask install google-drive
#brew cask install iterm2
brew tap caskroom/versions
brew cask install iterm2-nightly
brew cask install lastpass
brew cask install radiant-player
brew cask install skype
#brew cask install sourcetree
brew cask intall gitkraken
brew cask install xamarin
#brew cask install xtrafinder
#brew cask install virtualbox
brew cask install spotify
brew cask install owasp-zap
brew cask install android-file-transfer
brew cask install postman

brew cask install visual-studio-code-insiders
brew cask install royal-tsx

brew cask install microsoft-office

#brew cask install haroopad
brew cask install microsoft-lync
#brew cask install microsoft-lync-plugin

brew cleanup
