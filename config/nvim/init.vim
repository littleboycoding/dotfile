let mapleader = ","
packadd minpac

if !exists('g:loaded_minpac')
echo 'minpac is not installed'
else
	command! MinpacUpdate call minpac#update()
	command! MinpacClean call minpac#clean()

	call minpac#init()

	call minpac#add('junegunn/goyo.vim')
	call minpac#add('tpope/vim-fugitive')
	call minpac#add('airblade/vim-gitgutter')
	call minpac#add('Yggdroot/indentLine')
	call minpac#add('mattn/emmet-vim')
	call minpac#add('tpope/vim-vinegar')
	call minpac#add('dense-analysis/ale')
	call minpac#add('nvim-treesitter/nvim-treesitter', { 'type': 'opt' })
	call minpac#add('iamcco/markdown-preview.nvim', {'do': '!cd app && npm install'})
	call minpac#add('preservim/nerdcommenter', { 'type': 'opt' })
	call minpac#add('itchyny/lightline.vim', { 'type': 'opt' })
	call minpac#add('tpope/vim-sensible', { 'type': 'opt' })
	call minpac#add('styled-components/vim-styled-components', { 'type': 'opt' })
	call minpac#add('sheerun/vim-polyglot', { 'type': 'opt' })
	
	packadd vim-sensible
	packadd nvim-treesitter
	packadd vim-styled-components
	"packadd vim-polyglot

lua << EOF
	require'nvim-treesitter.configs'.setup {
		ensure_installed = "maintained",
		highlight = {
			enable = true,
			indent = {
				enable = true
			}
		},
	}
EOF

	let g:ale_completion_enabled = 1
	let g:ale_completion_autoimport = 1
	let g:ale_fix_on_save = 1
	let g:ale_fixers = {
	\ 'javascript': ['prettier'],
	\ 'typescript': ['prettier'],
	\ 'javascriptreact': ['prettier'],
	\ 'typescriptreact': ['prettier'],
	\ 'html': ['prettier'],
	\ 'css': ['prettier'],
	\ 'php': ['php_cs_fixer']
	\}

	packadd ale
	autocmd FileType javascript set omnifunc=ale#completion#OmniFunc
	autocmd FileType typescript set omnifunc=ale#completion#OmniFunc
	autocmd FileType javascriptreact set omnifunc=ale#completion#OmniFunc
	autocmd FileType typescriptreact set omnifunc=ale#completion#OmniFunc
	autocmd FileType css set omnifunc=ale#completion#OmniFunc
	autocmd FileType html set omnifunc=ale#completion#OmniFunc

	call minpac#add('dracula/vim', { 'name' : 'dracula' })

	set termguicolors
	packadd! dracula
	colorscheme dracula

	call minpac#add('junegunn/fzf.vim')
	nnoremap <F3> :Files<CR>
	nnoremap <F4> :Buffers<CR>

	tnoremap <silent> <ESC> <C-\><C-n>
	autocmd TermOpen * setlocal nonumber norelativenumber

	packadd nerdcommenter

	packadd lightline.vim
	let g:lightline = { 'colorscheme': 'dracula' }
endif

set rtp+=~/.fzf

set number
set relativenumber
set cursorline
set hidden

set list lcs=tab:\|\ 

inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
set completeopt=menuone,noinsert,noselect
