"----------------------------------------------------------------------
" Markdown 代码块：使用 Vim 自带的语法文件，不额外安装高亮插件。
" 代码围栏需要标注语言，例如 ```python、```json、```bash。
"----------------------------------------------------------------------
let g:markdown_fenced_languages = [
            \ 'bash=sh', 'sh', 'shell=sh', 'python', 'py=python', 'go',
            \ 'javascript', 'js=javascript', 'typescript', 'ts=typescript',
            \ 'json', 'yaml', 'yml=yaml', 'sql', 'lua', 'vim', 'html', 'css']

" 禁用内置 Markdown 对单词中间下划线的错误提示（如 finance_balance_new）。
augroup VimInitMarkdownHighlight
    autocmd!
    autocmd Syntax markdown silent! syntax clear markdownError
augroup END

"----------------------------------------------------------------------
" vim-markdown
"----------------------------------------------------------------------
" Plug 'plasticboy/vim-markdown', {'for': 'markdown.mkd'} 这个插件导致编辑 markdown 文件时出现卡顿，先注释掉

"----------------------------------------------------------------------
" vim-checkbox
"----------------------------------------------------------------------
Plug 'jkramer/vim-checkbox'

nnoremap <silent> <C-space> :ToggleCB<CR>
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
