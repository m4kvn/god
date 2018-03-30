#!/bin/sh

if [ ! -n "$(brew cask list | grep -w gyazo)" ]; then
    brew cask install gyazo
fi
