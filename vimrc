" .Vimrc
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
Plugin 'user/L9', {'name': 'newL9'}
" NERD-tree
Plugin 'The-NERD-tree'
Plugin 'The-NERD-Commenter'
Plugin 'EasyMotion'
Plugin 'ctrlp.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'nerdtree-ack'
Plugin 'fatih/vim-go'
Plugin 'bufexplorer.zip'
Plugin 'ZoomWin'
Plugin 'vim-stylus'
" Markdown preview
Plugin 'instant-markdown.vim'
" Markdown syntax
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'surround.vim'
Plugin 'airblade/vim-gitgutter'
" Plugin 'minibufexpl.vim'
" Plugin 'Buffergator'
Plugin 'ack.vim'
Plugin 'Puppet-Syntax-Highlighting'
Plugin 'fugitive.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'editorconfig/editorconfig-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"Setting by peterzh
"colorscheme desert
syntax on
:set cursorline

"set paste
set sw=4
set ts=4
set et
set number
set ru
set hls
set is
set showmatch
set backspace=2     " 设置退格键可用
set autoindent      " 自动对齐
"set ai!             " 设置自动缩进
set ai             " 设置自动缩进
set listchars=tab:▸\ ,trail:·
set list

"Set paste
set pastetoggle=<F10>

"NERDTree
autocmd vimenter * if !argc() | NERDTree | endif
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
"autocmd bufenter * NERDTreeMirror
map <C-n> :NERDTreeToggle<CR>
let NERDTreeHighlightCursorline=1
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
"map <C-h> :tabprevious<CR>
"map <C-l> :tabnext<CR>
nnoremap <F7> :tabprevious<CR>
nnoremap <F8> :tabnext<CR>
let g:NERDTreeWinSize = 40
let NERDTreeMapOpenInTab='\r'

"swith window easy
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_by_filename = 1

"easymotion
"key: \w \ge \k
let g:EasyMotion_leader_key = '<Leader>'

"color
:highlight LineNr ctermfg=grey
:highlight Pmenu ctermbg=238 gui=bold
"colorscheme molokai
"let g:molokai_original = 1
colorscheme gruvbox
set background=dark

"my command
:command Rspace %s/\s\+$//e
:command Rtab4 %s/\t/    /g
:command Rtab2 %s/\t/  /g

"airline
if !exists('g:airline_symbols')
let g:airline_symbols = {}
endif
let g:airline_theme='serene'

"format
au FileType ruby setl sw=2 sts=2 et

"move line shortcut
"nnoremap <C-j> :m .+1<CR>==
"nnoremap <C-k> :m .-2<CR>==

if &term =~ '^screen'
    "tmux will send xterm-style keys when its xterm-keys option is on
    execute "set <xUp>=\e[1;*A"
    execute "set <xDown>=\e[1;*B"
    execute "set <xRight>=\e[1;*C"
    execute "set <xLeft>=\e[1;*D"
endif

"unbind
nnoremap <S-c> <NOP>

"buffer
map gh :bn<CR>
map gl :bp<CR>
map gd :bd<CR>
"map <C-b> :CtrlPBuffer<CR>

"vimgrep
map <leader>g :vimgrep //<left>
map <leader><space> :vimgrep // <C-R>%<C-A><right><right><right><right><right><right><right><right><right>
map <leader>qo :copen<CR>
map <leader>qc :cclose<CR>

"markdown
let g:vim_markdown_folding_disabled=1
let g:instant_markdown_autostart = 0

"set indent orcording to file type
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType erb setlocal shiftwidth=2 tabstop=2
autocmd FileType rb setlocal shiftwidth=2 tabstop=2

"set file type
autocmd BufNewFile,BufRead *.vue set filetype=php

"for tmux
if exists('$TMUX')
  " Disable Background Color Erase (BCE) so that color schemes work
  " properly when Vim is used inside tmux and GNU screen.
  set term=screen-256color
endif

