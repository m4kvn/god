#!/bin/sh

if [ ! $(brew cask list | grep -w discord) ]; then
    brew cask install discord
fi
