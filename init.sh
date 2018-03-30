#!/bin/sh -eu

ZEUS_ROOT=${ZEUS_ROOT:-$HOME/.zeus}

if [ ! $(xcode-select -p 2>/dev/null) ]; then
    printf '[zeus]\e[31m `xcode-select --install` is not running.\n\e[m' >& 2
    exit 1
fi

if [ ! -d "$ZEUS_ROOT" ]; then
    git clone https://github.com/m4kvn/zeus.git $ZEUS_ROOT
fi

sh $ZEUS_ROOT/installs/init/homebrew.sh
sh $ZEUS_ROOT/installs/init/git.sh
sh $ZEUS_ROOT/scripts/shell/zeus/zeus-init
