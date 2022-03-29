#!/bin/bash

# Ask for the administrator password upfront
sudo -v
# Keep-alive: update existing `sudo` time stamp until `.osx` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

defaults write com.apple.finder AppleShowAllFiles -bool true # Finder: show hidden files by default
defaults write com.apple.finder ShowStatusBar -bool true # Finder: show status bar
defaults write com.apple.finder ShowPathbar -bool true # Finder: show path bar
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv" # Use list view in all Finder windows by default
defaults write NSGlobalDomain AppleShowAllExtensions -bool true # Finder: show all filename extensions

defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true # Avoid creating .DS_Store files on network volumes

defaults write com.googlecode.iterm2 PromptOnQuit -bool false # Don't display the annoying prompt when quitting iTerm

sudo systemsetup -settimezone America/New_York # Set locale

defaults write com.apple.dock show-recents -bool false # Hide recents in dock
defaults write com.apple.dock persistent-apps -array # Remove all default apps
defaults write com.apple.dock autohide -bool true

killall Finder
killall Dock

#sudo scutil --set ComputerName "MacBook"
#sudo scutil --set Hostname "MacBook"