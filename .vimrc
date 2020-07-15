syntax on
set number
set mouse=a
set t_Co=256
filetype plugin on

call plug#begin('~/.vim/plugged')

Plug 'frazrepo/vim-rainbow'

Plug 'airblade/vim-gitgutter'

Plug 'preservim/nerdtree'
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline#extensions#tabline#enabled = 1

Plug 'flazz/vim-colorschemes'

Plug 'preservim/nerdcommenter'

call plug#end()

if has("autocmd")
    autocmd bufwritepost .vimrc source $MYVIMRC
endif

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

colorscheme gruvbox
set bg=dark
