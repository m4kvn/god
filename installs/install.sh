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
    sort | uniq -u | xargs -I{} brew cask install {}
    rm -f $BREW_CASK_LIST
}

install_homebrew() {
    BREW_LIST=$(mktemp $DIR/tmp/brew-list.XXXXXXXX)
    brew list > $BREW_LIST
    (cat $DIR/homebrew $BREW_LIST | sort -u; cat $BREW_LIST) | \
    sort | uniq -u | xargs -I{} brew install {}
    rm -f $BREW_LIST
}

install_shell() {
    find $DIR/shell -type f | xargs -I{} sh {}
}

install_lang() {
    find $DIR/lang -type f | xargs -I{} sh {}
}

install_gem() {
    GEM_LIST=$(mktemp $DIR/tmp/gem.XXXXXXXX)
    gem list | cut -d " " -f 1 > $GEM_LIST
    (cat $DIR/gem $GEM_LIST | sort -u; cat $GEM_LIST) | \
    sort | uniq -u | xargs -I{} gem install {}
    rm -f $GEM_LIST
}

install_go() {
    . $DIR/go
}

install_etc() {
    find $DIR/etc -type f | xargs -I{} sh {}
}

install_homebrew_tap
install_homebrew_cask
install_homebrew
install_shell
install_lang
install_gem
install_go
install_etc

exit 0
