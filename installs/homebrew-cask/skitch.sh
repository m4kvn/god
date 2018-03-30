#!/bin/sh

if [ ! $(brew cask list | grep -w skitch) ]; then
    brew cask install skitch
fi
