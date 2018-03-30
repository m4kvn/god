#!/bin/sh

if [ ! $(brew cask list | grep -w 1password) ]; then
    brew cask install 1password
fi
