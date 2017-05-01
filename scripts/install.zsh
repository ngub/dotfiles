#!/bin/zsh

if [ "$(echo "$ZSH_NAME")" != "zsh" ]; then
    chsh -s zsh
fi

if [ ! -x "$(which brew)" ]; then
    echo "Please install brew and restart installation"
    exit 1
fi

if [ ! -x "$(which fzf)" ]; then
    brew install fzf
fi
