" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Sets how many lines of history VIM has to remember
set history=500

" Make Vim more useful
set nocompatible

" Enhance command-line completion
set wildmenu

" Allow cursor keys in insert mode
set esckeys

" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps

" Don’t create backups when editing files in certain directories
set backupskip=/tmp/*

" Enable filetype plugins
filetype plugin on
filetype indent on

"Always show current position
set ruler

" Enable line numbers
set number

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable

" Enable 256 colors palette in Gnome Terminal
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

try
    colorscheme desert
catch
endtry

set background=dark

" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions-=e
    set t_Co=256
    set guitablabel=%M\ %t
endif


