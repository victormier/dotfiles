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
brew upgrade cask
brew cleanup
brew cask cleanup

# Install packages

apps=(
  iterm2
  vlc
  slack
  notion
  spectacle
  grandperspective
  ngrok
  postman
  spotify
  cursor
  obsidian
  1password
)

brew cask install "${apps[@]}"

exit 0
