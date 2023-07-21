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

" 代码折叠
set foldenable
set foldmethod=indent
set foldlevel=99


"----------------------------------------------------------------------
" 文件默认模板设置
"----------------------------------------------------------------------
autocmd bufnewfile *.c so ~/.vim/vim-init/templates/c.template
autocmd bufnewfile *.py so ~/.vim/vim-init/templates/python.template
autocmd bufnewfile *.ruby so ~/.vim/vim-init/templates/ruby.template
autocmd bufnewfile *.cpp so ~/.vim/vim-init/templates/cpp.template
autocmd bufnewfile *.sh so ~/.vim/vim-init/templates/sh.template
autocmd bufnewfile *.vim so ~/.vim/vim-init/templates/vim.template

"----------------------------------------------------------------------
" 备份设置
"----------------------------------------------------------------------

" 允许备份
set backup

" 保存时备份
set writebackup

" 备份文件地址，统一管理
set backupdir=~/.vim/tmp

" 备份文件扩展名
set backupext=.bak

" 禁用交换文件
set noswapfile

" 禁用 undo文件
set noundofile

" 创建目录，并且忽略可能出现的警告
silent! call mkdir(expand('~/.vim/tmp'), "p", 0755)

"----------------------------------------------------------------------
" 配置微调
"----------------------------------------------------------------------

" 打开文件时恢复上一次光标所在位置
autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \     exe "normal! g`\"" |
    \ endif

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

    " C/C++ 文件使用 // 作为注释
    au FileType c,cpp setlocal commentstring=//\ %s

    " lisp 进行微调
    au FileType lisp setlocal ts=8 sts=2 sw=2 et

    " scala 微调
    au FileType scala setlocal sts=4 sw=4 noet

    " haskell 进行微调
    au FileType haskell setlocal et

    " quickfix 隐藏行号
    au FileType qf setlocal nonumber

    " 强制对某些扩展名的 filetype 进行纠正
    au BufNewFile,BufRead *.as setlocal filetype=actionscript
    au BufNewFile,BufRead *.pro setlocal filetype=prolog
    au BufNewFile,BufRead *.es setlocal filetype=erlang
    au BufNewFile,BufRead *.asc setlocal filetype=asciidoc
    au BufNewFile,BufRead *.vl setlocal filetype=verilog

    " markdown 允许自动换行
    au FileType markdown setlocal wrap
    autocmd BufRead,BufNewFile *.part set filetype=html

    " 部分文件关掉高亮
    au FileType markdown syntax off
    " au FileType vimwiki syntax off

augroup END
