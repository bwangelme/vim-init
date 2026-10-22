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
                    \ 'syntax': 'markdown', 'ext': '.md',
                    \ 'nested_syntaxes': {
                    \   'bash': 'sh', 'sh': 'sh', 'shell': 'sh',
                    \   'python': 'python', 'py': 'python', 'go': 'go',
                    \   'javascript': 'javascript', 'js': 'javascript',
                    \   'typescript': 'typescript', 'ts': 'typescript',
                    \   'json': 'json', 'yaml': 'yaml', 'yml': 'yaml',
                    \   'sql': 'sql', 'lua': 'lua', 'vim': 'vim',
                    \   'html': 'html', 'css': 'css'}}]


"----------------------------------------------------------------------
" vimcdoc
"----------------------------------------------------------------------
Plug 'yianwillis/vimcdoc'


"----------------------------------------------------------------------
" thrift
"----------------------------------------------------------------------
" 当前用途无需 Thrift 开发插件。
