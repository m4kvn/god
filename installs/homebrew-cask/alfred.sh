#!/bin/sh

if [ ! $(brew cask list | grep -w alfred) ]; then
    brew cask install alfred
fi
