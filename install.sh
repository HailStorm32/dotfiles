#!/bin/bash

for dotfile in $(find -L home -mindepth 1 -type f | sed 's#^[^/]*/##'); do
    mkdir -p $HOME/$(dirname $dotfile)
    ln -vsfT $(realpath -m home/$dotfile) $HOME/$dotfile
done
