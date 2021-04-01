"----------------------------------------------------------------------
" 文件内快速定位
"----------------------------------------------------------------------
Plug 'easymotion/vim-easymotion'

let g:EasyMotion_smartcase = 1
map <leader>j <Plug>(easymotion-j)
map <leader>k <Plug>(easymotion-k)
" 重复上一次操作, 类似repeat插件, 很强大
map <leader>. <Plug>(easymotion-repeat)


"----------------------------------------------------------------------
" fzf
"----------------------------------------------------------------------
" fzf
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" 显示所有Buffer
command! -bang -nargs=* Ag
    \ call fzf#vim#ag(<q-args>, "--vim --go --python --js --yaml --toml --cc",
    \                 <bang>0 ? fzf#vim#with_preview('up:60%')
    \                         : fzf#vim#with_preview('right:50%:hidden', '?'),
    \                 <bang>0)

nnoremap <Leader>q :Ag<Space>
" 搜索选中的单词
xnoremap <silent> <Leader>q y:Ag <C-R>"<CR>
" 搜索当前光标下的单词
noremap <silent> \ :Ag <C-R><C-W> <CR>
nnoremap <silent> <Leader>` :Marks<CR>
nnoremap <leader>p :Files<CR>
" xnoremap <silent> <Leader>p y:Files <C-R>"<CR>
nnoremap <silent> <Leader>l  :Buffers<CR>
nnoremap <leader>m :Maps<CR>
nnoremap <silent> <Leader><Enter>        :BLines<CR>
nnoremap <leader>c :Commits<CR>
nnoremap <leader>h :BTags<CR>
xnoremap <silent> <Leader>h y:BTags <C-R>"<CR>

let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit' }
let g:fzf_layout = { 'window': '30split enew', 'down': '~40%' }

" 快速打开某个位置的文件
" nmap <leader>s :Files ~/work/Douban/code/scripts/<CR>

" nmap <leader>g :call fzf#run({
"     \ 'source': 'ls -1',
"     \ 'dir': '~/work/Douban/code',
"     \ 'sink': 'lcd',
"     \ })<CR>
