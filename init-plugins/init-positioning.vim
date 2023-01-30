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

" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

nnoremap <silent> <Leader>` :Marks<CR>
nnoremap <leader>p :Files<CR>
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
nmap <leader>s :Files ~/work/Douban/code/dae-scripts<CR>
nmap <leader>e :Files ~/work/Douban/workNote/<CR>

" 快速切到某个目录
nmap <leader>d :cd ~/work/Douban/workNote/<CR>

nmap <leader>g :call fzf#run({
    \ 'source': 'ls -1',
    \ 'dir': '~/work/Douban/code',
    \ 'sink': 'lcd',
    \ })<CR>


"----------------------------------------------------------------------
" vim-ripgrep
"----------------------------------------------------------------------

Plug 'jremmen/vim-ripgrep'

nnoremap <Leader>q :Rg<Space>
" 搜索选中的单词
xnoremap <silent> <Leader>q y:Rg <C-R>"<CR>
" 搜索当前光标下的单词
noremap <silent> \ :Rg <C-R><C-W> <CR>
