#!/bin/sh -eu

version=v9.10.0
github=https://github.com/riywo
root=~/.ndenv
ndenv=$root/bin/ndenv

if [ ! -s $root ]; then
    git clone $github/ndenv.git $root
fi

if [ ! -s $root/plugins/node-build ]; then
    git clone $github/node-build.git $root/plugins/node-build
fi

if [ ! -s $root/versions/$version ]; then
    $ndenv install $version
    $ndenv global $version
    $ndenv rehash
fi
