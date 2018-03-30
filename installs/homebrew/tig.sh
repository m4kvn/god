#!/bin/sh

if [ ! $(brew list | grep -w tig) ]; then
    brew install tig
fi
