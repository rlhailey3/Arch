set nocompatible

filetype indent plugin on

syntax on

set nowrap

set bg=dark

set hidden

set showcmd

set hlsearch

set wildmenu

set ignorecase
set smartcase

set backspace=indent,eol,start

set autoindent

set ruler

set statusline=2

set cmdheight=2

set number

set shiftwidth=4
set softtabstop=4
set expandtab

set colorcolumn=80
set textwidth=80

" Coc related settings "

if filereadable("/home/richard/.vim/pack/coc/start/coc.nvim-release/LICENSE.md")
    
    let g:coc_global_extensions=[
        \ 'coc-clangd',
        \ 'coc-java',
        \ 'coc-json'
        \]

    hi CocInfoFloat guifg=#000000 guibg=#FFFFFF
    hi CocErrorFloat guifg=#000000 guibg=#FFFFFF
    hi CocWarningFloat guifg=#000000 guibg=#FFFFFF
                                                                               
    set nobackup
    set nowritebackup
    set updatetime=300
    set shortmess+=c

    inoremap <silent><expr> <TAB>
        \ pumvisible() ? "\<C-n>" :
        \ <SID>check_back_space() ? "\<TAB>" :
        \ coc#refresh()
    inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

    if exists('*complete_info')
        inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
    else
        inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
    endif

    function! s:check_back_space() abort
        let col = col('.') - 1
        return !col || getline('.')[col - 1]  =~# '\s'
    endfunction
    
    nmap <silent> gd <Plug>(coc-definition)
    nmap <silent> gy <Plug>(coc-type-definition)
    nmap <silent> gi <Plug>(coc-implementation)
    nmap <silent> gr <Plug>(coc-references)
endif

" Coc Extensions "

let g:coc_global_extensions=[
    \ 'coc-clangd',
    \ 'coc-java',
    \ 'coc-json'
    \]

" gruvbox "
if filereadable("/home/richard/.vim/pack/default/start/gruvbox/README.md")
    colorscheme gruvbox
    set termguicolors
endif

" Powerline "
set laststatus=2
