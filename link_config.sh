#!/bin/bash

## This is a simple script that helps me manage config files of the tools i use daily

script_name=$(basename "$0")
target_dir=$HOME
source_dir=$(pwd)

create_symlink() {
  local item="$1"
  local abs_path="$source_dir/$item"
  local link_path="$target_dir/$item"

  [[ -e "$link_path" || -L "$link_path" ]] && echo "Symlink already exists for $item" && return

  echo "Creating symlink for $item -> $link_path"
  ln -s "$abs_path" "$link_path"
}

for item in $(ls -d .* *); do
  [[ "$item" == "$script_name" || "$item" == "$target_dir" ]] && continue
  [[ ! -e "$item" ]] && continue

  if [[ -d "$item" ]]; then
    for subitem in "$item"/*; do
      [[ -e "$subitem" ]] && create_symlink "$subitem"
    done
    continue
  fi

  create_symlink "$item"
done

