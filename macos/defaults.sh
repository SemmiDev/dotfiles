#!/usr/bin/env bash

# macOS System Defaults Configuration
# Inspired by https://github.com/mathiasbynens/dotfiles

# Close any open System Preferences panes, to prevent them from overriding
# settings we’re about to change
osascript -e 'tell application "System Preferences" to quit'

# --- Keyboard ---
# Set a blazingly fast keyboard repeat rate
defaults write NSGlobalDomain KeyRepeat -int 1
defaults write NSGlobalDomain InitialKeyRepeat -int 10

# --- Finder ---
# Finder: allow quitting via ⌘ + Q; doing so will also hide desktop icons
defaults write com.apple.finder QuitMenuItem -bool true
# Finder: show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
# Finder: show status bar
defaults write com.apple.finder ShowStatusBar -bool true
# Finder: show path bar
defaults write com.apple.finder ShowPathbar -bool true
# Keep folders on top when sorting by name
defaults write com.apple.finder _FXSortFoldersFirst -bool true
# When performing a search, search the current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"
# Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# --- Dock ---
# Minimize windows into their application’s icon
defaults write com.apple.dock minimize-to-application -bool true
# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true
# Remove the animation delay when hiding the Dock
defaults write com.apple.dock autohide-delay -float 0
# Remove the animation when hiding/showing the Dock
defaults write com.apple.dock autohide-time-modifier -float 0

# --- Safari & WebKit ---
# Privacy: don’t send queries to Apple
defaults write com.apple.Safari UniversalSearchEnabled -bool false
defaults write com.apple.Safari SuppressSearchSuggestions -bool true
# Enable Safari’s debug menu
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
# Enable the Develop menu and the Web Inspector in Safari
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true

# Restart affected apps
for app in "Dock" "Finder" "Safari"; do
	killall "${app}" &> /dev/null
done

echo "macOS defaults updated. Some changes may require a logout/restart to take effect."
