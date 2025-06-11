" show line numbers
set number

" allow copy/paste to/from system clipboard
set clipboard=unnamedplus

set termguicolors

filetype plugin indent on

" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" Color schemes (:colo)
colorscheme habamax

if exists('g:vscode')
    " VSCode extension
else
    " https://github.com/junegunn/vim-plug
	call plug#begin()

	Plug 'mg979/vim-visual-multi', {'branch': 'master'}

	call plug#end()
endif
