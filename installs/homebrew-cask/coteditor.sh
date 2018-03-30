#!/bin/sh

if [ ! $(brew cask list | grep -w coteditor) ]; then
    brew cask install coteditor
fi
