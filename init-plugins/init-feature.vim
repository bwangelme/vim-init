"----------------------------------------------------------------------
" vim-fugitive
"----------------------------------------------------------------------
Plug 'tpope/vim-fugitive'


"----------------------------------------------------------------------
" tpope/vim-rhubarb support GBrowse
"----------------------------------------------------------------------
Plug 'tpope/vim-rhubarb'

let g:github_enterprise_urls = ['https://github.intra.douban.com']



"----------------------------------------------------------------------
" vimwiki
"----------------------------------------------------------------------
Plug 'vimwiki/vimwiki'

nmap <leader>v :VimwikiIndex1<CR>
nmap <leader>e <Plug>VimwikiMakeDiaryNote
nmap <leader>i :VimwikiIndex<CR>

let g:vimwiki_global_ext = 0
let g:vimwiki_table_mappins = 0
let g:vimwiki_url_maxsave = 0
let g:vimwiki_dir_link = 'README'
let my_wiki = {'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}
let g:vimwiki_list = [my_wiki]


"----------------------------------------------------------------------
" vimcdoc
"----------------------------------------------------------------------
Plug 'yianwillis/vimcdoc'
