syntax on

filetype plugin on

" set cscopequickfix=s-,c-,d-,i-,t-,e-
set cscopequickfix=c-,d-,e-,g-,i-,s-,t-

" un-comment the follow setting to show new line, tab
" set list
"
" set expandtab
set tabstop=4
set shiftwidth=4
set autoindent

" set cindent
set showmatch
set so=10
set ruler
set nu
set colorcolumn=128

" colorscheme desert
" colorscheme elflord
color monokai

" let Tlist_Show_One_File=1
" let Tlist_Exit_OnlyWindow=1

" let g:winManagerWindowLayout='FileExplorer|TagList'

nmap <c-l> :only<cr>

" if has("cscope")
" 	set csto=0
" 	set cst
" 	set nocsverb
" 	" add any database in current directory
" 	if filereadable("cscope.out")
" 		cs add cscope.out
" 	endif
" 
" 	set csverb
" 
" endif

nmap ]s :cs f s <C-R>=expand("<cword>")<CR><CR> :cw <CR><CR>
nmap ]r :cs reset <CR><CR>

nmap 8 :cn <CR><CR>
nmap 9 :cp <CR><CR>

set autowrite

call plug#begin()
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
call plug#end()
