#!/bin/sh

if [ ! $(brew cask list | grep -w sketch) ]; then
    brew cask install sketch
fi
