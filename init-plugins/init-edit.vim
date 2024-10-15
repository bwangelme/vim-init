"----------------------------------------------------------------------
" 快速注释
"----------------------------------------------------------------------
Plug 'tpope/vim-commentary'

autocmd FileType nginx setlocal commentstring=#\ %s
autocmd FileType sql setlocal commentstring=--\ %s
autocmd FileType awk setlocal commentstring=#\ %s

noremap <M-/> :Commentary<CR>
noremap <D-/> :Commentary<CR>
noremap <leader>/ :Commentary<CR>


"----------------------------------------------------------------------
" 快速加入修改环绕字符
"----------------------------------------------------------------------
Plug 'tpope/vim-surround'


"----------------------------------------------------------------------
" 快速去行尾空格
"----------------------------------------------------------------------
Plug 'ntpeters/vim-better-whitespace'

map <leader>t :StripWhitespace<CR>
