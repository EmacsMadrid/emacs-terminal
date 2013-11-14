#!/bin/sh
# -*- coding: utf-8 -*-
# -*- Shell -*-

NAME=`basename $0`
BUFFER="*stdin*"
function show_usage {
    echo "usage: <command that produces output> | $NAME [buffer-name]"
    exit 1
}

function input_to_file {
    while IFS= read -r line
    do
        echo "$line" >> $1
    done
}

function pipe_to_emacs {
    buffer=${1:-$BUFFER}
    file=`mktemp`
    input_to_file $file
    emacsclient -n --eval "(pipe \"$file\" \"$buffer\")" > /dev/null
    rm file
}

if [ $# -gt 1 ]; then
    show_usage
else
    pipe_to_emacs $1
fi
