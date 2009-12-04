set nocompatible

colorscheme idleFingers
set linespace=2

syntax on

set tabstop=2
set shiftwidth=2
set expandtab
set sts=2

" Line numbers
set nonumber

" Hide menubar
set go-=T

filetype on
filetype indent on

" Default window size
set lines=45
set columns=90

" Indenting preferences
set smartindent
set autoindent

" Set font
"set guifont=ProFontX:h9
"set guifont=Menlo:h11
set guifont=Bitstream_Vera_Sans_Mono:h11

"let ruby_operators=0

" Disable to beep on errors
set vb t_vb=

" Status bar
set ruler

" Incremental search
set incsearch

" make searches case-insensitive, unless they contain upper-case letters
set ignorecase
set smartcase

set autowrite

" Jump to the last position in the file on open
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif

" FuzzyFinder Textmate
" (backslash)t
map <Leader>t :FuzzyFinderTextMate<CR>

" Map <leader>p to NERDtree
" (backslash)p
map <Leader>p :NERDTreeToggle<CR>

" Use TextMate's commenting shortcut
map <D-/> <plug>NERDCommenterToggle

" NERD_commenters
let NERDSpaceDelims=1

" FuzzyFinderTexmate Options
" --------------------------
" Reduce number of entries found for speed
let g:FuzzyFinderOptions.Base.enumerating_limit = 25
" Increase number of files FuzzyFinder can load
let g:fuzzy_ceiling = 40000

" Remove all trailing whitespaces when saving a file
autocmd BufWritePre * :%s/\s\+$//e

" Lesscss files (*.less)
au BufNewFile,BufRead *.less set filetype=less
