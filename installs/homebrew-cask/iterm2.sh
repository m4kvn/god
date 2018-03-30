#!/bin.sh

if [ ! $(brew cask list | grep -w iterm2) ]; then
    brew cask install iterm2
fi
