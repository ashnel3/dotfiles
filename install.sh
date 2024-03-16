#!/bin/bash

set -euo pipefail

# Ensure working directory
cd "$(dirname "$0")" \
  || exit 1

# Copy dotfiles
cp -rv .bash_aliases .config/ ~
