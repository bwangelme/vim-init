"----------------------------------------------------------------------
" nerdtree nerdtreetabs
"----------------------------------------------------------------------
Plug 'scrooloose/nerdtree' | Plug 'jistr/vim-nerdtree-tabs'

function! ChangeDirIntoCurrentBuffer()
	cd %:p:h
	NERDTreeCWD
endfunction

noremap <F3> :NERDTreeToggle<CR>
noremap <leader>o :call ChangeDirIntoCurrentBuffer()<CR>

let NERDTreeHighlightCursorline=1
" 自动删除掉通过NERDTree删除的文件的Buffer
let NERDTreeAutoDeleteBuffer=1
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
Plug 'majutsushi/tagbar'

nmap <F8> :TagbarToggle<CR>
let g:tagbar_width = 54
let g:tagbar_sort = 0
let g:tagbar_indent = 1
let g:tagbar_compact = 1
let g:tagbar_silent = 1
let g:tagbar_iconchars = ['▸', '▾']

" go语言的tagbar配置
" 1. install gotags 'go get -u github.com/jstemmer/gotags'
" 2. make sure `gotags` in you shell PATH, you can call check it with `which gotags`
" for gotags. work with tagbar
let g:tagbar_type_go = {
	\ 'ctagstype' : 'go',
	\ 'kinds'     : [
		\ 'p:package',
		\ 'i:imports:1',
		\ 'c:constants',
		\ 'v:variables',
		\ 't:types',
		\ 'n:interfaces',
		\ 'w:fields',
		\ 'e:embedded',
		\ 'm:methods',
		\ 'r:constructor',
		\ 'f:functions'
	\ ],
	\ 'sro' : '.',
	\ 'kind2scope' : {
		\ 't' : 'ctype',
		\ 'n' : 'ntype'
	\ },
	\ 'scope2kind' : {
		\ 'ctype' : 't',
		\ 'ntype' : 'n'
	\ },
	\ 'ctagsbin'  : 'gotags',
	\ 'ctagsargs' : '-sort -silent'
\ }

" for markdown
let g:tagbar_type_markdown = {
	\ 'ctagstype': 'markdown',
	\ 'ctagsbin' : '/Users/michaeltsui/bin/markdown2ctags.py',
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
