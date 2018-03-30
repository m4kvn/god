#!/bin/sh

if [ ! $(brew cask list | grep -w firefox) ]; then
    brew cask install firefox
fi
