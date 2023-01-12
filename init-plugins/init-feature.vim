"----------------------------------------------------------------------
" vim-fugitive
"----------------------------------------------------------------------
Plug 'tpope/vim-fugitive'

nmap <leader>u :Git push<CR>
nmap <leader>y :Git<CR>

"----------------------------------------------------------------------
" vimwiki
"----------------------------------------------------------------------
Plug 'bwangelme/vimwiki-plugin'

nmap <leader>v <Plug>VimwikiIndex
nmap <Leader>wn <Plug>VimwikiNextLink

let g:vimwiki_global_ext = 0
let g:vimwiki_url_maxsave = 0
let g:vimwiki_dir_link = 'README'
let g:vimwiki_list = [{'path': '~/vimwiki/',
                    \ 'syntax': 'markdown', 'ext': '.md'}]


"----------------------------------------------------------------------
" vimcdoc
"----------------------------------------------------------------------
Plug 'yianwillis/vimcdoc'
