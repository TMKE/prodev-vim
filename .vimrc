call plug#begin('~/.vim/plugged')

" Focus on current paragraph
Plug 'junegunn/limelight.vim'

" Autocompletion wit TabNine
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'vim-airline/vim-airline'

" display the indentation levels with thin vertical lines
Plug 'Yggdroot/indentLine'

" Browse files
Plug 'preservim/nerdtree' " F5

" Multiple cursors plugin
Plug 'mg979/vim-visual-multi'
" select words with Ctrl-N (like Ctrl-d in Sublime Text/VS Code)
" create cursors vertically with Ctrl-Down/Ctrl-Up
" select one character at a time with Shift-Arrows
" press n/N to get next/previous occurrence
" press [/] to select next/previous cursor
" press q to skip current and get next occurrence
" press Q to remove current cursor/selection
" start insert mode with i,a,I,A

" Show git diff markers in the sign column
Plug 'airblade/vim-gitgutter'

" Comment stuff out
Plug 'tpope/vim-commentary'
" gcc: comment/uncomment the current line
" gc: comment the target for a motion (gc9j: comment current and next 9 lines)
" gcap: comment a paragraph
" gc in visual mode: comment the selection
" gcgc: uncomment a set of adjacent commented lines

" Delete/change/add parentheses/quotes/XML-tags/much more with ease
Plug 'tpope/vim-surround'
" Example of \"Hello world"
" cs"' (inside quoted text): change " with '
" 	'Hello world'
" cs'<q>: change ' with <q>
" 	<q>Hello world</q>
" ds<q>: remove <q>
" 	Hello world
" yssb or yss): wrap the entire line in parentheses
" 	(Hello world)
" ysiw]: wrap a text object with []
" 	[Hello] world
" cs]{: change ] with { and some space
" 	{ Hello }
" V (for linewise visual mode) followed by S<p class="important">:
" 	<p class="important">
"		 <em>Hello</em> world!
" 	</p>

" A Git wrapper (:Git)
Plug 'tpope/vim-fugitive'

" Fuzzy search
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
" :Files
" :GFiles (git ls-files)
" :GFiles? (git status)
" :Buffers
" :Colors (colorschemes)
" :Windows
" :Lines
" :Snippets
" :History
" :Commits
" :Commands

" Snippets for Vim
Plug 'SirVer/ultisnips'

" Colorschemes
Plug 'blackbirdtheme/vim' " blackbird
Plug 'srcery-colors/srcery-vim' " srcery ***
Plug 'marciomazza/vim-brogrammer-theme' " brogrammer ***
Plug 'patstockwell/vim-monokai-tasty' " vim_monokai_tasty_italic ***
Plug 'jacoborus/tender.vim' " tender

" TypeScript syntax highlighting
Plug 'HerringtonDarkholme/yats.vim'

" JavaScript syntax highlighting
Plug 'pangloss/vim-javascript'

" JSX ans TSX syntax highlighting
Plug 'MaxMEllon/vim-jsx-pretty'

" Other syntax highlighting plugins
Plug 'styled-components/vim-styled-components'
Plug 'elzr/vim-json'
Plug 'jparise/vim-graphql'


Plug 'fatih/vim-go'
Plug 'udalov/kotlin-vim'

call plug#end()

map <F5> :NERDTreeToggle<CR>

" Use backspace to delete characters behind cursor
map <BS> X

let g:limelight_conceal_ctermfg = 0
let g:VM_use_first_cursor_in_line = 1

" 256 colors
set termguicolors

" Set colorscheme
set background=dark

" Set contrast.
" This configuration option should be placed before `colorscheme gruvbox-material`.
" Available values: 'hard', 'medium'(default), 'soft'

let g:solarized_termcolors=256

let g:gruvbox_material_background = 'hard'

let g:gruvbox_italic = 1
let g:gruvbox_bold = 1
let g:gruvbox_transparent_bg = 1
let g:gruvbox_contrast_dark = 'hard'

let g:srcery_italic = 1

let g:sonokai_style = 'maia'
let g:sonokai_enable_italic = 0
let g:sonokai_disable_italic_comment = 0

let g:deepspace_italics=1
let g:vim_monokai_tasty_italic = 1

colorscheme blackbird
let g:airline_theme='srcery'
" let g:airline#extensions#tabline#enabled = 1


" Make comments italic
highlight Comment cterm=italic gui=italic

" Show what mode we are currently editing in
set showmode

" Show line numbers
set number

" Relative line numbers
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
augroup END

" Syntax highlighting
syntax on

" Show the cursor position
set ruler

" auto indenting
" set ai

" A tab = four spaces
set tabstop=4

" Number of spaces to use for auto indenting
set shiftwidth=4

" Show matching parenthesis
set showmatch

" Keep 4 lines off the edge of the screen while scrolling
set scrolloff=4

" Highlight search terms
set hlsearch

" Show search matches as you type
set incsearch

" Editor layout
set termencoding=utf-8
set encoding=utf-8

" Do not write intermediate swap files
set noswapfile

" Make tab completion for files/buffers act like bash
set wildmenu

" Allow backspace in insert mode
set backspace=indent,eol,start



set ignorecase
set smartcase " when searching: if it is all lowercase, it matches all combinations of lowercase and uppercase, else, it matches the specified word

" Remapping leader (i.e. '\') to ','
let mapleader = ","


map <leader>tn :tabnew<cr>
map <leader>t<leader> :tabnext<cr>
map <leader>tm :tabmove
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>

nnoremap th  :tabfirst<CR>
nnoremap tk  :tabnext<CR>
nnoremap tj  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnext<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>


" Shift left
inoremap <S-Tab> <C-d>

" Yank till the end of the line
nnoremap Y y$

" Moving text
" Move line up/down in visual mode using K/J
vnoremap K :m '<-2<CR>gv=gv
vnoremap J :m '>+1<CR>gv=gv 
" Move line up/down in insert mode using Ctrl+k/j
inoremap <C-k> <esc>:m .-2<CR>==
inoremap <C-j> <esc>:m .+1<CR>==
" Move line(s) up/down in normal mode using leader+k/j
nnoremap <leader>k :m .-2<CR>==
nnoremap <leader>j :m .+1<CR>==
