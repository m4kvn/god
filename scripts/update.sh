#!/bin/sh -eu

DIR=$(cd $(dirname $0) && pwd)

cd $DIR/bin

ls -Ad $DIR/shell | \
xargs -I{} find {} -type f | \
xargs -I{} chmod +x {}

ls -Ad $DIR/shell | \
xargs -I{} find {} -type f | \
xargs -I{} ln -fs {} 2>/dev/null

exit 0
