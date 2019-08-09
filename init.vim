"======================================================================
"
" init.vim - initialize config
"
" Created by skywind on 2018/05/30
" Last Modified: 2018/05/30 18:26:34
"
"======================================================================

" 防止重复加载
if get(s:, 'loaded', 0) != 0
	finish
else
	let s:loaded = 1
endif

" 取得本文件所在的目录
let s:home = fnamemodify(resolve(expand('<sfile>:p')), ':h')

" 定义一个命令用来加载文件
command! -nargs=1 LoadScript exec 'so '.s:home.'/'.'<args>'

" 将 vim-init 目录加入 runtimepath
exec 'set rtp+='.s:home

" 将 ~/.vim 目录加入 runtimepath (有时候 vim 不会自动帮你加入）
set rtp+=~/.vim


"----------------------------------------------------------------------
" 模块加载
"----------------------------------------------------------------------

" 加载基础配置
LoadScript init/init-basic.vim

" 加载扩展配置
LoadScript init/init-config.vim

" 设定 tabsize
LoadScript init/init-tabsize.vim

" 自定义按键
LoadScript init/init-keymaps.vim

" 加载 MacVim 的配置
if has('gui_running')
	LoadScript init/init-mac.vim
endif

" 插件加载
call plug#begin(get(g:, 'bundle_home', '~/.vim/bundles'))

LoadScript init-plugins/init-complete.vim
LoadScript init-plugins/init-edit.vim
LoadScript init-plugins/init-feature.vim
LoadScript init-plugins/init-positioning.vim
LoadScript init-plugins/init-navigation.vim
LoadScript init-plugins/init-show.vim
LoadScript init-plugins/init-markdown.vim
LoadScript init-plugins/init-python.vim
LoadScript init-plugins/init-nginx.vim
LoadScript init-plugins/init-go.vim

call plug#end()

" 界面样式
LoadScript init/init-style.vim
