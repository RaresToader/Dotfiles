" Comments in Vimscript start with a `"`.

" If you open this file in Vim, it'll be syntax highlighted for you.

" Vim is based on Vi. Setting `nocompatible` switches from the default
" Vi-compatibility mode and enables useful Vim functionality. This
" configuration option turns out not to be necessary for the file named
" '~/.vimrc', because Vim automatically enters nocompatible mode if that file
" is present. But we're including it here just in case this config file is
" loaded some other way (e.g. saved as `foo`, and then Vim started with
" `vim -u foo`).
set nocompatible
filetype off " required to properly load plugins

" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" set runtime path to include vundle and init
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim' " let vundle manage itself
Plugin 'tpope/vim-sensible'            " Sensible defaults for Vim
Plugin 'scrooloose/nerdtree'           " File explorer
Plugin 'vim-airline/vim-airline'       " Status bar
Plugin 'vim-airline/vim-airline-themes' " Themes for airline
Plugin 'tpope/vim-fugitive'            " Git integration
Plugin 'sheerun/vim-polyglot'          " Language packs for syntax highlighting
Plugin 'junegunn/fzf.vim'              " Fuzzy finder for files
Plugin 'airblade/vim-gitgutter'        " Git diff in the sign column
Plugin 'Valloric/YouCompleteMe'        " autocompletion
Plugin 'morhetz/gruvbox'     " Popular color scheme

" All plugins must be added before this line
call vundle#end()            " required
filetype plugin indent on    " required


" Turn on syntax highlighting.
syntax on

" Disable the default Vim startup message.
set shortmess+=I

" Show line numbers.
set number
" Plugin 'morhetz/gruvbox' 
" This enables relative line numbering mode. With both number and
" relativenumber enabled, the current line shows the true line number, while
" all other lines (above and below) are numbered relative to the current line.
" This is useful because you can tell, at a glance, what count is needed to
" jump up or down to a particular line, by {count}k to go up or {count}j to go
" down.
set relativenumber
colorscheme gruvbox
set background=dark
" Always show the status line at the bottom, even if you only have one window open.
set laststatus=2
" colorscheme gruvbox
" The backspace key has slightly unintuitive behavior by default. For example,
" by default, you can't backspace before the insertion point set with 'i'.
" This configuration makes backspace behave more reasonably, in that you can
" backspace over anything.
set backspace=indent,eol,start

set tabstop=4 " num of spaces per tab
set shiftwidth=4 " num of spaces to use for autoindent
set expandtab  " use spaces instead of tabs
set autoindent " copy indent from prev line
set smartindent
set hlsearch

" By default, Vim doesn't let you hide a buffer (i.e. have a buffer that isn't
" shown in any window) that has unsaved changes. This is to prevent you from "
" forgetting about unsaved changes and then quitting e.g. via `:qa!`. We find
" hidden buffers helpful enough to disable this protection. See `:help hidden`
" for more information on this.
set hidden

" This setting makes search case-insensitive when all characters in the string
" being searched are lowercase. However, the search becomes case-sensitive if
" it contains any capital letters. This makes searching more convenient.
set ignorecase
set smartcase
set clipboard=unnamedplus " use system clipboard

" Enable searching as you type, rather than waiting till you press enter.
set incsearch

" Unbind some useless/annoying default key bindings.
nmap Q <Nop> 
" 'Q' in normal mode enters Ex mode. You almost never want this.

" NERDTree settings
map <C-n> :NERDTreeToggle<CR> 
" Toggle file explorer with Ctrl-n

let g:gruvbox_contrast_dark = 'hard'  " Options: 'soft', 'medium', 'hard'

" Airline settings
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" FZF settings
let g:fzf_layout = { 'down': '~40%' }
nnoremap <C-p> :FZF<CR>

" GitGutter settings
set updatetime=100           " Speed up GitGutter updates

" Other convenience mappings
nnoremap <C-s> :w<CR>        
" Save with Ctrl-s

" Disable audible bell because it's annoying.
set noerrorbells visualbell t_vb=
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP' 
" Enable mouse support. You should avoid relying on this too much, but it can sometimes be convenient.
set mouse+=a

nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>
