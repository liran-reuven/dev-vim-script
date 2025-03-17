" Enable line numbers
set number
set numberwidth=4

" Enable match tool (great for coding)
set showmatch
set matchtime=10

" Key mapping for move lines
nnoremap - ddp " downward
nnoremap _ ddkP " upward

" Key mapping for undo action and  copy & past lines in insert mode
if exists("$SSH_TTY") || filereadable("/.dockerenv")
   " Print a message
   inoremap <C-c> <Esc>:echohl ErrorMsg | echo "Ctrl+C is disabled in SSH/Docker!"
   autocmd VimEnter * silent! execute 'redraw' | echo " /\\_/\\ \n( o.o )\n > ^ < Welcome to Vim!\n\n\n\n\n\n\n\n\n\nCtrl+C, Ctrl+V, etc.  is disabled in SSH/Docker!\n"
   " Do NOT apply these mappings in SSH or Docker
   let g:disable_mappings = 1
else
   " Print a message
   autocmd VimEnter * silent! execute 'redraw' | echo " /\\_/\\ \n( o.o )\n > ^ < Welcome to Vim!"
   " Apply these mappings only when running locally
   let g:disable_mappings = 0
endif

if !g:disable_mappings
    imap <C-x> <Esc>ddi
    imap <C-c> <Esc>yyi
    imap <C-v> <Esc>Pi
    imap <C-z> <Esc>ui
endif

" Enable syntax-based folding (great for coding)
set foldmethod=syntax

" Keep folds open by default
set foldlevel=99

" Key mappings for folding like Visual Studio
nnoremap <Space> za  " Toggle fold under cursor
nnoremap <Leader>o zR  " Open all folds
nnoremap <Leader>c zM  " Close all folds

" Set marker-based folding if you want manual control
set foldmethod=marker

" Set colors by syntax
syntax on