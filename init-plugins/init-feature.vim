"----------------------------------------------------------------------
" vim-fugitive
"----------------------------------------------------------------------
Plug 'tpope/vim-fugitive'


"----------------------------------------------------------------------
" vimwiki
"----------------------------------------------------------------------
Plug 'bwangelme/vimwiki-plugin'

nmap <leader>v <Plug>VimwikiIndex
nmap <leader>e <Plug>VimwikiMakeDiaryNote
nmap <leader>i :e ~/vimwiki/douban/README.md<CR>

let g:vimwiki_global_ext = 0
let g:vimwiki_dir_link = 'README'
let g:vimwiki_list = [{'path': '~/vimwiki/',
					\ 'syntax': 'markdown', 'ext': '.md'}]


"----------------------------------------------------------------------
" vimcdoc
"----------------------------------------------------------------------
Plug 'yianwillis/vimcdoc'
