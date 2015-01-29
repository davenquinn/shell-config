#!/bin/zsh
TMPFILE="$$.tmp.zip"
DIR="$$.tmpdir"
wget "https://github.com/mbadolato/iTerm2-Color-Schemes/archive/master.zip" -O $TMPFILE
unzip -d $DIR $TMPFILE
rm $TMPFILE

open $DIR/*/schemes/*.itermcolors

read -sn 1 -p "Add all the themes and then press any key to delete the temporary files..."

rm -rf $DIR
