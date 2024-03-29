#!/bin/bash

# Hide macOS bash to zsh warning
export BASH_SILENCE_DEPRECATION_WARNING=1

# Bash Prompt
export PS1="[\u@\h \W]\$ "

# Enable Colored Output
export CLICOLOR=1
export LSCOLORS=exfxcxdxbxegedabagacad

# Git Auto-Completion
if [ -f ~/.git-completion.bash ]; then
    source ~/.git-completion.bash
fi

# Git Prompt
if [ -f ~/.git-prompt.sh ]; then
    source ~/.git-prompt.sh
    export PS1='[\u@\h \W$(__git_ps1 "(%s)")]\$ '
fi 

# Homebrew Python
export PATH="/opt/homebrew/opt/python@3.12/bin:$PATH"

