#!/bin/sh

if [ ! $(brew cask list | grep -w skype) ]; then
    brew cask install skype
fi
