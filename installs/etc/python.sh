#!/bin/sh -eu

global_version=2.7.14
root=~/.pyenv
pyenv=$root/bin/pyenv

if [ ! -s $root ]; then
    git clone https://github.com/yyuu/pyenv.git $root
fi

if [ ! -s $root/versions/$global_versions ]; then
    $pyenv install $global_version
    $pyenv global $global_version
fi
