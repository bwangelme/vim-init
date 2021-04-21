if has("gui_running") && has("macunix")
    " 设置 MacVim 的字体
    set guifont=Monaco:h14
    " MacVim 移除滚动条
    set guioptions=
    " MacVim 鼠标
    set gcr=a:blinkon0              "Disable cursor blink
    " set gcr+=a:blinkwait500-blinkon600-blinkoff300
    nmap <C-6> <C-^>
    set columns=232
    set lines=50
    " 关闭声音
    set noerrorbells visualbell t_vb=

    set transparency=7
endif

if has("gui_running")
    set guifont=Ubuntu\ Mono\ Regular\ 15
    set guioptions=aegimrLt
endif


if has("gui_running")
    " 前后切换tab
    " noremap <S-L> :tabnext<CR>
    " noremap <S-H> :tabprev<CR>

    " Switch to specific tab numbers with Command-number
    noremap <D-1> :tabn 1<CR>
    noremap <D-2> :tabn 2<CR>
    noremap <D-3> :tabn 3<CR>
    noremap <D-4> :tabn 4<CR>
    noremap <D-5> :tabn 5<CR>
    noremap <D-6> :tabn 6<CR>
    noremap <D-7> :tabn 7<CR>
    noremap <D-8> :tabn 8<CR>
    noremap <D-9> :tabn 9<CR>
    " Command-0 goes to the last tab
    noremap <D-0> :tablast<CR>

    imap <D-1> <Esc>:tabn 1<CR>
    imap <D-2> <Esc>:tabn 2<CR>
    imap <D-3> <Esc>:tabn 3<CR>
    imap <D-4> <Esc>:tabn 4<CR>
    imap <D-5> <Esc>:tabn 5<CR>
    imap <D-6> <Esc>:tabn 6<CR>
    imap <D-7> <Esc>:tabn 7<CR>
    imap <D-8> <Esc>:tabn 8<CR>
    imap <D-9> <Esc>:tabn 9<CR>
    " Command-0 goes to the last tab
    imap <D-0> <Esc>:tablast<CR>
endif

if has("gui_running")
    set noswapfile
endif

