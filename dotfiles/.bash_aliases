#!/bin/bash

# Mostly stolen from bash-it https://github.com/Bash-it/bash-it

# change directory
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# list
alias sl='ls'
alias la='ls -AF'
alias ll='ls -al'
alias l='ls -a'
alias l1='ls -1'
alias lf='ls -F'

# node development flag
alias node-dev='export NODE_ENV=development'

# node production flag
alias node-prod='export NODE_ENV=production'
