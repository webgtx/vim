source $HOME/.config/vim/general/settings.vim

call plug#begin('~/.vim/plugged')
" Lang Support
Plug 'elzr/vim-json'
" LSP / Debug Support
Plug 'dense-analysis/ale'
" LightLine 
Plug 'itchyny/lightline.vim'
call plug#end()

set laststatus=2
