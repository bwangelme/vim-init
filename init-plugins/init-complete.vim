"----------------------------------------------------------------------
" 代码片段快速插入, ultisnips
"----------------------------------------------------------------------

Plug 'SirVer/ultisnips'

let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/vim-init/UltiSnips']
" 进入对应filetype的snippets进行编辑
map <leader>n :UltiSnipsEdit<CR>
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsExpandTrigger="<C-E>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"


"----------------------------------------------------------------------
" 自动补全单引号，双引号等, delimitMate
"----------------------------------------------------------------------
Plug 'Raimondi/delimitMate'

" for python docstring ",优化输入
au FileType python let b:delimitMate_nesting_quotes = ['"']
au FileType php let delimitMate_matchpairs = "(:),[:],{:}"
" 关闭某些类型文件的自动补全
au FileType mail let b:delimitMate_autoclose = 0
