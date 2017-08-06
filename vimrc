"" use double quote char for comment lines

""set indent and tab width = 4 spaces
set shiftwidth=2
set tabstop=2

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


""Abbreviations, for Perl programmers
ab ld $LOGGER->debug(" ");
ab lerr $LOGGER->error(" ");
ab lw $LOGGER->warn(" "); 

