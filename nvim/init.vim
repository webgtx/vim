source $HOME/.config/nvim/general/settings.vim

call plug#begin('~/.vim/plugged')
Plug 'mattn/emmet-vim'
Plug 'posva/vim-vue'
Plug 'vim-airline/vim-airline'
Plug 'elzr/vim-json'
Plug 'ap/vim-css-color'
Plug 'digitaltoad/vim-jade'
Plug 'cakebaker/scss-syntax.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dense-analysis/ale'
call plug#end()
