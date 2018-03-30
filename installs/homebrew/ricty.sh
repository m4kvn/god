#!/bin/sh

if [ ! -n "$(brew tap | grep -w sanemat/font)" ]; then
    brew tap sanemat/font
fi

if [ ! -n "$(brew list | grep -w ricty)" ]; then
    brew install ricty
    cp -f /usr/local/opt/ricty/share/fonts/Ricty*.ttf ~/Library/Fonts/
    fc-cache -vf
fi

