packadd minpac

if !exists('g:loaded_minpac')
	echo 'minpac is not installed'
else
	call minpac#init()
	call minpac#add('iamcco/markdown-preview.nvim', {'do': '!cd app && npm install'})

	call minpac#add('preservim/nerdcommenter', { 'type': 'opt' })
	call minpac#add('itchyny/lightline.vim', { 'type': 'opt' })

	" Syntax plugin
	call minpac#add('pangloss/vim-javascript')
	call minpac#add('MaxMEllon/vim-jsx-pretty')
	call minpac#add('HerringtonDarkholme/yats.vim')

	call minpac#add('dense-analysis/ale', { 'type': 'opt' })

	let g:ale_fixers = ['prettier', 'eslint']
	let g:ale_fix_on_save = 1
	let g:ale_completion_enabled = 1
	let g:ale_completion_autoimport = 1
	packadd ale

	let g:vim_jsx_pretty_colorful_config = 1

	let mapleader = ","
	packadd nerdcommenter

	packadd lightline.vim
	let g:lightline = {
	\ 'colorscheme': 'dracula',
	\ }
endif

set rtp+=~/.fzf
nnoremap <F3> :FZF<CR>

set termguicolors

set number
set relativenumber
set cursorline

packadd! dracula
syntax enable
colorscheme dracula

filetype plugin on
