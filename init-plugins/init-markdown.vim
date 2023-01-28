"----------------------------------------------------------------------
" vim-markdown
"----------------------------------------------------------------------
" Plug 'plasticboy/vim-markdown', {'for': 'markdown.mkd'} 这个插件导致编辑 markdown 文件时出现卡顿，先注释掉

"----------------------------------------------------------------------
" vim-checkbox
"----------------------------------------------------------------------
Plug 'jkramer/vim-checkbox'

map <silent> <C-space> :call checkbox#ToggleCB()<CR>
let g:checkbox_states = [' ', 'X']

"----------------------------------------------------------------------
" markdown-preview, mathjax-support-for-mkdp
"----------------------------------------------------------------------
" Plug 'iamcco/mathjax-support-for-mkdp', {'for': ['markdown', 'vimwiki']}
" Plug 'iamcco/markdown-preview.nvim', {'do': 'cd app & yarn install', 'for': ['markdown', 'vimwiki']}

" nmap <silent> <F12> <Plug>MarkdownPreview

" set to 1, the vim will auto close current preview window when change
" from markdown buffer to another buffer
" let g:mkdp_auto_close = 1

" set to 1, server available to others in your network
" by default, the server only listens on localhost
" let g:mkdp_open_to_the_world = 1
