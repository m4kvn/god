#!/bin/sh

if [ ! $(brew cask list | grep -w evernote) ]; then
    brew cask install evernote
fi
