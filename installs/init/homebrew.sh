#!/bin/sh -eu

if [ ! -n "$(brew --version 2>/dev/null)" ]; then
    /usr/bin/ruby -e "$(curl -fsSL 'https://raw.githubusercontent.com/Homebrew/install/master/install')"
    exec $SHELL -l
fi
