"----------------------------------------------------------------------
" 代码片段快速插入, ultisnips
"----------------------------------------------------------------------

Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

let g:UltiSnipsExpandTrigger       = "<tab>"
" 定义存放代码片段的文件夹 .vim/UltiSnips下，使用自定义和默认的，将会的到全局，有冲突的会提示
let g:UltiSnipsSnippetsDir = '~/.vim/vim-init/UltiSnips'
" 进入对应filetype的snippets进行编辑
map <leader>n :UltiSnipsEdit<CR>

" ctrl+j/k 进行选择
func! g:JInYCM()
	if pumvisible()
		return "\<C-n>"
	else
		return "\<c-j>"
	endif
endfunction

func! g:KInYCM()
	if pumvisible()
		return "\<C-p>"
	else
		return "\<c-k>"
	endif
endfunction
inoremap <c-j> <c-r>=g:JInYCM()<cr>
au BufEnter,BufRead * exec "inoremap <silent> " . g:UltiSnipsJumpBackwordTrigger . " <C-R>=g:KInYCM()<cr>"
let g:UltiSnipsJumpBackwordTrigger = "<c-k>"


"----------------------------------------------------------------------
" 自动补全单引号，双引号等, delimitMate
"----------------------------------------------------------------------
Plug 'Raimondi/delimitMate'

" for python docstring ",优化输入
au FileType python let b:delimitMate_nesting_quotes = ['"']
au FileType php let delimitMate_matchpairs = "(:),[:],{:}"
" 关闭某些类型文件的自动补全
"au FileType mail let b:delimitMate_autoclose = 0
