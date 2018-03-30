#!/bin/sh

if [ ! -n "$(gem list | grep -w tw)" ]; then
    gem install tw
fi
