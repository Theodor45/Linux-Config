execute pathogen#infect()
set nocompatible
filetype off

""""" SETTINGS """""
let t:is_transparent = 0
function! Toggle_transparent()
	if t:is_transparent == 0
		hi Normal guibg=NONE ctermbg=NONE
		let t:is_transparent = 1
	else
		set background=dark
		let t:is_tranparent = 0
	endif
endfunction
nnoremap <C-l> : call Toggle_transparent()<CR>

set wrapscan
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_python_checkers = ['pylint', 'flake8', 'pyflakes']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

inoremap kj <esc>


set bg =dark
set ruler
set autoread
set rtp+=~/.vim/bundle/Vundle.vim
execute pathogen#infect()
set encoding=utf-8
set number
syntax on

au BufWrite * :Autoformat
hi Normal guibg=NONE ctermbg=NONE

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:gruvbox_contrast_dark = 'hard'

let g:syntastic_python_checkers = ['pylint']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:airline_theme='violet'

let g:rainbow_active = 1

""""" PLUGINS """""

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'preservim/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'dracula/vim', { 'name': 'dracula' }
Plugin 'frazrepo/vim-rainbow'
Plugin 'morhetz/gruvbox'
Plugin 'psliwka/vim-smoothie'
Plugin 'Aster89/WinZoZ'

Plugin 'Chiel92/vim-autoformat'
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'junegunn/fzf.vim'

call vundle#end()            " required
filetype plugin indent on    " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

""""" KEYBINDS """""

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" JKL; instead of HJKL

noremap ; l
noremap l k
noremap k j
noremap j h

"colorscheme gruvbox
colorscheme dracula
