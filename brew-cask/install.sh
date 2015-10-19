#!/bin/sh
#
# Brew-cask
#
# This installs GUI apps

# Check for brew-cask
if test ! $(brew cask --version)
then
  echo "  Installing brew-cask for you."
  $(brew install caskroom/cask/brew-cask)
fi

brew update
brew upgrade brew-cask
brew cleanup
brew cask cleanup

# Install packages

apps=(
  google-drive
  iterm2
  google-chrome-canary
  virtualbox
  vagrant
  vlc
  screenhero
  bittorrent
)

brew cask install "${apps[@]}"

exit 0
