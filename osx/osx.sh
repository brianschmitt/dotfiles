#!/bin/bash

# Ask for the administrator password upfront
sudo -v
# Keep-alive: update existing `sudo` time stamp until `.osx` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Finder: show hidden files by default
defaults write com.apple.finder AppleShowAllFiles -bool true
# Finder: show status bar
defaults write com.apple.finder ShowStatusBar -bool true
# Finder: show path bar
defaults write com.apple.finder ShowPathbar -bool true
# Use list view in all Finder windows by default
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"
# Finder: show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Avoid creating .DS_Store files on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

# Hide recents in dock
defaults write com.apple.dock show-recents -bool false
# Remove the auto-hiding dock delay
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock autohide-delay -float 0
defaults write com.apple.dock autohide-time-modifier -float 0.5
# Remove all default apps
dockutil --remove all --no-restart

apps=(
    "/Applications/Google Chrome.app"
    "/Applications/Slack.app"
    "/Applications/Obsidian.app"
    "/Applications/Visual Studio Code.app"
    "/Applications/iTerm.app"
)

for app in "${apps[@]}"; do
    if [ -d "$app" ]; then
        dockutil --add "$app" --no-restart
    else
        echo "Warning: $app not found, skipping."
    fi
done

defaults write com.apple.universalaccess mouseDriverCursorSize -float 2 # Increase cursor size

# Copy personal default keybindings
mkdir ~/Library/KeyBindings
cp ~/dotfiles/osx/DefaultKeyBinding.dict ~/Library/KeyBindings/DefaultKeyBinding.dict

# Set iTerm2 to load preferences from the dotfiles directory
defaults write com.googlecode.iterm2 "PrefsCustomFolder" -string "~/dotfiles/osx"
# Tell iTerm2 to use the custom preferences folder
defaults write com.googlecode.iterm2 "LoadPrefsFromCustomFolder" -bool true

for app in "cfprefsd" \
    "Dock" \
    "Finder" \
    "SystemUIServer"; do
    killall "${app}" &> /dev/null
done

echo "New hostname:"
echo
read -r COMPUTER_NAME
sudo scutil --set ComputerName "$COMPUTER_NAME"
sudo scutil --set HostName "$COMPUTER_NAME"
sudo scutil --set LocalHostName "$COMPUTER_NAME"
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "$COMPUTER_NAME"