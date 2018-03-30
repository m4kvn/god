#!/bin/sh

if [ ! -n "$(brew cask list | grep -w kindle)" ]; then
    brew cask install kindle
fi
