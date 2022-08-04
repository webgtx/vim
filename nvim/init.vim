source $HOME/.config/nvim/general/settings.vim

call plug#begin('~/.vim/plugged')
" Lang Support
Plug 'mattn/emmet-vim'
Plug 'posva/vim-vue'
Plug 'elzr/vim-json'
Plug 'hashivim/vim-terraform'
Plug 'ap/vim-css-color'
Plug 'digitaltoad/vim-jade'
Plug 'cakebaker/scss-syntax.vim'
" LSP / Debug Support
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dense-analysis/ale'
" LightLine 
Plug 'itchyny/lightline.vim'
call plug#end()

set laststatus=2
