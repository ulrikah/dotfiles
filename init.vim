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
colorscheme slate

if exists('g:vscode')
    " VSCode extension
else
    " https://github.com/junegunn/vim-plug
	call plug#begin()

	Plug 'mg979/vim-visual-multi', {'branch': 'master'}

    Plug 'nvim-treesitter/nvim-treesitter', { 'branch' : 'master', 'do': ':TSUpdate' }

	call plug#end()


   lua require'nvim-treesitter.configs'.setup{ensure_installed={"python", "markdown"},highlight={enable=true}}

endif
