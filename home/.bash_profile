#!/bin/bash

[[ -f ~/.bashrc ]] && . ~/.bashrc

if [ -z "${DISPLAY+x}" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
    exec startx
fi
