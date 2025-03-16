" Print a message
autocmd VimEnter * echo " /\\_/\\ \n( o.o )\n > ^ < Welcome to Vim!"

" Enable line numbers
set relativenumber
set numberwidth=4
set nowrap

" Enable match tool (great for coding)
set showmatch
set matchtime=10

" Key mapping for undo action and  copy & past lines in insert mode
imap <C-c> <Esc>yyi
imap <C-v> <Esc>Pi
imap <C-z> <Esc>ui

" Set colors by syntax
syntax on