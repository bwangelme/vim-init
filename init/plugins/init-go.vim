"----------------------------------------------------------------------
" vim-go
"----------------------------------------------------------------------
Plug 'fatih/vim-go', {'for': 'go'}


" format with goimports instead of gofmt
let g:go_fmt_command = "goimports"
let g:go_autodetect_gopath = 1
let g:go_list_type = "quickfix"

let g:go_highlight_build_constraints = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1

let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go', 'java'] }
let g:go_fold_enable = ['import']

" nmap <Leader>d <Plug>(go-def)
nmap <leader>g :GoFmt<cr>
