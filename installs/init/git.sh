#!/bin/sh -eu

if [ ! $(brew list | grep -w git) ]; then
    brew install git
fi
