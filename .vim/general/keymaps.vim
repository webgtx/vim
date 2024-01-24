let mapleader = " "

nmap <C-b> :Unite buffer -no-split<CR>

" Tab keymaps for autocompletion
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<cr>"

" noremap <silent> <leader>d :call completor#do('definition')<CR>
noremap <silent> <leader>d :call completor#do('doc')<CR>
