#!/bin/bash


#------Enviroment Variables------#

export PATH=$HOME/.local/bin:$HOME/.cargo/bin:$PATH
export EDITOR=vim
export XDG_CONFIG_HOME=$HOME/.config




# If not running interactively, don't do anything
[[ $- != *i* ]] && return


path="$(tput setaf 4)\w$(tput sgr0)"
name="$(tput setaf 6)\u$(tput sgr0)"
host="$(tput setaf 6)\h$(tput sgr0)"
PS1="┌─[$path]\n└─[$name@$host]$ "


#------Aliases-------#

# Aliases if exa is installed
if [ -f $(command -v exa) ]; then
    alias ls='exa'
    alias lsa='exa -a'
    alias lsl='exa -lg@'
else
    alias ls='ls --color=auto'
    alias lsa='ls --color=auto --almost-all'
    alias lsl='ls --color=auto --almost-all -l'
fi

alias cat=bat

alias cl='clear'
