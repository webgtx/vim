#!/bin/bash

echo "Setup script started"

cp -r .vim $HOME
cp .vimrc $HOME

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
    tree .vim/colors
    read -p "Write colorscheme name: " theme 
    echo "colorscheme $theme" >> $HOME/.vim/general/settings.vim
  ;;
  *)
    echo "Okay, starting installtion without arguments..."
  ;;
esac

echo Done!

