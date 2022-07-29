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
" LuaLine 
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
call plug#end()

lua << END
require('lualine').setup()
END
