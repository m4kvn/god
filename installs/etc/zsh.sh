#!/bin/sh

ZSH_PATH=/usr/local/bin/zsh

# シェル一覧にHomebrewのzshがない場合は追記
if [ ! $(cat /etc/shells | grep -w $ZSH_PATH) ]; then
    echo "[zeus] Add $ZSH_PATH to /etc/shells"
    echo $ZSH_PATH | sudo tee -a /etc/shells
fi

# ユーザーのログインシェルを取得する
LOGIN_SHELL=$(dscl localhost -read Local/Default/Users/$USER UserShell | cut -d' ' -f2)

# ログインシェルがHomebrewのzshではない場合は変更
if ! expr "$LOGIN_SHELL" : "$ZSH_PATH" > /dev/null; then
    echo "[zeus] Change login shell to $ZSH_PATH"
    chsh -s $ZSH_PATH
fi
