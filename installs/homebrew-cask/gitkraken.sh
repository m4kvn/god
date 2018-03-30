#!/bin/sh

if [ ! $(brew cask list | grep -w gitkraken) ]; then
    brew cask install gitkraken
fi
