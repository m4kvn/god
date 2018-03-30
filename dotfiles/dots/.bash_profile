
# god
export GOD_ROOT=$HOME/.god

# scripts
if [ -s $GOD_ROOT/scripts/bin ]; then
    export PATH=$GOD_ROOT/scripts/bin:$PATH
fi

# adb
if [ -s ~/Library/Android/sdk/platform-tools ]; then
    export PATH=~/Library/Android/sdk/platform-tools:$PATH
fi

# rbenv
if [ -s ~/.rbenv ]; then
    export PATH=~/.rbenv/bin:$PATH
    eval "$(rbenv init -)"
fi

# pyenv
if [ -s ~/.pyenv ]; then
    export PYENV_ROOT=~/.pyenv
    export PATH=$PYENV_ROOT/bin:$PATH
    eval "$(pyenv init -)"
fi

# goenv
if [ -s ~/.goenv ]; then
    export GOENV_ROOT=~/.goenv
    export PATH=$GOENV_ROOT/bin:$PATH
    eval "$(goenv init -)"
fi

# ndenv
if [ -s ~/.ndenv ]; then
    export PATH=$HOME/.ndenv/bin:$PATH
    eval "$(ndenv init -)"
fi

if [ -s $HOME/.atom ]; then
    cd $HOME/.atom
    if [ ! -n "$(git status | grep -w 'working tree clean')" ]; then
        printf "\n[god]\e[36m $HOME/.atom is updated.\n\e[m"
        git status --short
    fi
fi

if [ -s $GOD_ROOT ]; then
    cd $GOD_ROOT
    if [ ! -n "$(git status | grep -w 'working tree clean')" ]; then
        printf "\n[god]\e[36m $GOD_ROOT is updated.\n\e[m"
        git status --short
    fi
fi
