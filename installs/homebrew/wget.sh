#!/bin/sh

if [ ! -n "$(brew list | grep -w wget)" ]; then
    brew install wget
fi
