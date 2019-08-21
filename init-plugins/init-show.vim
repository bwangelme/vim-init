"----------------------------------------------------------------------
" 括号显示增强
"----------------------------------------------------------------------
" Plug 'kien/rainbow_parentheses.vim'

" 不加入这行, 防止黑色括号出现, 很难识别
" \ ['black',       'SeaGreen3'],
" let g:rbpt_colorpairs = [
" 	\ ['brown',       'RoyalBlue3'],
" 	\ ['Darkblue',    'SeaGreen3'],
" 	\ ['darkgray',    'DarkOrchid3'],
" 	\ ['darkgreen',   'firebrick3'],
" 	\ ['darkcyan',    'RoyalBlue3'],
" 	\ ['darkred',     'SeaGreen3'],
" 	\ ['darkmagenta', 'DarkOrchid3'],
" 	\ ['brown',       'firebrick3'],
" 	\ ['gray',        'RoyalBlue3'],
" 	\ ['darkmagenta', 'DarkOrchid3'],
" 	\ ['Darkblue',    'firebrick3'],
" 	\ ['darkgreen',   'RoyalBlue3'],
" 	\ ['darkcyan',    'SeaGreen3'],
" 	\ ['darkred',     'DarkOrchid3'],
" 	\ ['red',         'firebrick3'],
" 	\ ]

" let g:rbpt_max = 16
" let g:rbpt_loadcmd_toggle = 0
" au VimEnter * RainbowParenthesesToggle
" au Syntax * RainbowParenthesesLoadRound
" au Syntax * RainbowParenthesesLoadSquare
" au Syntax * RainbowParenthesesLoadBraces


"----------------------------------------------------------------------
" 主题 solarized
"----------------------------------------------------------------------
" Plug 'altercation/vim-colors-solarized'


let g:solarized_termtrans=1
let g:solarized_contrast="normal"
let g:solarized_visibility="normal"


"----------------------------------------------------------------------
" 显示Mark
"----------------------------------------------------------------------
Plug 'kshenoy/vim-signature'


"----------------------------------------------------------------------
" Airline
"----------------------------------------------------------------------

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_powerline_fonts = 0
let g:airline_exclude_preview = 1
let g:airline_section_b = '%n'
let g:airline_theme='deus'
let g:airline#extensions#branch#enabled = 0
let g:airline#extensions#syntastic#enabled = 0
let g:airline#extensions#fugitiveline#enabled = 0
let g:airline#extensions#csv#enabled = 0
let g:airline#extensions#vimagit#enabled = 0
