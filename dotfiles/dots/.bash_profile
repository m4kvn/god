
# zeus
export ZEUS_ROOT=$HOME/.zeus

# scripts
if [ -s $ZEUS_ROOT/scripts/bin ]; then
    export PATH=$ZEUS_ROOT/scripts/bin:$PATH
fi
if [ -s $ZEUS_ROOT/scripts/playground ]; then
    export PATH=$ZEUS_ROOT/scripts/playground:$PATH
fi
if [ -s $ZEUS_ROOT/dotfiles/playground/profile ]; then
    . $ZEUS_ROOT/dotfiles/playground/profile
fi

# go
if [ -s ~/go ]; then
    export GOPATH=~/go
    export PATH=$GOPATH/bin:$PATH
fi

# java
if [ -s ]; then
    export JAVA_HOME=$(/System/Library/Frameworks/JavaVM.framework/Versions/A/Commands/java_home -v "9")
    export PATH=$JAVA_HOME/bin:$PATH
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

# ndenv
if [ -s ~/.ndenv ]; then
    export PATH=$HOME/.ndenv/bin:$PATH
    eval "$(ndenv init -)"
fi

# status
if [ -s $ZEUS_ROOT/dotfiles/status.sh ]; then
    sh $ZEUS_ROOT/dotfiles/status.sh
fi

# alias
alias z='zeus'
