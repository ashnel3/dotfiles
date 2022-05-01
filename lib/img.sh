#!/usr/bin/env bash

imagemagik_remove_alpha() {
  for path in "$@"; do
    convert "$path" -background white -alpha remove -alpha off "./$(basename "$path")"
  done
}

imagemagik_scale() {
  local size="${1#*=}"
  for path in "${@:2}"; do
    convert "$path" -scale "$size" "./$(basename "$path")"
  done
}
