"James's .vimrc -- modified by gt

"Turn on syntax highlighting if terminal supports it
if has('syntax') && (&t_Co > 2)
	syntax on
endif

"Turn off search highlighting.
set nohls

"The ai is really annoying
set noai

"allow deleting over evertying in insert mode
set backspace=indent,eol,start

"show the first so-far matched pattern when searching
set incsearch

"display incomplete command
set showcmd

"turn on line numbering (useful with term widths of 88 or higher
set nu

"tab enters 4 spaces instead of 8
set tabstop=4

"use indents of 2 spaces, and have them copied down lines:
set shiftwidth=4
set shiftround
set expandtab " can't make my mind up on this one
set autoindent " same with this one
"set cindent
set smartindent
set autoindent
set expandtab


"turn off annoying beeps and flash screen instead
set visualbell

"each window will always contain status info on current cursor position
set ruler

"wrap textfiles at 72 chars and a key combo to do it
autocmd BufEnter *.txt setlocal textwidth=72
map <C-J> :g/^/normal gqq<CR>

" enable filetype detection
filetype on

" for c-like programming have auto indent
autocmd FileType c,cpp,slang set cindent

" for CSS, have things in braces indented:
autocmd FileType css set smartindent

" for HTML, generally format text, but if a long line has been created leave it
" alone when editing:
autocmd FileType html set formatoptions+=tl

" in makefiles, don't expand tabs to spaces, since actual tab characters are
" needed, and have indentation at 8 chars to be sure that all indents are tabs
" (despite the mappings later):
autocmd FileType make set noexpandtab shiftwidth=8

"jquery syntax http://www.vim.org/scripts/script.php?script_id=2416
au BufRead,BufNewFile *.js set ft=javascript syntax=jquery

"js headers
"autocmd bufnewfile *.js so ~/.vim/headers/js_header.txt
"autocmd bufnewfile *.js exe "1," . 10 . "g/filename:.*/s//filename: " .expand("%")
"autocmd bufnewfile *.js exe "1," . 10 . "g/created:.*/s//created: " .strftime("%d-%m-%Y")
""autocmd bufnewfile *.js exe "1," . 10 . "g/author:.*/s//author: " .  
"autocmd Bufwritepre,filewritepre *.c execute "normal ma"
"autocmd Bufwritepre,filewritepre *.c exe "1," . 10 . "g/last modified:.*/s/last modified:.*/last modified: " .strftime("%c")
"autocmd bufwritepost,filewritepost *.c execute "normal `a"

"set mouse support
" http://babbage.cs.qc.edu/courses/cs701/Handouts/unix_vimrc.html
set mouse=a
set selectmode=mouse

