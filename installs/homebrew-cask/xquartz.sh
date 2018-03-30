#!/bin/sh

if [ ! -n "$(brew cask list | grep -w xquartz)" ]; then
    brew cask install xquartz
fi
