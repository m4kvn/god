#!/bin/sh

if [ ! $(brew cask list | grep -w google-chrome) ]; then
    brew cask install google-chrome
fi
