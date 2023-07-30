#!/bin/bash

PLUGINS_PATH="$HOME/.vim/pack/plugins/start"

echo "[ Setup script started ]"
echo "[ Copying vimrc ... ]"
cp -r .vim $HOME
cp .vimrc $HOME

for arg in $@; do
  case "$arg" in
    "--theme"|"-t")
      tree .vim/colors
      read -p "Write colorscheme name: " theme 
      echo "colorscheme $theme" >> $HOME/.vimrc
    ;;
    "--extended"|"-e") 
      # Basic terraform intergration   
      git clone https://github.com/hashivim/vim-terraform.git $PLUGINS_PATH/vim-terraform

      # D2LANG Intergration
      git clone https://github.com/terrastruct/d2-vim $PLUGINS_PATH/d2-vim
    ;;
    "--clear"|"-c")
      rm -rf ~/.vim/pack
    ;;
    # We don't use vimplug anymore 
    # "--plug")
    #   curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    #     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    # ;;
  esac
done

