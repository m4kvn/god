#!/bin/sh -eu

GOD_ROOT=${GOD_ROOT:-$HOME/.god}

if [ ! $(xcode-select -p 2>/dev/null) ]; then
    printf '[god]\e[31m `xcode-select --install` is not running.\n\e[m' >& 2
    exit 1
fi

if [ ! -d "$GOD_ROOT" ]; then
    git clone https://github.com/m4kvn/god.git $GOD_ROOT
fi

sh $GOD_ROOT/installs/init/homebrew.sh
sh $GOD_ROOT/installs/init/git.sh

# dotfiles
sh $GOD_ROOT/dotfiles/update.sh

# installs
sh $GOD_ROOT/installs/install.sh

# scripts
sh $GOD_ROOT/scripts/update.sh
