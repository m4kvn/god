
# zeus
export ZEUS_ROOT=$HOME/.zeus

# scripts
if [ -s $ZEUS_ROOT/scripts/bin ]; then
    export PATH=$ZEUS_ROOT/scripts/bin:$PATH
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

# status
if [ -s $ZEUS_ROOT/dotfiles/status.sh ]; then
    sh $ZEUS_ROOT/dotfiles/status.sh
fi
