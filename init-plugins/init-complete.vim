" 保留文档片段（tto、date 等），首次输入或编辑片段时才初始化 Python。
Plug 'SirVer/ultisnips', {'on': 'UltiSnipsEdit'}

let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-k>"
" 单一绝对目录可避免遍历所有插件的片段目录。
let g:UltiSnipsSnippetDirectories = [expand('~/.vim/vim-init/UltiSnips')]
nnoremap <leader>n :UltiSnipsEdit<CR>

augroup VimInitSnippets
    autocmd!
    autocmd InsertEnter * ++once call s:LoadSnippets()
augroup END

" vim-plug 会重放 BufRead；避免恢复历史光标位置影响这次输入。
function! s:LoadSnippets() abort
    let l:view = winsaveview()
    let l:buf = bufnr('%')
    try
        call plug#load('ultisnips')
    finally
        if bufnr('%') == l:buf
            call winrestview(l:view)
        endif
    endtry
endfunction

" 自动补齐引号、括号，编辑配置文件时仍然有用。
Plug 'Raimondi/delimitMate'
