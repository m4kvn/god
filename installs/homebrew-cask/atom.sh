#!/bin/sh -eu

if [ ! -n "$(brew cask list | grep -w atom)" ]; then
    brew cask install atom
fi
