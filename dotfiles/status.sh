#!/bin/sh -eu

ZEUS_ROOT=${ZEUS_ROOT:-$HOME/.zeus}

[ -s $ZEUS_ROOT ] && zeus status $ZEUS_ROOT
[ -s $HOME/.atom ] && zeus status $HOME/.atom
[ -s $HOME/Boostnote ] && zeus status $HOME/Boostnote
