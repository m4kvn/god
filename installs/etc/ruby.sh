#!/bin/sh -eu

global_version=2.3.4
rbenv=https://github.com/rbenv
root=~/.rbenv
bin=$root/bin/rbenv

if [ ! -s $root ]; then
    git clone $rbenv/rbenv.git $root
    cd $root && src/configure && make -C src && cd ~
fi

if [ ! -s $root/plugins/ruby-build ]; then
    mkdir -p $root/plugins
    git clone $rbenv/ruby-build.git \
    $root/plugins/ruby-build
fi

if [ ! -s $root/versions/$global_version ]; then
    $bin install $global_version
    $bin global $global_version
    $bin rehash
fi
