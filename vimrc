"James's .vimrc -- modified by gt

"Turn on syntax highlighting if terminal supports it
if has('syntax') && (&t_Co > 2)
	syntax on
endif

"Turn off search highlighting.
"set nohls                         
hi Search ctermbg=LightGrey

" added from: http://jmcpherson.org/vimrc.html
" prevents vim from emulating VIs bugs and such not (see link for more)
set nocompatible

" allow the cursor to move freely in command mode -- weird but cool
set virtualedit=all


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
set smartindent


" http://vim.wikia.com/wiki/Open_every_buffer_in_its_own_tabpage
" Open every buffer in its own tabpage
autocmd BufAdd,BufNewFile * nested tab sball



"turn off annoying beeps and flash screen instead
set visualbell

"each window will always contain status info on current cursor position
set ruler

"wrap textfiles at 72 chars and a key combo to do it
autocmd BufEnter *.txt setlocal textwidth=72
autocmd BufEnter *.txt,*.md setlocal spell spelllang=en_us
map <C-J> :g/^/normal gqq<CR>
" try and map to system clipboard
"vmap <D-c> :w !pbcopy <CR><CR>


" enable filetype detection
filetype on
filetype plugin on
filetype indent on 

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
"set selectmode=mouse


" Ideas for more vim coolness
" http://stackoverflow.com/questions/95072/what-are-your-favorite-vim-tricks

" http://stackoverflow.com/posts/95309/revisions
" 7dd <-- will delete 7 rows
" 7 arrow down <-- moves down 7 times


" http://www.ukuug.org/events/linux2004/programme/paper-SMyers/Linux_2004_slides/vim_tips/

