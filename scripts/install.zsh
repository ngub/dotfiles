#!/bin/zsh

if [ "$(echo "$ZSH_NAME")" != "zsh" ]; then
    chsh -s zsh
fi
