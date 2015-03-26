#!/bin/bash

brew update
brew upgrade

brew install coreutils

brew install moreutils

brew install bash

brew install bash-completion

brew install macvim --override-system-vim
brew linkapps macvim

brew install node

brew install openssl

brew install android-platform-tools

brew install caskroom/cask/brew-cask

brew cask install sourcetree

brew cask install xamarin

brew cask install iterm2

brew cask install google-chrome

brew cask install firefox

brew cask install skype

brew cask install lastpass

#brew cask install haroopad

brew cask install xtrafinder

brew cask install bettertouchtool

brew cask install google-drive

brew cask install microsoft-lync

brew cask install microsoft-lync-plugin

brew cleanup
