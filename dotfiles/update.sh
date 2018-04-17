#!/bin/sh -eu

DIR=$(cd $(dirname $0) && pwd)

cd $HOME && find $DIR/dots -type f | xargs -I{} ln -fs {} 2>/dev/null

# privates

if [ ! -s $HOME/.atom ]; then
    git clone https://github.com/m4kvn/atom.git $HOME/.atom
fi

exit 0
