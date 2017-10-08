
set so=2 siso=2
nnoremap ,R :mapc \| so ~/.vim/settings.vim<cr>
map ,<cr> :tabn<cr>
nnoremap ,e :e <C-R>=expand('%:h:p')<CR>/
inoremap jk <ESC>
inoremap kj <ESC>:w<CR>
nnoremap <backspace> <C-B>
nnoremap <S-backspace> <C-F>
nnoremap \ <C-F>
nnoremap <S-\> <C-D>
nnoremap ,<space> :noh<cr>:call sneak#cancel()<cr>
nnoremap ,p :set paste!<cr>:set paste?<cr>
nnoremap ,n :set nu!<cr>
imap <C-E> <C-Y>,

" yank -> :@"
" 0 last yank 1->9 last line or % DEL - last small del

augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au WinLeave * setlocal nocursorline
augroup END

