#!/bin/sh

mkdir -p "/Users/$(whoami)/Dropbox/IFTTT"
fileToWatch="/Users/$(whoami)/Dropbox/IFTTT/command.txt"
export fileToWatch

function onFileChange {
    sh $fileToWatch && rm -f $fileToWatch
}
export -f onFileChange

fswatch -0 $fileToWatch | xargs -0 -n1 -I{} bash -c 'onFileChange "$@"' _
