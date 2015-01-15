#!/bin/bash

# Ask for the administrator password upfront
sudo -v


# Keep-alive: update existing `sudo` time stamp until `.osx` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &


# Disable the “Are you sure you want to open this application?” dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false

# I LOVE ME SOME speling autocorrect.
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool true


# Finder: show hidden files by default
defaults write com.apple.Finder AppleShowAllFiles -bool true


# Finder: show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Enable the Develop menu and the Web Inspector in Safari
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true

# Don’t display the annoying prompt when quitting iTerm
defaults write com.googlecode.iterm2 PromptOnQuit -bool false