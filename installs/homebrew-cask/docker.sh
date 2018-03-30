#!/bin/sh

if [ ! $(brew cask list | grep -w docker) ]; then
    brew cask install docker
fi
