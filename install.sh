#!/usr/bin/env bash

set -e

cp -rvn bin lib "$HOME" \
  && find . -type f \( -path "./dotfiles/*" -a -iname ".*" \) -exec cp -rvn '{}' "$HOME" ';'
