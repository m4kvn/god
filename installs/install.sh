#!/bin/sh

DIR=$(cd $(dirname $0) && pwd)

install_homebrew_tap() {
    BREW_TAP_LIST=$(mktemp $DIR/tmp/brew-tap-list.XXXXXXXX)
    brew tap > $BREW_TAP_LIST
    (cat $DIR/homebrew-tap $BREW_TAP_LIST | sort -u; cat $BREW_TAP_LIST) | \
    sort | uniq -u | xargs -I{} brew tap {}
    rm -f $BREW_TAP_LIST
}

install_homebrew_cask() {
    BREW_CASK_LIST=$(mktemp $DIR/tmp/brew-cask-list.XXXXXXXX)
    brew cask list > $BREW_CASK_LIST
    (cat $DIR/homebrew-cask $BREW_CASK_LIST | sort -u; cat $BREW_CASK_LIST) | \
    sort | uniq -u | xargs brew cask install
    rm -f $BREW_CASK_LIST
}

install_homebrew() {
    :
}

install_homebrew_tap
install_homebrew_cask
install_homebrew

# find $DIR/homebrew-cask -type f | xargs -I{} sh {}
# find $DIR/homebrew -type f | xargs -I{} sh {}
# find $DIR/etc -type f | xargs -I{} sh {}
#
# [ -n "$(gem --version 2>/dev/null)" ] \
#     && find $DIR/gems -type f | xargs -I{} sh {}

exit 0
