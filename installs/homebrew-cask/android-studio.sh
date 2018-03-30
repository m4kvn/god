#!/bin/sh

if [ ! $(brew cask list | grep -w android-studio) ]; then
    brew cask install android-studio
fi
