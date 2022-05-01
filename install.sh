#!/usr/bin/env bash

set -e

# param1 - home dir
# param2 - mpv config dir
install_dotfiles() {
  mkdir -p "$@" \
    && cp -rv bin lib "$1" \
    && cp -rv ./dotfiles/mpv.conf "$2" \
    && find . -type f \( -path "./dotfiles/*" -a -iname ".*" \) -exec cp -rv '{}' "$1" ';'
}

if [[ "$#" -lt 2 ]]; then
  install_dotfiles "$HOME" "$HOME/.config/mpv"
else
  install_dotfiles "$@"
fi
