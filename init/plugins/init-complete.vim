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


"----------------------------------------------------------------------
" YouCompleteMe
"----------------------------------------------------------------------
function! BuildYCM(info)
  if a:info.status == 'installed' || a:info.force
	!./install.py --gocode-completer
  endif
endfunction

Plug 'Valloric/YouCompleteMe', { 'for': ['c', 'cpp', 'python', 'go'], 'do': function('BuildYCM') }

" 开启语法关键字补全
let g:ycm_seed_identifiers_with_syntax=1

" 设置Python解释器的路径
if has('mac')
	let g:ycm_server_python_interpreter = '/usr/local/bin/python3'
else
	let g:ycm_server_python_interpreter = '/usr/bin/python3'
endif

" 设置补全时用到的Python解释器的路径
let g:ycm_python_binary_path = 'python3'

" 禁用预览功能：扰乱视听
let g:ycm_add_preview_to_completeopt = 0

 " 跳转到定义处, 水平分屏打开
let g:ycm_goto_buffer_command = 'horizontal-split'
nnoremap <leader>d :YcmCompleter GoToDefinition<CR>

" 禁用诊断功能：我们用前面更好用的 ALE 代替
let g:ycm_show_diagnostics_ui = 0
let g:ycm_key_list_select_completion=['<c-n>']
let g:ycm_key_list_previous_completion=['<c-p>']

 "在注释输入中也能补全
let g:ycm_complete_in_comments = 1

"提示UltiSnips
let g:ycm_use_ultisnips_completer = 1

let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_server_log_level = 'info'
let g:ycm_min_num_identifier_candidate_chars = 2

"注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_complete_in_strings=1
let g:ycm_key_invoke_completion = '<c-z>'
set completeopt=menu,menuone,noselect

" 两个字符自动触发语义补全
let g:ycm_semantic_triggers =  {
			\ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
			\ 'cs,lua,javascript': ['re!\w{2}'],
			\ }

" Ycm 白名单（非名单内文件不启用 YCM），避免打开个 1MB 的 txt 分析半天
let g:ycm_filetype_whitelist = {
			\ "c":1,
			\ "cpp":1,
			\ "python":1,
			\ "vim":1,
			\ "go":1,
			\ "lua":1,
			\ "perl":1,
			\ "perl6":1,
			\ "rust":1,
			\ "erlang":1,
			\ "asm":1,
			\ "nasm":1,
			\ "masm":1,
			\ "tasm":1,
			\ "asm68k":1,
			\ "asmh8300":1,
			\ "asciidoc":1,
			\ "basic":1,
			\ "vb":1,
			\ "make":1,
			\ "cmake":1,
			\ "json":1,
			\ "cson":1,
			\ "typedscript":1,
			\ "haskell":1,
			\ "lhaskell":1,
			\ "lisp":1,
			\ "scheme":1,
			\ "sdl":1,
			\ "sh":1,
			\ "zsh":1,
			\ "bash":1,
			\ "man":1,
			\ "markdown":1,
			\ "matlab":1,
			\ "maxima":1,
			\ "dosini":1,
			\ "conf":1,
			\ "config":1,
			\ "zimbu":1,
			\ "ps1":1,
			\ }


