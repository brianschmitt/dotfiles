#!/usr/bin/env bash

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update
brew upgrade

brew install coreutils

brew install moreutils

brew install bash

brew install git

brew install node

brew install android-platform-tools

brew install caskroom/cask/brew-cask

brew cask install iterm2

brew cleanup