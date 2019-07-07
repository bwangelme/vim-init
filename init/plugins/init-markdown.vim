"----------------------------------------------------------------------
" vim-markdown
"----------------------------------------------------------------------
Plug 'plasticboy/vim-markdown', {'for': 'markdown.mkd'}


"----------------------------------------------------------------------
" markdown-preview, mathjax-support-for-mkdp
"----------------------------------------------------------------------
Plug 'iamcco/mathjax-support-for-mkdp', {'for': 'markdown.mkd'}
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install', 'for': 'markdown.mkd'  }

nmap <silent> <F12> <Plug>MarkdownPreview

" set to 1, the vim will auto close current preview window when change
" from markdown buffer to another buffer
let g:mkdp_auto_close = 1

" set to 1, server available to others in your network
" by default, the server only listens on localhost
let g:mkdp_open_to_the_world = 1
