#!/usr/bin/env bash

# Path
export PATH="$HOME/bin:$PATH"
export PATH="$PATH:/home/ash/.local/bin"
export PATH="$HOME/lib:$PATH"

# Environment
export JAVA_8='/lib/jvm/java-8-openjdk-amd64/bin/java'
export JAVA_11='/lib/jvm/java-11-openjdk-amd64/bin/java'
export JAVA_17='/lib/jvm/java-17-openjdk-amd64/bin/java'
export PICO_SDK_PATH="$HOME/Source/lib/pico-sdk"

export OTNET_CLI_TELEMETRY_OPTOUT='true'

# Default wine bottle
export WINEARCH='win32' WINEPREFIX="$HOME/.bottles/default"

# Aliases ===
alias ll='ls -has'

# Better navigation - stolen from https://github.com/mathiasbynens/dotfiles/
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ~='cd ~'

# py
alias avenv='. venv/bin/activate'
alias cvenv='python3 -m venv venv'

# programs
alias emacs='emacs -nw'
alias emacsg='emacs'
alias youtube-dl='yt-dlp'
