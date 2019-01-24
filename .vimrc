" Main Vim config
" Ironrath
set nocompatible              " be iMproved, required
filetype off                  " required

" vundle BEGIN
set ttyfast
set autoread
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" plugins here
Plugin 'VundleVim/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'easymotion/vim-easymotion'
Plugin 'scrooloose/nerdtree'
Plugin 'vimwiki/vimwiki'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-fugitive'   
Plugin 'vim-airline/vim-airline'                                                
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-scripts/Greplace.vim' 
Plugin 'vim-scripts/dbext.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'Yggdroot/indentLine'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
call vundle#end()            " required
filetype plugin indent on    " required
" vundle END
set exrc
set secure

syntax on
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set cursorline
set re=1
set nowrap
set cc=80
set noswapfile
set laststatus=2                                                                
filetype indent on
colorscheme smyck 
set number
let g:ctrlp_working_path_mode = 0 
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git' 

" quick workspace switching

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" quick header switching
map <F4> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>

"let g:UltiSnipsExpandTrigger="<c-j>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
"disable beep
set visualbell
