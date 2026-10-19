"----------------------------------------------------------------------
" nerdtree nerdtreetabs
"----------------------------------------------------------------------
Plug 'preservim/nerdtree', {'on': ['NERDTreeToggle', 'NERDTreeCWD', 'NERDTreeFind']}

function! ChangeDirIntoCurrentBuffer()
    if !empty(expand('%:p'))
        execute 'cd' fnameescape(expand('%:p:h'))
        NERDTreeCWD
    endif
endfunction

noremap <F3> :NERDTreeToggle<CR>
noremap <leader>o :call ChangeDirIntoCurrentBuffer()<CR>

let NERDTreeHighlightCursorline=1
" 自动删除掉通过NERDTree删除的文件的Buffer
let NERDTreeAutoDeleteBuffer=1
" 设置标识符
" let g:NERDTreeNodeDelimiter = "\u00a0"
" 设置NERDTree要忽略的文件
let NERDTreeIgnore=[ '__pycache__$[[dir]]', 'node_modules$', '\.pyc$', '\.pyo$', '\.obj$', '\.o$', '\.so$', '\.egg$', '^\.git$', '^\.svn$', '^\.hg$', '^venv$' ]
" s/v 分屏打开文件
let g:NERDTreeMapOpenSplit = 's'
let g:NERDTreeMapOpenVSplit = 'v'

let g:NERDTreeMinimalUI = 1
let g:NERDTreeDirArrows = 1
let g:NERDTreeHijackNetrw = 0

" 关闭同步
" let g:nerdtree_tabs_synchronize_view=0
" let g:nerdtree_tabs_synchronize_focus=0

" 是否自动开启nerdtree
let g:nerdtree_tabs_open_on_console_startup=0
let g:nerdtree_tabs_open_on_gui_startup=0


"----------------------------------------------------------------------
" tagbar
"----------------------------------------------------------------------
Plug 'majutsushi/tagbar', {'on': 'TagbarToggle'}

nmap <F8> :TagbarToggle<CR>
let g:tagbar_width = 54
let g:tagbar_sort = 0
let g:tagbar_indent = 1
let g:tagbar_compact = 1
let g:tagbar_silent = 1
let g:tagbar_iconchars = ['▸', '▾']

" for markdown, vimwiki
let g:md_ctags_bin=fnamemodify(expand("$HOME")."/.vim/vim-init/cmds/markdown2ctags.py", ":p")
let g:tagbar_type_markdown = {
    \ 'ctagstype': 'markdown',
    \ 'ctagsbin' : g:md_ctags_bin,
    \ 'ctagsargs' : '-f - --sort=yes',
    \ 'kinds' : [
        \ 's:sections',
        \ 'i:images'
    \ ],
    \ 'sro' : '|',
    \ 'kind2scope' : {
        \ 's' : 'section',
    \ },
    \ 'sort': 0,
\}

let g:tagbar_type_vimwiki = g:tagbar_type_markdown
