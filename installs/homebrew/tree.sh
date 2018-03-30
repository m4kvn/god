#!/bin/sh

if [ ! $(brew list | grep -w tree) ]; then
    brew install tree
fi
