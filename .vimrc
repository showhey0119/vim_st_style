set antialias

syntax on " use color

set number " use line number

autocmd ColorScheme * highlight LineNr ctermfg=249
autocmd ColorScheme * highlight Special ctermfg=028
colorscheme st   "

set restorescreen

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smartindent

" show status line
set laststatus=2
" status line info
set statusline=%-(%f%m%h%q%r%w%)%=%l,%c

" memory cursor position
function! s:RestoreCursorPostion()
  if line("'\"") <= line("$")
    normal! g`"
    return 1
  endif
endfunction

augroup vimrc_restore_cursor_position
  autocmd!
  autocmd BufWinEnter * call s:RestoreCursorPostion()
augroup END
" memory cursor position

