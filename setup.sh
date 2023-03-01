#!/bin/bash

echo "Setup script started"

if [[ -d $HOME/.vim ]]; then
  cp -r vim $HOME/.vim 
fi

case "$1" in
  "--init")
    ./setup.sh --plug
    ./setup.sh --theme
  ;;
  "--plug")
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  ;;
  "--theme")
    echo "1) uwu"
    echo "2) gruvbox"
    read -p "Select needed colorscheme: " color
    case $color in
      "1")
        echo "colorscheme uwu" >> $HOME/.vim/general/settings.vim
      ;;
      "2")
        echo "colorscheme gruvbox" >> $HOME/.vim/general/settings.vim
      ;;
    esac
  ;;
  *)
    echo "Okay, starting installtion without arguments..."
  ;;
esac

echo Done!

