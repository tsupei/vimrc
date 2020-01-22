if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


call plug#begin('~/.vim/plugged')

Plug 'lervag/vimtex'

Plug 'KeitaNakamura/tex-conceal.vim', {'for': 'tex'} 

Plug 'sirver/ultisnips'

Plug 'ycm-core/YouCompleteMe'

Plug 'preservim/nerdtree'

Plug 'Yggdroot/indentLine'

Plug 'tmhedberg/SimpylFold'

Plug 'tpope/vim-fugitive'

call plug#end()

"vimtex settings
"
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=2
let g:tex_conceal='abdgm'

"UltiSnips settings
"
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let g:UltiSnipsSnippetDirectories=["UltiSnips"]

"Default settings of vim 
"
set nu								"enable line numbers
set backspace=indent,eol,start		"allow backspacking over everything in insert mode
set ruler							"show the cursor position all the time
set mouse=a							"enable the mouse
set showmode						"show the mode
set laststatus=2					"always put a status line in
set ch=2							"set command line 2 lines high
set nowrap							"no line wrapping
set tabstop=4						"tabs = 4 spaces
set hlsearch						"hilight search

syntax on							"enable syntax highlighting
filetype plugin indent on			"enable file type detection

" IndentLine
"
let g:indentLine_char = '¦'

" Commands
"
" Easy edit/open commands
"

command EditVim		:edit	~/.vimrc
command EditBash	:edit	~/.bashrc

" Mappings
"
map <C-t> :echo &shiftwidth<CR>
nnoremap <leader>jd :YcmCompleter GoTo<CR>
inoremap jh <Esc>:
nnoremap jh <ESC>:
inoremap jj <ESC>
nnoremap jj <ESC>


