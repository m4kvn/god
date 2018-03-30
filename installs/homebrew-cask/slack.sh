#!/bin/sh

if [ ! $(brew cask list | grep -w slack) ]; then
    brew cask install slack
fi
