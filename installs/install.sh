#!/bin/sh -eu

DIR=$(cd $(dirname $0) && pwd)

find $DIR/homebrew-cask -type f | xargs -I{} sh {}
find $DIR/homebrew -type f | xargs -I{} sh {}
find $DIR/etc -type f | xargs -I{} sh {}

[ -n "$(gem --version 2>/dev/null)" ] \
    && find $DIR/gems -type f | xargs -I{} sh {}
