execute pathogen#infect()
execute pathogen#helptags()

nmap <F8> :TagbarToggle<CR>
nmap <F7> :NERDTreeToggle<CR>

autocmd vimenter * if !argc() | NERDTree | endif

syntax enable
filetype plugin indent on
set background=dark
let g:solarized_termtrans=1
colorscheme solarized

set colorcolumn=78

set pastetoggle=<F2>


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
