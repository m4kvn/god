#!/bin/sh -eu

GOD_ROOT=${GOD_ROOT:-$HOME/.god}

[ -s $GOD_ROOT ] && god status $GOD_ROOT
[ -s $HOME/.atom ] && god status $HOME/.atom
