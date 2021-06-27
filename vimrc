"" use double quote char for comment lines

"always show ruler in statusline; reserve last 2 lines ALWAYS for statusline
set ruler
set laststatus=2

filetype plugin on


" if syntax highlighting is supported, turn it on
syntax on

" Add a colored bar at column 80 for a wrap margin. Tip from https://coderwall.com/p/uu7-aa
set colorcolumn=80

" To spell check all git commit messages
au BufNewFile,BufRead COMMIT_EDITMSG set spell

" Underline misspelled words
hi clear SpellBad
hi SpellBad cterm=underline

highlight Comment ctermbg=DarkGray


""""" From https://defuse.ca/vimrc.htm
" Use unix line endings (LF) unless the file already has DOS line endings
set fileformats=unix,dos
" Set the initial buffer to unix line endings
set fileformat=unix
set background=dark
" Highlight unwanted whitespace
highlight TrailingWhitespace ctermbg=red guibg=red
highlight TabWhitespace ctermbg=darkgreen guibg=darkgreen
highlight DoubleSpaceAfterPeriod ctermbg=red guibg=red
autocmd Syntax * syn match TrailingWhitespace /\s\+$/
autocmd Syntax * syn match TabWhitespace /[\t]/
autocmd Syntax * syn match DoubleSpaceAfterPeriod /\.  /
" Highlight the line the cursor is on
set cursorline
" Status line content
set statusline=%n:\ %F\ [%{&ff}]%y%m%h%w%r\ %=[char:\ 0x%B]\ \[column:\ %v]\ [line:\ %l\ of\ %L\ \(%p%%\)]\
" Quickly jump to opening brace and back to avoid mistakes
set showmatch
" Line numbers
set nu


""set indent and tab width = 4 spaces
set shiftwidth=4
set tabstop=4
set expandtab
""NOTE: use 'retab' command to convert hard tabs to soft
