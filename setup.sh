#!/bin/bash

echo "Setup script started"
cp -r nvim $HOME/.config/
case "$1" in
  "--deb")
    apt list --installed | grep "nvim"
  ;;
  "--arch")
    sudo pacman -Sy neovim
  ;;
  "--plug")
    sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
         https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  ;;
  "--theme")
    echo "1) uwu"
    echo "2) gruvbox"
    echo "3) onedark"
    read -p "Select needed colorscheme: " color
    case $color in
      "1")
        echo "colorscheme uwu" >> $HOME/.config/nvim/general/settings.vim
      ;;
      "2")
        echo "colorscheme gruvbox" >> $HOME/.config/nvim/general/settings.vim
      ;;
      "3")
        echo "colorscheme onedark" >> $HOME/.config/nvim/general/settings.vim
      ;;
    esac
  ;;
  *)
    echo "Okay, starting installtion without arguments..."
  ;;
esac

echo Done!

