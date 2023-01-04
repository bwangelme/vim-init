"======================================================================
"
" init-keymaps.vim - 按键设置
"
"======================================================================
" vim: set ts=4 sw=4 tw=78 noet :

" 修改leader按键
let mapleader = ' '
let g:mapleader = ' '


"----------------------------------------------------------------------
" 普通模式的按键映射
"----------------------------------------------------------------------
noremap H ^
noremap L $
" 交换 ' `, 使得可以快速使用'跳到marked位置
nnoremap ' `
nnoremap ` '
" 将U映射成<C-r>
nnoremap U <C-r>
" 文件折叠
nmap - zc
nmap + zo
nmap <leader>w :w<CR>

nnoremap <D-[> <C-O>
nnoremap <D-]> <C-I>


"----------------------------------------------------------------------
" Visual 模式的按键映射
"----------------------------------------------------------------------
" 调整缩进后自动选中，方便再次操作
vnoremap < <gv
vnoremap > >gv


"----------------------------------------------------------------------
" 分屏窗口移动, Smart way to move between windows
"----------------------------------------------------------------------
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l
nnoremap <C-v> <C-w>v
nnoremap <C-c> <C-w>c
nnoremap <C-s> <C-w>s


"----------------------------------------------------------------------
" INSERT 模式下按键映射
"----------------------------------------------------------------------
inoremap <c-a> <home>
inoremap <c-e> <end>
inoremap <c-d> <del>

" 插入模式下将小写字母转换成大写字母, I love this very much
inoremap <C-y> <esc>gUiwea

inoremap <C-h> <left>
inoremap <C-l> <right>

" 从剪切板中粘贴
inoremap <M-v> <C-R>+

"----------------------------------------------------------------------
" 命令模式的按键映射
"----------------------------------------------------------------------
cnoremap <c-h> <left>
cnoremap <c-l> <right>

cnoremap <c-a> <home>
cnoremap <c-e> <end>

cnoremap <c-f> <right>
cnoremap <c-b> <left>

cnoremap <c-d> <del>

" ctrl-k 删除光标下文本到行尾
cnoremap <C-k> <C-\>e(strpart(getcmdline(), 0, getcmdpos() - 1))<CR>

" ctrl-n, ctrl-p 只能搜索历史命令
cnoremap <c-n> <down>
cnoremap <c-p> <up>

" 将%:h映射为%%，%:h的功能是显示当前缓冲区文件的绝对路径
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:p:h').'/' : '%%'


"----------------------------------------------------------------------
" 搜索设置
"----------------------------------------------------------------------
function! VisualSearch(direction) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'b'
        execute "normal ?" . l:pattern . "^M"
    elseif a:direction == 'gv'
        call CmdLine("vimgrep " . '/'. l:pattern . '/' . ' **/*.')
    elseif a:direction == 'f'
        execute "normal /" . l:pattern . "^M"
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction

" 进入搜索Use sane regexes"
nnoremap / /\m
vnoremap / /\m
" 让搜索内容始终在屏幕中间
nnoremap <silent> n n
nnoremap <silent> N N
nnoremap <silent> * #Nzz
nnoremap <silent> # *Nzz
nnoremap <silent> g* g*zz

" 在 visual mode 按下 * 或 # 让搜索内容在屏幕中间
vnoremap <silent> * :call VisualSearch('f')<CR>
vnoremap <silent> # :call VisualSearch('b')<CR>


"----------------------------------------------------------------------
" 复制选中区到系统剪切板中
"----------------------------------------------------------------------
if has('clipboard')
    vnoremap y "+y
    map Y "+y$
else
    map Y y$
endif

"----------------------------------------------------------------------
" ALT+N 切换 tab
"----------------------------------------------------------------------
noremap <silent><m-1> :tabn 1<cr>
noremap <silent><m-2> :tabn 2<cr>
noremap <silent><m-3> :tabn 3<cr>
noremap <silent><m-4> :tabn 4<cr>
noremap <silent><m-5> :tabn 5<cr>
noremap <silent><m-6> :tabn 6<cr>
noremap <silent><m-7> :tabn 7<cr>
noremap <silent><m-8> :tabn 8<cr>
noremap <silent><m-9> :tabn 9<cr>
noremap <silent><m-0> :tabn 10<cr>
inoremap <silent><m-1> <ESC>:tabn 1<cr>
inoremap <silent><m-2> <ESC>:tabn 2<cr>
inoremap <silent><m-3> <ESC>:tabn 3<cr>
inoremap <silent><m-4> <ESC>:tabn 4<cr>
inoremap <silent><m-5> <ESC>:tabn 5<cr>
inoremap <silent><m-6> <ESC>:tabn 6<cr>
inoremap <silent><m-7> <ESC>:tabn 7<cr>
inoremap <silent><m-8> <ESC>:tabn 8<cr>
inoremap <silent><m-9> <ESC>:tabn 9<cr>
inoremap <silent><m-0> <ESC>:tabn 10<cr>


" MacVim 允许 CMD+数字键快速切换标签
if has('gui_macvim') && has("gui_running")
    set macmeta
    noremap <silent><d-1> :tabn 1<cr>
    noremap <silent><d-2> :tabn 2<cr>
    noremap <silent><d-3> :tabn 3<cr>
    noremap <silent><d-4> :tabn 4<cr>
    noremap <silent><d-5> :tabn 5<cr>
    noremap <silent><d-6> :tabn 6<cr>
    noremap <silent><d-7> :tabn 7<cr>
    noremap <silent><d-8> :tabn 8<cr>
    noremap <silent><d-9> :tabn 9<cr>
    noremap <silent><d-0> :tabn 10<cr>
    inoremap <silent><d-1> <ESC>:tabn 1<cr>
    inoremap <silent><d-2> <ESC>:tabn 2<cr>
    inoremap <silent><d-3> <ESC>:tabn 3<cr>
    inoremap <silent><d-4> <ESC>:tabn 4<cr>
    inoremap <silent><d-5> <ESC>:tabn 5<cr>
    inoremap <silent><d-6> <ESC>:tabn 6<cr>
    inoremap <silent><d-7> <ESC>:tabn 7<cr>
    inoremap <silent><d-8> <ESC>:tabn 8<cr>
    inoremap <silent><d-9> <ESC>:tabn 9<cr>
    inoremap <silent><d-0> <ESC>:tabn 10<cr>
endif


"----------------------------------------------------------------------
" TAB：创建，关闭，上一个，下一个，左移，右移
"----------------------------------------------------------------------
noremap <silent> <m-t> :tabnew<cr>
noremap <silent> <m-w> :tabclose<cr>
noremap <silent> <M-}> :tabnext<cr>
noremap <silent> <M-{> :tabprev<cr>
noremap <silent> <m-0> :tabonly<cr>


" 左移 tab
function! Tab_MoveLeft()
    let l:tabnr = tabpagenr() - 2
    if l:tabnr >= 0
        exec 'tabmove '.l:tabnr
    endif
endfunc

" 右移 tab
function! Tab_MoveRight()
    let l:tabnr = tabpagenr() + 1
    if l:tabnr <= tabpagenr('$')
        exec 'tabmove '.l:tabnr
    endif
endfunc

noremap <silent><m-left> :call Tab_MoveLeft()<cr>
noremap <silent><m-right> :call Tab_MoveRight()<cr>

"----------------------------------------------------------------------
" ALT 键移动增强
"----------------------------------------------------------------------

" ALT+h/l 快速左右按单词移动（正常模式+插入模式）
noremap <m-h> b
noremap <m-l> w
inoremap <m-h> <c-left>
inoremap <m-l> <c-right>

noremap j gj
noremap k gk
noremap gj j
noremap gk k

" 命令模式下的相同快捷
cnoremap <m-h> <c-left>
cnoremap <m-l> <c-right>

" ALT+y 删除到行末
noremap <m-y> d$
inoremap <m-y> <c-\><c-o>d$

"----------------------------------------------------------------------
" 调试
"----------------------------------------------------------------------
" 获取当前位置作为断点
function! GetBreakPoint()
    let @* = expand("%").":".line(".")
    echo @*
endfunction

nmap <leader>b :call GetBreakPoint()<CR>

" F9 显示可打印字符开关
nnoremap <F9> :set list! list?<CR>

" F6 语法开关，关闭语法可以加快大文件的展示
nnoremap <F6> :exec exists('syntax_on') ? 'syn off' : 'syn on'<CR>

" F5 插入模式下的粘贴开关
set pastetoggle=<F5>

" F4 换行开关
nnoremap <F4> :set wrap! wrap?<CR>

" F2 折叠开关
function! ToggleFold()
    if(&foldlevel == '0')
        exec "normal! zR"
    else
        exec "normal! zM"
    endif
    echo "foldlevel:" &foldlevel
endfunction
nnoremap <F2> :call ToggleFold()<CR>

" F1 设置行号
noremap <F1> :set number!<CR>"
