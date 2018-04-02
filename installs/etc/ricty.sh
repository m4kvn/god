#!/bin/sh

ZEUS_ROOT=${ZEUS_ROOT:-$HOME/.zeus}
RICTY_LIST_FILE=$ZEUS_ROOT/installs/tmp/ricty_list
RICTY_DIR_FILE=$ZEUS_ROOT/installs/tmp/ricty_dir

# Rictyリストファイルが空の場合は書き込む
if [ ! -s $RICTY_LIST_FILE ]; then
    echo "[zeus] Create Ricty file list file ..."
    brew info ricty | \
    grep -A 4 "Generated files:" | \
    tail -n 4 | xargs -I{} echo {} > $RICTY_LIST_FILE
fi

# Rictyフォルダファイルが空の場合は書き込む
if [ ! -s $RICTY_DIR_FILE ]; then
    echo "[zeus] Create Ricty dir file ..."
    TMP="$(brew info ricty | \
    grep -A 1 "To install Ricty:" | \
    tail -n 1 | xargs | cut -d ' ' -f 4)"
    echo "${TMP%Ricty\*.ttf}" > $RICTY_DIR_FILE
    brew info ricty | \
    grep -A 1 "To install Ricty:" | \
    tail -n 1 | xargs | cut -d ' ' -f 5 >> $RICTY_DIR_FILE
fi

RICTY_DIR=$(sed -n 1p $RICTY_DIR_FILE)
FONTS_DIR=$(sed -n 2p $RICTY_DIR_FILE)
FONTS_RICTY_DIR=${FONTS_DIR/\~/$HOME}Ricty

# Ricty用フォントフォルダがない場合は作成
[ ! -s $FONTS_RICTY_DIR ] && mkdir -p $FONTS_RICTY_DIR

while read LINE
do
    # Ricty用フォントフォルダにファイルが内場合はコピー
    FILE=$(basename $LINE)
    if [ ! -s $FONTS_RICTY_DIR/$FILE ]; then
        echo "[zeus] install $FILE"
        cp $LINE $FONTS_RICTY_DIR/$FILE
        INSTALL=true
    fi
done < $RICTY_LIST_FILE

# INSTALLがあった場合はフォントを更新する
if [ ! -z $INSTALL ]; then
    echo "[zeus] update fonts ..."
    fc-cache -f $FONTS_RICTY_DIR
fi

exit 0
