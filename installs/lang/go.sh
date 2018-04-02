#!/bin/sh -eu

version=1.10.0
root=~/.goenv
goenv=$root/bin/goenv

if [ ! -s $root ]; then
    git clone https://github.com/syndbg/goenv.git $root
fi

if [ ! -s $root/versions/$version ]; then
    $goenv install $version
    $goenv global $version
    $goenv rehash
fi
