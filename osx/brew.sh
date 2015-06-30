#!/bin/bash

brew update
brew upgrade

brew install android-platform-tools
brew install android-sdk
brew install bash
brew install bash-completion
brew install coreutils
brew install git-flow
brew install macvim --override-system-vim
brew install mono
brew install node
brew install openssl
brew install subversion

brew linkapps macvim

brew install caskroom/cask/brew-cask

brew cask install bettertouchtool
brew cask install firefox
brew cask install google-chrome
brew cask install google-drive
brew cask install iterm2
brew cask install lastpass
brew cask install radiant-player
brew cask install skype
brew cask install sourcetree
brew cask install xamarin
brew cask install xtrafinder

#brew cask install haroopad
#brew cask install microsoft-lync
#brew cask install microsoft-lync-plugin

brew cleanup
