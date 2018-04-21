set relativenumber
set number

execute pathogen#infect()
execute pathogen#helptags()

nmap <F8> :TagbarToggle<CR>
nmap <F7> :NERDTreeToggle<CR>

autocmd vimenter * if !argc() | NERDTree | endif

syntax enable
filetype plugin indent on
let g:solarized_termtrans=1
" colorscheme birds_of_paradise
" colorscheme tomorrow
colorscheme solarized
set background=dark

set colorcolumn=72

set pastetoggle=<F2>

" Rust config
let g:rustfmt_autosave=1
let g:racer_experimental_completer = 1
let g:rust_clip_command = 'xclip -selection clipboard'

" Go config
let g:go_fmt_command = "goimports"
let g:go_metalinter_enabled = ['vet', 'golint', 'deadcode', 'errcheck']
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
