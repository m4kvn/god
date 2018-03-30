#!/bin/sh

if [ ! -n "$(brew list | grep -w fontforge)" ]; then
    brew install fontforge
fi
