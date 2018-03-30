#!/bin/sh

if [ ! -n "$(brew list | grep -w unrar)" ]; then
    brew install unrar
fi
