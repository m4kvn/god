#!/bin/sh

if [ ! $(brew list | grep -w zsh) ]; then
    brew install zsh
fi

zsh=/usr/local/bin/zsh

if [ ! $(cat /etc/shells | grep $zsh) ]; then
    echo $zsh | sudo tee -a /etc/shells
fi

if ! expr "$SHELL" : "$zsh" > /dev/null; then
    chsh -s $zsh
fi
