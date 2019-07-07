"----------------------------------------------------------------------
" vim-markdown
"----------------------------------------------------------------------
Plug 'plasticboy/vim-markdown', {'for': 'md'}


"----------------------------------------------------------------------
" mathjax-support-for-mkdp
"----------------------------------------------------------------------
Plug 'iamcco/mathjax-support-for-mkdp', {'for': 'md'}


"----------------------------------------------------------------------
" markdown-preview
"----------------------------------------------------------------------
Plug 'iamcco/markdown-preview.vim', {'for': 'md'}

nmap <silent> <F12> <Plug>MarkdownPreview
let g:mkdp_path_to_chrome = ""
" path to the chrome or the command to open chrome(or other modern browsers)
" if set, g:mkdp_browserfunc would be ignored

let g:mkdp_browserfunc = 'MKDP_browserfunc_default'
" callback vim function to open browser, the only param is the url to open

let g:mkdp_auto_start = 0
" set to 1, the vim will open the preview window once enter the markdown
" buffer

let g:mkdp_auto_open = 0
" set to 1, the vim will auto open preview window when you edit the
" markdown file

let g:mkdp_auto_close = 1
" set to 1, the vim will auto close current preview window when change
" from markdown buffer to another buffer

let g:mkdp_refresh_slow = 0
" set to 1, the vim will just refresh markdown when save the buffer or
" leave from insert mode, default 0 is auto refresh markdown as you edit or
" move the cursor

let g:mkdp_command_for_global = 0
" set to 1, the MarkdownPreview command can be use for all files,
" by default it just can be use in markdown file

let g:mkdp_open_to_the_world = 1
" set to 1, server available to others in your network
" by default, the server only listens on localhost