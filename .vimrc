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

Plug 'morhetz/gruvbox'

Plug 'vim-airline/vim-airline-themes'

Plug 'vim-airline/vim-airline'

Plug 'jiangmiao/auto-pairs'

Plug 'preservim/nerdcommenter'

call plug#end()

" YouCompleteMe settings
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_global_ycm_extra_conf = '~/.vim/plugged/YouCompleteMe/.ycm_extra_conf.py'

"vimtex settings
"
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
let g:tex_conceal='abdgm'

"UltiSnips settings
"
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let g:UltiSnipsSnippetDirectories=["UltiSnips"]

"Default settings of vim 
"
:set nu								"enable line numbers
:set backspace=indent,eol,start		"allow backspacking over everything in insert mode
:set ruler							"show the cursor position all the time
:set mouse=a							"enable the mouse
:set showmode						"show the mode
:set laststatus=2					"always put a status line in
:set ch=2							"set command line 2 lines high
:set nowrap							"no line wrapping
:set tabstop=4						"tabs = 4 spaces
:set hlsearch						"hilight search
:set wrap

syntax on							"enable syntax highlighting
filetype plugin indent on			"enable file type detection

" IndentLine
"
let g:indentLine_char = '¦'

" gruvbox settings
"
let g:gruvbox_italic=1
let g:gruvbox_contrast_dark = 'hard'
:set bg=dark
colorscheme gruvbox

" airline settings
"
let g:airline_theme='gruvbox'

" Disable Concealing
let g:indentLine_setConceal = 0

"" Commands
"
" Easy edit/open commands
"

command EditVim		:edit	~/.vimrc
command EditBash	:edit	~/.bashrc

" Mappings
"
map <C-t> :echo &shiftwidth<CR>
nnoremap <leader>jd :YcmCompleter GoTo<CR>
inoremap jh <ESC>:
nnoremap jh <ESC>:
inoremap jj <ESC>
nnoremap jj <ESC>
nnoremap <S-Left> :vertical resize -1<CR>
nnoremap <S-Right> :vertical resize +1<CR>
nnoremap <S-UP> :resize +1<CR>
nnoremap <S-Down> :resize -1<CR>
