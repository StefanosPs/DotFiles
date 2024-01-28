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

source ~/.vim/plugins.vim

" Enable syntax highlighting
syntax enable
"Always show current position
set ruler

" Enable line numbers
set number


" Searching 
set hlsearch
set incsearch


" 
" Mapping
"
" :h key-codes will show the key binding (What is <A-...>)
" :h index will show the default VIM mapping
" :map will show your key mapping
"
nmap <Leader><space> :nohlsearch<cr>

nmap <C-_> :NERDTreeToggle<cr> 


"-------------Split Management--------------"
set splitbelow 								"Make splits default to below...
set splitright								"And to the right. This feels more natural.

" Split Management
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>


" Auto sourcing
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END

" Enable 256 colors palette in Gnome Terminal
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

try
    colorscheme desert
catch
endtry


" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions-=e
    set t_Co=256
    set guitablabel=%M\ %t
endif

" Start NERDTree and leave the cursor in it.
" autocmd VimEnter * NERDTree | wincmd p 

" Plugins

"
"	vim-vinegar
"
" - in any buffer to hop up to the directory listing and seek to the file you just came from. Keep bouncing to go up, up, up. Having rapid directory access available changes everything.
" %  Create file
" d Create folder
" D Delete File or folder
" y.  to yank an absolute path for the file under the cursor.
" CTRL-^ (CTRL-6) for switching back to the previous buffer from the netrw buffer.

"
"	Xu/lyuant::::/nerdtree-git-plugin
"
let g:NERDTreeUseSimpleIndicator = 1
let g:NERDTreeGitStatusShowIgnored = 1			" show ignored status

" Start NERDTree and leave the cursor in it.
"
"	honza/vim-snippets
"

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
