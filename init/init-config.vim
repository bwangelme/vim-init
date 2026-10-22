"======================================================================
"
" init-config.vim - 正常模式下的配置，在 init-basic.vim 后调用
"
"======================================================================
" vim: set ts=4 sw=4 tw=78 noet :

"----------------------------------------------------------------------
" 有 tmux 何没有的功能键超时（毫秒）
"----------------------------------------------------------------------
if $TMUX != ''
    set ttimeoutlen=30
elseif &ttimeoutlen > 80 || &ttimeoutlen <= 0
    set ttimeoutlen=80
endif


" 关闭时记住打开Buffer的信息
set viminfo^=%

" 在上下移动光标时，光标的上方或下方至少会保留显示的行数
set scrolloff=7

" 正则表达式打开magic
set magic

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
" 转折换行的配置
set whichwrap+=<,>

"----------------------------------------------------------------------
" 备份设置
"----------------------------------------------------------------------

" 允许备份
set backup

" 保存时备份
set writebackup

" 备份文件地址，统一管理
set backupdir=~/.vim/tmp//

" 备份文件扩展名
set backupext=.bak

" 交换文件集中存放，便于异常退出后恢复未保存内容。
silent! call mkdir(expand('~/.vim/tmp/swap'), 'p', 0700)
set directory=~/.vim/tmp/swap//
set swapfile

" 保存撤销历史，重新打开文件后也能撤销（不替代崩溃恢复）。
if has('persistent_undo')
    silent! call mkdir(expand('~/.vim/tmp/undo'), 'p', 0700)
    set undodir=~/.vim/tmp/undo//
    set undofile
endif

" 创建目录，并且忽略可能出现的警告
silent! call mkdir(expand('~/.vim/tmp'), "p", 0755)

"----------------------------------------------------------------------
" 配置微调
"----------------------------------------------------------------------

" 打开文件时恢复上一次光标所在位置。
augroup VimInitRestoreCursor
    autocmd!
    autocmd BufReadPost *
        \ if line("'\"") > 1 && line("'\"") <= line("$") |
        \     exe "normal! g`\"" |
        \ endif
augroup END

" 定义一个 DiffOrig 命令用于查看文件改动
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
          \ | wincmd p | diffthis
endif

" 打开鼠标
set mouse=a

"----------------------------------------------------------------------
" 文件类型微调
"----------------------------------------------------------------------
augroup InitFileTypesGroup
    " 清除同组的历史 autocommand
    au!

    " quickfix 隐藏行号
    au FileType qf setlocal nonumber

    " 只做屏幕折行，不向文件插入换行；尽量在词边界折行。
    au FileType markdown,vimwiki setlocal wrap linebreak

    " 普通笔记保持长代码块高亮准确；大文档限制回溯解析范围。
    au Syntax markdown,vimwiki call s:NoteSyntaxSync()

augroup END

function! s:NoteSyntaxSync() abort
    if line('$') <= 3000 && getfsize(expand('%:p')) <= 1024 * 1024
        syntax sync fromstart
    else
        syntax sync minlines=200 maxlines=1000
    endif
endfunction

" 切回应用/缓冲区或普通模式空闲时检查外部修改。
" 只检查当前文件，避免每次遍历所有已打开的文件；输入时不打断。
set autoread
augroup VimInitAutoRead
    autocmd!
    autocmd FocusGained,BufEnter,CursorHold *
        \ if mode() ==# 'n' && &buftype ==# '' && !empty(expand('%')) |
        \     checktime % |
        \ endif
augroup END
