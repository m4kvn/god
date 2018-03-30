#!/bin/sh

if [ ! $(brew list | grep -w ffmpeg) ]; then
    brew install ffmpeg
fi
