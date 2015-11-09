#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies and brews needed

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."

  # Install the correct homebrew for each OS type
  if test "$(uname)" = "Darwin"
  then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  elif test "$(expr substr $(uname -s) 1 5)" = "Linux"
  then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/linuxbrew/go/install)"
  fi

fi

# Update Homebrew, formulae, and packages

brew update
brew upgrade

# Install packages

apps=(
    cask
    grc
    coreutils
    spark
    git
    node
    imagemagick
    hub
    ansible
    postgres
    heroku
    redis
)

brew install "${apps[@]}"

exit 0
