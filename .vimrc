set nocompatible

"Tabs appear as 4 spaces"
set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4

"Tabs appear as 2 spaces for js files"
autocmd Filetype javascript setlocal ts=2 sw=2 expandtab

"Bør teste disse
:command Norsk setlocal spell spelllang=nb_no
:command Engelsk setlocal spell spelllang=en_us

" just hit backspace without this one and
" see for yourself
set backspace=indent,eol,start

" allows you to deal with multiple unsaved
" buffers simultaneously without resorting
" to misusing tabs
set hidden

syntax on
set background=dark
filetype plugin indent on

set colorcolumn=
"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/
"highlight ColorColumn ctermbg=darkgray
"relative number, bytt med Ctrl + n

set number
function! NumberToggle()
  if(&relativenumber == 1)
    set norelativenumber
  else
    set relativenumber
  endif
endfunc

nnoremap <C-N> :call NumberToggle()<cr>

"autocmd BufWinLeave *.* mkview
"autocmd BufWinEnter *.* silent loadview
"autocmd BufRead *.as set filetype=javascript
"autocmd BufRead *.go set filetype=go
"autocmd BufRead *.c set syntax=go
 


" Some Linux distributions set filetype in /etc/vimrc.
" Clear filetype flags before changing runtimepath to force Vim to reload them.
filetype off
filetype plugin indent off
set runtimepath+=$GOROOT/misc/vim
filetype plugin indent on
syntax on

":set complete=k./.*go,k./*.tex,.
:set complete=.

"nnoremap <leader>p p
"nnoremap <leader>P P
nnoremap p p']
nnoremap P P']

" disable arrow keys
    map <up> <nop>
    map <down> <nop>
    map <left> <nop>
    map <right> <nop>
    imap <up> <nop>
    imap <down> <nop>
    imap <left> <nop>
    imap <right> <nop>

nnoremap K W
nnoremap J B

