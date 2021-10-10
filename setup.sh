#!/bin/bash

echo "Setup script started"

if [[ $1 == '--deb' ]]; then
  apt list --installed | grep "nvim"
elif [[ $1 == '--arch' ]]; then
  sudo pacman -Sy neovim
elif [[ $1 == '--simple' ]]; then
  sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
elif [[ $1 == '' ]]; then
  echo "Okay, starting installtion without testing..."
fi

cp -r nvim $HOME/.config/
echo Done!

