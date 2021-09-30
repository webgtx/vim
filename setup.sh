#!/bin/bash

echo "Setup script started"

if [[ $1 == '--deb' ]] || [[ $1 == '' ]]; then
  apt list --installed | grep "nvim"
elif [[ $1 == '--arch' ]]; then
  sudo pacman -Sy neovim
elif [[ $1 == '--without' ]]; then
  echo "Fine"
fi
cp -r nvim $HOME/.config/
