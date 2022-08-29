"======================================================================
"
" init-tabsize.vim - 大部分人对 tabsize 都有自己的设置，改这里即可
"
" Created by skywind on 2018/05/30
" Last Modified: 2018/05/30 22:05:44
"
"======================================================================
" vim: set ts=4 sw=4 tw=78 noet :


"----------------------------------------------------------------------
" 默认缩进模式（可以后期覆盖）
"----------------------------------------------------------------------

" 按退格键时可以一次删掉 4 个空格
set softtabstop=4

" 设置Tab键的宽度        [等同的空格个数]
set tabstop=4

" 每一次缩进对应的空格数
set shiftwidth=4

" insert tabs on the start of a line according to shiftwidth, not tabstop 按退格键时可以一次删掉 4 个空格
set smarttab

" 将Tab自动转化成空格[需要输入真正的Tab键时，使用 Ctrl+V + Tab]
set expandtab

" 缩进时，取整 use multiple of shiftwidth when indenting with '<' and '>'
set shiftround



augroup PythonTab
    au!
    " 如果你需要 python 里用 tab，那么反注释下面这行字，否则vim会在打开py文件
    " 时自动设置成空格缩进。
    "au FileType python setlocal shiftwidth=4 tabstop=4 noexpandtab
augroup END

augroup YAMLTab
    au!
    au FileType yaml setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab shiftround
augroup END
