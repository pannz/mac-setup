#!/usr/bin/env bash

find $PWD/dotfiles -maxdepth 1 -mindepth 1 -type f | while read file; do
  echo "copy ${file} to ~/${file##*/}"
  # cp $file ~/${file##*/}
  rm ~/${file##*/}
  ln -s $file ~/${file##*/}
done